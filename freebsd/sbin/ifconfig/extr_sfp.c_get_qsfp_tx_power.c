
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xbuf ;
typedef int uint8_t ;
struct i2c_info {int dummy; } ;


 int SFF_8436_BASE ;
 scalar_t__ SFF_8436_TX_CH1_MSB ;
 int convert_sff_power (struct i2c_info*,char*,size_t,int *) ;
 int memset (int *,int ,int) ;
 int read_i2c (struct i2c_info*,int ,scalar_t__,int,int *) ;

__attribute__((used)) static void
get_qsfp_tx_power(struct i2c_info *ii, char *buf, size_t size, int chan)
{
 uint8_t xbuf[2];

 memset(xbuf, 0, sizeof(xbuf));
 read_i2c(ii, SFF_8436_BASE, SFF_8436_TX_CH1_MSB + (chan-1)*2, 2, xbuf);
 convert_sff_power(ii, buf, size, xbuf);
}
