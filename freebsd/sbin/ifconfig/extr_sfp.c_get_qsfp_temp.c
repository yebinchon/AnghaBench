
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xbuf ;
typedef int uint8_t ;
struct i2c_info {int dummy; } ;


 int SFF_8436_BASE ;
 int SFF_8436_TEMP ;
 int convert_sff_temp (char*,size_t,int*) ;
 int memset (int*,int ,int) ;
 int read_i2c (struct i2c_info*,int ,int ,int,int*) ;

__attribute__((used)) static int
get_qsfp_temp(struct i2c_info *ii, char *buf, size_t size)
{
 uint8_t xbuf[2];

 memset(xbuf, 0, sizeof(xbuf));
 read_i2c(ii, SFF_8436_BASE, SFF_8436_TEMP, 2, xbuf);
 if ((xbuf[0] == 0xFF && xbuf[1] == 0xFF) || (xbuf[0] == 0 && xbuf[1] == 0))
  return (-1);
 convert_sff_temp(buf, size, xbuf);
 return (0);
}
