
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int DELAY (int) ;
 int bzero (int*,int) ;
 int inb (int) ;
 int rd_port ;

int
get_serial(u_char *data)
{
    int i, bit, valid = 0, sum = 0x6a;

    bzero(data, sizeof(char) * 9);

    for (i = 0; i < 72; i++) {
 bit = inb((rd_port << 2) | 0x3) == 0x55;
 DELAY(250);


 bit = (inb((rd_port << 2) | 0x3) == 0xaa) && bit;
 DELAY(250);

 valid = valid || bit;

 if (i < 64)
     sum = (sum >> 1) |
  (((sum ^ (sum >> 1) ^ bit) << 7) & 0xff);

 data[i / 8] = (data[i / 8] >> 1) | (bit ? 0x80 : 0);
    }

    valid = valid && (data[8] == sum);

    return valid;
}
