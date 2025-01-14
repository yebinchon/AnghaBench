
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct i2c_info {int dummy; } ;
typedef scalar_t__* caddr_t ;


 int SFF_8472_BASE ;
 scalar_t__ SFF_8472_TRANS ;
 scalar_t__ SFF_8472_TRANS_START ;
 int eth_10g ;
 int eth_compat ;
 int eth_extended_comp ;
 char* find_value (int ,scalar_t__) ;
 char* find_zero_bit (int ,scalar_t__,int) ;
 int read_i2c (struct i2c_info*,int ,scalar_t__,int,scalar_t__*) ;
 int snprintf (char*,size_t,char*,char const*) ;

__attribute__((used)) static void
get_sfp_transceiver_class(struct i2c_info *ii, char *buf, size_t size)
{
 const char *tech_class;
 uint8_t code;


 read_i2c(ii, SFF_8472_BASE, SFF_8472_TRANS, 1, &code);
 if (code != 0)
  tech_class = find_value(eth_extended_comp, code);
 else {

  read_i2c(ii, SFF_8472_BASE, SFF_8472_TRANS_START, 1, &code);
  tech_class = find_zero_bit(eth_10g, code, 1);
  if (tech_class == ((void*)0)) {

   read_i2c(ii, SFF_8472_BASE, SFF_8472_TRANS_START + 3,
       1, (caddr_t)&code);
   tech_class = find_zero_bit(eth_compat, code, 1);
  }
 }

 if (tech_class == ((void*)0))
  tech_class = "Unknown";

 snprintf(buf, size, "%s", tech_class);
}
