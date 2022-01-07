
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct i2c_info {scalar_t__ error; int do_diag; } ;
typedef int caddr_t ;
typedef int buf3 ;
typedef int buf2 ;
typedef int buf ;


 int SFF_8472_BASE ;
 int SFF_8472_DDM_DONE ;
 int SFF_8472_DDM_INTERNAL ;
 int SFF_8472_DIAG_TYPE ;
 int dump_i2c_data (struct i2c_info*,int ,int ,int) ;
 int get_sfp_connector (struct i2c_info*,char*,int) ;
 int get_sfp_identifier (struct i2c_info*,char*,int) ;
 int get_sfp_rx_power (struct i2c_info*,char*,int) ;
 int get_sfp_temp (struct i2c_info*,char*,int) ;
 int get_sfp_transceiver_class (struct i2c_info*,char*,int) ;
 int get_sfp_tx_power (struct i2c_info*,char*,int) ;
 int get_sfp_voltage (struct i2c_info*,char*,int) ;
 int print_sfp_vendor (struct i2c_info*,char*,int) ;
 int printf (char*,...) ;
 int printf_sfp_transceiver_descr (struct i2c_info*,char*,int) ;
 int read_i2c (struct i2c_info*,int ,int ,int,int ) ;

__attribute__((used)) static void
print_sfp_status(struct i2c_info *ii, int verbose)
{
 char buf[80], buf2[40], buf3[40];
 uint8_t diag_type, flags;


 read_i2c(ii, SFF_8472_BASE, SFF_8472_DIAG_TYPE, 1, (caddr_t)&diag_type);
 if (ii->error != 0)
  return;





 flags = SFF_8472_DDM_DONE | SFF_8472_DDM_INTERNAL;
 if ((diag_type & flags) == flags)
  ii->do_diag = 1;


 get_sfp_identifier(ii, buf, sizeof(buf));
 get_sfp_transceiver_class(ii, buf2, sizeof(buf2));
 get_sfp_connector(ii, buf3, sizeof(buf3));
 if (ii->error == 0)
  printf("\tplugged: %s %s (%s)\n", buf, buf2, buf3);
 print_sfp_vendor(ii, buf, sizeof(buf));
 if (ii->error == 0)
  printf("\t%s\n", buf);

 if (verbose > 5)
  printf_sfp_transceiver_descr(ii, buf, sizeof(buf));



 if (ii->do_diag != 0) {
  get_sfp_temp(ii, buf, sizeof(buf));
  get_sfp_voltage(ii, buf2, sizeof(buf2));
  printf("\tmodule temperature: %s Voltage: %s\n", buf, buf2);
  get_sfp_rx_power(ii, buf, sizeof(buf));
  get_sfp_tx_power(ii, buf2, sizeof(buf2));
  printf("\tRX: %s TX: %s\n", buf, buf2);
 }

 if (verbose > 2) {
  printf("\n\tSFF8472 DUMP (0xA0 0..127 range):\n");
  dump_i2c_data(ii, SFF_8472_BASE, 0, 128);
 }
}
