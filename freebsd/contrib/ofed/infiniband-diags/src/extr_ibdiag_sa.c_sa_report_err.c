
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int fprintf (int ,char*,int,char*,char*) ;
 char* ib_mad_inv_field_err_str (int) ;
 char* ib_sa_err_str (int ) ;
 int sprintf (char*,char*,char*,...) ;
 int stderr ;

void sa_report_err(int status)
{
 int st = status & 0xff;
 char mad_err_str[64] = { 0 };
 char sa_err_str[64] = { 0 };

 if (st)
  sprintf(mad_err_str, " (%s; %s; %s)",
   (st & 0x1) ? "BUSY" : "",
   (st & 0x2) ? "Redirection Required" : "",
   ib_mad_inv_field_err_str(st>>2));


 st = status >> 8;
 if (st)
  sprintf(sa_err_str, " SA(%s)", ib_sa_err_str((uint8_t) st));

 fprintf(stderr, "ERROR: Query result returned 0x%04x, %s%s\n",
  status, mad_err_str, sa_err_str);
}
