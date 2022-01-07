
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct i2c_info {int dummy; } ;


 int SFF_8472_BASE ;
 int SFF_8472_ID ;
 int convert_sff_identifier (char*,size_t,int ) ;
 int read_i2c (struct i2c_info*,int ,int ,int,int *) ;

__attribute__((used)) static void
get_sfp_identifier(struct i2c_info *ii, char *buf, size_t size)
{
 uint8_t data;

 read_i2c(ii, SFF_8472_BASE, SFF_8472_ID, 1, &data);
 convert_sff_identifier(buf, size, data);
}
