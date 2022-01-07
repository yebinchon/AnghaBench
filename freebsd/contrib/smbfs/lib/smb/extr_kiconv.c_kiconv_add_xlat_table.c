
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct iconv_add_out {int dummy; } ;
struct iconv_add_in {int ia_datalen; int const* ia_data; int ia_to; int ia_from; int ia_converter; int ia_version; } ;
typedef int dout ;
typedef int din ;


 int EINVAL ;
 int ICONV_ADD_VER ;
 scalar_t__ ICONV_CSNMAXLEN ;
 int eff_uid ;
 int errno ;
 int real_uid ;
 int seteuid (int ) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;
 int sysctlbyname (char*,struct iconv_add_out*,size_t*,struct iconv_add_in*,int) ;

int
kiconv_add_xlat_table(const char *to, const char *from, const u_char *table)
{
 struct iconv_add_in din;
 struct iconv_add_out dout;
 size_t olen;

 if (strlen(from) >= ICONV_CSNMAXLEN || strlen(to) >= ICONV_CSNMAXLEN)
  return EINVAL;
 din.ia_version = ICONV_ADD_VER;
 strcpy(din.ia_converter, "xlat");
 strcpy(din.ia_from, from);
 strcpy(din.ia_to, to);
 din.ia_data = table;
 din.ia_datalen = 256;
 olen = sizeof(dout);
 if (sysctlbyname("kern.iconv.add", &dout, &olen, &din, sizeof(din)) == -1)
  return errno;

 return 0;
}
