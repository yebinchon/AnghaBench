
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int DEB (int ) ;







 int printf (char*,...) ;
 int report_memory_info (int) ;

void
handle_large_res(u_char *resinfo, int item, int len)
{
    int i;

    DEB(printf("*** Large ITEM %d len %d found\n", item, len));
    switch (item) {
    case 128:
 report_memory_info(resinfo[0]);
 printf("Memory range minimum address: 0x%x\n",
  (resinfo[1] << 8) + (resinfo[2] << 16));
 printf("Memory range maximum address: 0x%x\n",
  (resinfo[3] << 8) + (resinfo[4] << 16));
 printf("Memory range base alignment: 0x%x\n",
  (i = (resinfo[5] + (resinfo[6] << 8))) ? i : (1 << 16));
 printf("Memory range length: 0x%x\n",
  (resinfo[7] + (resinfo[8] << 8)) * 256);
 break;
    case 134:
 printf("Device Description: ");

 for (i = 0; i < len; i++) {
     if (resinfo[i])
  printf("%c", resinfo[i]);
 }
 printf("\n");
 break;
    case 133:
 printf("ID String Unicode Detected (Undefined)\n");
 break;
    case 131:
 printf("Large Vendor Defined Detected\n");
 break;
    case 129:
 printf("32bit Memory Range Desc Unimplemented\n");
 break;
    case 130:
 printf("32bit Fixed Location Desc Unimplemented\n");
 break;





    }
}
