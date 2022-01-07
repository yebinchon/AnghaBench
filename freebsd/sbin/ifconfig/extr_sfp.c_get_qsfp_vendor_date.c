
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xbuf ;
typedef int uint8_t ;
struct i2c_info {int dummy; } ;


 int SFF_8436_BASE ;
 int SFF_8436_DATE_START ;
 int convert_sff_date (char*,size_t,char*) ;
 int memset (char*,int ,int) ;
 int read_i2c (struct i2c_info*,int ,int ,int,int *) ;

__attribute__((used)) static void
get_qsfp_vendor_date(struct i2c_info *ii, char *buf, size_t size)
{
 char xbuf[6];

 memset(xbuf, 0, sizeof(xbuf));
 read_i2c(ii, SFF_8436_BASE, SFF_8436_DATE_START, 6, (uint8_t *)xbuf);
 convert_sff_date(buf, size, xbuf);
}
