
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xbuf ;
struct i2c_info {scalar_t__ qsfp; } ;


 int get_qsfp_vendor_date (struct i2c_info*,char*,int) ;
 int get_qsfp_vendor_name (struct i2c_info*,char*,int) ;
 int get_qsfp_vendor_pn (struct i2c_info*,char*,int) ;
 int get_qsfp_vendor_sn (struct i2c_info*,char*,int) ;
 int get_sfp_vendor_date (struct i2c_info*,char*,int) ;
 int get_sfp_vendor_name (struct i2c_info*,char*,int) ;
 int get_sfp_vendor_pn (struct i2c_info*,char*,int) ;
 int get_sfp_vendor_sn (struct i2c_info*,char*,int) ;
 int memset (char*,int ,int) ;
 int snprintf (char*,size_t,char*,char*,char*,char*,char*) ;

__attribute__((used)) static void
print_sfp_vendor(struct i2c_info *ii, char *buf, size_t size)
{
 char xbuf[80];

 memset(xbuf, 0, sizeof(xbuf));
 if (ii->qsfp != 0) {
  get_qsfp_vendor_name(ii, xbuf, 20);
  get_qsfp_vendor_pn(ii, &xbuf[20], 20);
  get_qsfp_vendor_sn(ii, &xbuf[40], 20);
  get_qsfp_vendor_date(ii, &xbuf[60], 20);
 } else {
  get_sfp_vendor_name(ii, xbuf, 20);
  get_sfp_vendor_pn(ii, &xbuf[20], 20);
  get_sfp_vendor_sn(ii, &xbuf[40], 20);
  get_sfp_vendor_date(ii, &xbuf[60], 20);
 }

 snprintf(buf, size, "vendor: %s PN: %s SN: %s DATE: %s",
     xbuf, &xbuf[20], &xbuf[40], &xbuf[60]);
}
