
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ifreq {int dummy; } ;
struct i2c_info {int fd; scalar_t__ error; struct ifreq* ifr; } ;
typedef int ii ;
typedef int caddr_t ;





 int SFF_8472_BASE ;
 int SFF_8472_ID ;
 int memset (struct i2c_info*,int ,int) ;
 int print_qsfp_status (struct i2c_info*,int) ;
 int print_sfp_status (struct i2c_info*,int) ;
 int read_i2c (struct i2c_info*,int ,int ,int,int ) ;

void
sfp_status(int s, struct ifreq *ifr, int verbose)
{
 struct i2c_info ii;
 uint8_t id_byte;


 memset(&ii, 0, sizeof(ii));
 ii.fd = s;
 ii.ifr = ifr;
 id_byte = 0;
 read_i2c(&ii, SFF_8472_BASE, SFF_8472_ID, 1, (caddr_t)&id_byte);
 if (ii.error != 0 || id_byte == 0)
  return;

 switch (id_byte) {
 case 130:
 case 128:
 case 129:
  print_qsfp_status(&ii, verbose);
  break;
 default:
  print_sfp_status(&ii, verbose);
 }
}
