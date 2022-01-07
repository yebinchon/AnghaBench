
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct i2c_info {int dummy; } ;


 int SFF_8436_BASE ;
 int SFF_8436_BITRATE ;
 int SFF_8636_BITRATE ;
 int read_i2c (struct i2c_info*,int ,int ,int,int*) ;

__attribute__((used)) static uint32_t
get_qsfp_br(struct i2c_info *ii)
{
 uint8_t xbuf;
 uint32_t rate;

 xbuf = 0;
 read_i2c(ii, SFF_8436_BASE, SFF_8436_BITRATE, 1, &xbuf);
 rate = xbuf * 100;
 if (xbuf == 0xFF) {
  read_i2c(ii, SFF_8436_BASE, SFF_8636_BITRATE, 1, &xbuf);
  rate = xbuf * 250;
 }

 return (rate);
}
