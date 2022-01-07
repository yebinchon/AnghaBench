
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xbuf ;
typedef int uint8_t ;
struct i2c_info {int dummy; } ;


 int SFF_8472_DIAG ;
 int SFF_8472_TX_POWER ;
 int convert_sff_power (struct i2c_info*,char*,size_t,int *) ;
 int memset (int *,int ,int) ;
 int read_i2c (struct i2c_info*,int ,int ,int,int *) ;

__attribute__((used)) static void
get_sfp_tx_power(struct i2c_info *ii, char *buf, size_t size)
{
 uint8_t xbuf[2];

 memset(xbuf, 0, sizeof(xbuf));
 read_i2c(ii, SFF_8472_DIAG, SFF_8472_TX_POWER, 2, xbuf);
 convert_sff_power(ii, buf, size, xbuf);
}
