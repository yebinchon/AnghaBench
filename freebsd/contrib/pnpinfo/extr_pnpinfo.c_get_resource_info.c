
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int DEB (int ) ;
 int DELAY (int) ;
 int PNP_RESOURCE_DATA ;
 int PNP_STATUS ;
 int _PNP_ADDRESS ;
 int inb (int) ;
 int outb (int ,int ) ;
 int printf (char*,...) ;
 int rd_port ;

int
get_resource_info(u_char *buffer, int len)
{
    int i, j;

    for (i = 0; i < len; i++) {
 outb(_PNP_ADDRESS, PNP_STATUS);
 for (j = 0; j < 100; j++) {
     if ((inb((rd_port << 2) | 0x3)) & 0x1)
  break;
     DELAY(1);
 }
 if (j == 100) {
     printf("PnP device failed to report resource data\n");
     return 0;
 }
 outb(_PNP_ADDRESS, PNP_RESOURCE_DATA);
 buffer[i] = inb((rd_port << 2) | 0x3);
 DEB(printf("--- get_resource_info: got 0x%02x\n",(unsigned)buffer[i]));
    }
    return 1;
}
