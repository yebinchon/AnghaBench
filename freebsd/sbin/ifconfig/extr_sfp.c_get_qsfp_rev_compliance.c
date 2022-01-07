
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct i2c_info {int dummy; } ;


 int SFF_8436_BASE ;
 int SFF_8436_STATUS ;
 int convert_sff_rev_compliance (char*,size_t,scalar_t__) ;
 int read_i2c (struct i2c_info*,int ,int ,int,scalar_t__*) ;

__attribute__((used)) static void
get_qsfp_rev_compliance(struct i2c_info *ii, char *buf, size_t size)
{
 uint8_t xbuf;

 xbuf = 0;
 read_i2c(ii, SFF_8436_BASE, SFF_8436_STATUS, 1, &xbuf);
 convert_sff_rev_compliance(buf, size, xbuf);
}
