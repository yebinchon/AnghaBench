
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct i2c_info {int dummy; } ;


 int SFF_8436_BASE ;
 int SFF_8436_CODE_E1040100G ;
 int SFF_8436_OPTIONS_START ;
 int SFF_8636_EXT_COMPLIANCE ;
 int eth_1040g ;
 int eth_extended_comp ;
 char* find_value (int ,int) ;
 char* find_zero_bit (int ,int,int) ;
 int read_i2c (struct i2c_info*,int ,int ,int,int*) ;
 int snprintf (char*,size_t,char*,char const*) ;

__attribute__((used)) static void
get_qsfp_transceiver_class(struct i2c_info *ii, char *buf, size_t size)
{
 const char *tech_class;
 uint8_t code;

 read_i2c(ii, SFF_8436_BASE, SFF_8436_CODE_E1040100G, 1, &code);


 if (code & SFF_8636_EXT_COMPLIANCE) {
  read_i2c(ii, SFF_8436_BASE, SFF_8436_OPTIONS_START, 1, &code);
  tech_class = find_value(eth_extended_comp, code);
 } else

  tech_class = find_zero_bit(eth_1040g, code, 1);

 if (tech_class == ((void*)0))
  tech_class = "Unknown";

 snprintf(buf, size, "%s", tech_class);
}
