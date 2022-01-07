
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int DEB (int ) ;
 int logdevs ;
 int printf (char*,...) ;
 int report_dma_info (int) ;

int
handle_small_res(u_char *resinfo, int item, int len)
{
    int i;

    DEB(printf("*** ITEM 0x%04x len %d detected\n", item, len));

    switch (item) {
    default:
 printf("*** ITEM 0x%02x detected\n", item);
 break;
    case 128:
 printf("PnP Version %d.%d, Vendor Version %d\n",
     resinfo[0] >> 4, resinfo[0] & (0xf), resinfo[1]);
 break;
    case 132:
 printf("\nLogical Device ID: %c%c%c%02x%02x 0x%08x #%d\n",
  ((resinfo[0] & 0x7c) >> 2) + 64,
  (((resinfo[0] & 0x03) << 3) |
  ((resinfo[1] & 0xe0) >> 5)) + 64,
  (resinfo[1] & 0x1f) + 64,
  resinfo[2], resinfo[3], *(int *)(resinfo),
  logdevs++);

 if (resinfo[4] & 0x1)
     printf ("\tDevice powers up active\n");
 if (resinfo[4] & 0x2)
     printf ("\tDevice supports I/O Range Check\n");
 if (resinfo[4] > 0x3)
     printf ("\tReserved register funcs %02x\n",
  resinfo[4]);

 if (len == 6)
     printf("\tVendor register funcs %02x\n", resinfo[5]);
 break;
    case 139:
 printf("Compatible Device ID: %c%c%c%02x%02x (%08x)\n",
  ((resinfo[0] & 0x7c) >> 2) + 64,
  (((resinfo[0] & 0x03) << 3) |
  ((resinfo[1] & 0xe0) >> 5)) + 64,
  (resinfo[1] & 0x1f) + 64,
  resinfo[2], resinfo[3], *(int *)resinfo);
 break;
    case 133:
 printf("    IRQ: ");

 for (i = 0; i < 8; i++)
     if (resinfo[0] & (1<<i))
  printf("%d ", i);
 for (i = 0; i < 8; i++)
     if (resinfo[1] & (1<<i))
  printf("%d ", i + 8);
 if (len == 3) {
     if (resinfo[2] & 0x1)
  printf("IRQ: High true edge sensitive\n");
     if (resinfo[2] & 0x2)
  printf("IRQ: Low true edge sensitive\n");
     if (resinfo[2] & 0x4)
  printf("IRQ: High true level sensitive\n");
     if (resinfo[2] & 0x8)
  printf("IRQ: Low true level sensitive\n");
 } else {
     printf(" - only one type (true/edge)\n");
 }
 break;
    case 138:
 printf("    DMA: channel(s) ");
 for (i = 0; i < 8; i++)
     if (resinfo[0] & (1<<i))
  printf("%d ", i);
 printf ("\n");
 report_dma_info (resinfo[1]);
 break;
    case 130:
 printf("TAG Start DF\n");
 if (len == 1) {
     switch (resinfo[0]) {
     case 0:
  printf("Good Configuration\n");
  break;
     case 1:
  printf("Acceptable Configuration\n");
  break;
     case 2:
  printf("Sub-optimal Configuration\n");
  break;
     }
 }
 break;
    case 136:
 printf("TAG End DF\n");
 break;
    case 134:
 printf("    I/O Range 0x%x .. 0x%x, alignment 0x%x, len 0x%x\n",
     resinfo[1] + (resinfo[2] << 8),
     resinfo[3] + (resinfo[4] << 8),
     resinfo[5], resinfo[6] );
 if (resinfo[0])
     printf("\t[16-bit addr]\n");
 else
     printf("\t[not 16-bit addr]\n");
 break;
    case 135:
 printf ("    FIXED I/O base address 0x%x length 0x%x\n",
     resinfo[0] + ( (resinfo[1] & 3 ) << 8),
     resinfo[2]);
 break;





    case 129:
 printf("*** Small Vendor Tag Detected\n");
 break;
    case 137:
 printf("End Tag\n\n");

 return 1;
 break;
    }
    return 0;
}
