
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int SERIAL_ISOLATION ;
 int _PNP_ADDRESS ;
 int _PNP_ID_LEN ;
 int bzero (int*,int ) ;
 int delay (int) ;
 int inb (int ) ;
 int isapnp_readport ;
 int outb (int ,int ) ;

__attribute__((used)) static int
isapnp_get_serial(uint8_t *data)
{
    int i, bit, valid = 0, sum = 0x6a;

    bzero(data, _PNP_ID_LEN);
    outb(_PNP_ADDRESS, SERIAL_ISOLATION);
    for (i = 0; i < 72; i++) {
 bit = inb(isapnp_readport) == 0x55;
 delay(250);


 bit = (inb(isapnp_readport) == 0xaa) && bit;
 delay(250);

 valid = valid || bit;

 if (i < 64)
     sum = (sum >> 1) |
  (((sum ^ (sum >> 1) ^ bit) << 7) & 0xff);

 data[i / 8] = (data[i / 8] >> 1) | (bit ? 0x80 : 0);
    }

    valid = valid && (data[8] == sum);

    return valid;
}
