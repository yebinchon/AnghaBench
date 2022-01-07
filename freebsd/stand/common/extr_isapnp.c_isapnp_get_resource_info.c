
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_char ;


 int RESOURCE_DATA ;
 int STATUS ;
 int _PNP_ADDRESS ;
 int delay (int) ;
 int inb (int ) ;
 int isapnp_readport ;
 int outb (int ,int ) ;
 int printf (char*) ;

__attribute__((used)) static int
isapnp_get_resource_info(uint8_t *buffer, int len)
{
    int i, j;
    u_char temp;

    for (i = 0; i < len; i++) {
 outb(_PNP_ADDRESS, STATUS);
 for (j = 0; j < 100; j++) {
     if ((inb(isapnp_readport)) & 0x1)
  break;
     delay(1);
 }
 if (j == 100) {
     printf("PnP device failed to report resource data\n");
     return(1);
 }
 outb(_PNP_ADDRESS, RESOURCE_DATA);
 temp = inb(isapnp_readport);
 if (buffer != ((void*)0))
     buffer[i] = temp;
    }
    return(0);
}
