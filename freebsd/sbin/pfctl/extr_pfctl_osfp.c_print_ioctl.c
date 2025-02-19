
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_2__ {char* fp_class_nm; char* fp_version_nm; char* fp_subtype_nm; } ;
struct pf_osfp_ioctl {int fp_flags; int fp_wsize; int fp_ttl; int fp_psize; int fp_optcnt; int fp_tcpopts; int fp_mss; int fp_wscale; TYPE_1__ fp_os; } ;
typedef int buf ;


 int PF_OSFP_DF ;
 int PF_OSFP_MSS_DC ;
 int PF_OSFP_MSS_MOD ;
 int PF_OSFP_PSIZE_DC ;
 int PF_OSFP_PSIZE_MOD ;
 int PF_OSFP_TCPOPT_BITS ;





 int PF_OSFP_TS0 ;
 int PF_OSFP_WSCALE_DC ;
 int PF_OSFP_WSCALE_MOD ;
 int PF_OSFP_WSIZE_DC ;
 int PF_OSFP_WSIZE_MOD ;
 int PF_OSFP_WSIZE_MSS ;
 int PF_OSFP_WSIZE_MTU ;
 int snprintf (char*,int,char*,int,...) ;
 int strlcat (char*,char*,int) ;

const char *
print_ioctl(struct pf_osfp_ioctl *fp)
{
 static char buf[1024];
 char tmp[32];
 int i, opt;

 *buf = '\0';
 if (fp->fp_flags & PF_OSFP_WSIZE_DC)
  strlcat(buf, "*", sizeof(buf));
 else if (fp->fp_flags & PF_OSFP_WSIZE_MSS)
  strlcat(buf, "S", sizeof(buf));
 else if (fp->fp_flags & PF_OSFP_WSIZE_MTU)
  strlcat(buf, "T", sizeof(buf));
 else {
  if (fp->fp_flags & PF_OSFP_WSIZE_MOD)
   strlcat(buf, "%", sizeof(buf));
  snprintf(tmp, sizeof(tmp), "%d", fp->fp_wsize);
  strlcat(buf, tmp, sizeof(buf));
 }
 strlcat(buf, ":", sizeof(buf));

 snprintf(tmp, sizeof(tmp), "%d", fp->fp_ttl);
 strlcat(buf, tmp, sizeof(buf));
 strlcat(buf, ":", sizeof(buf));

 if (fp->fp_flags & PF_OSFP_DF)
  strlcat(buf, "1", sizeof(buf));
 else
  strlcat(buf, "0", sizeof(buf));
 strlcat(buf, ":", sizeof(buf));

 if (fp->fp_flags & PF_OSFP_PSIZE_DC)
  strlcat(buf, "*", sizeof(buf));
 else {
  if (fp->fp_flags & PF_OSFP_PSIZE_MOD)
   strlcat(buf, "%", sizeof(buf));
  snprintf(tmp, sizeof(tmp), "%d", fp->fp_psize);
  strlcat(buf, tmp, sizeof(buf));
 }
 strlcat(buf, ":", sizeof(buf));

 if (fp->fp_optcnt == 0)
  strlcat(buf, ".", sizeof(buf));
 for (i = fp->fp_optcnt - 1; i >= 0; i--) {
  opt = fp->fp_tcpopts >> (i * PF_OSFP_TCPOPT_BITS);
  opt &= (1 << PF_OSFP_TCPOPT_BITS) - 1;
  switch (opt) {
  case 131:
   strlcat(buf, "N", sizeof(buf));
   break;
  case 130:
   strlcat(buf, "S", sizeof(buf));
   break;
  case 129:
   strlcat(buf, "T", sizeof(buf));
   if (fp->fp_flags & PF_OSFP_TS0)
    strlcat(buf, "0", sizeof(buf));
   break;
  case 132:
   strlcat(buf, "M", sizeof(buf));
   if (fp->fp_flags & PF_OSFP_MSS_DC)
    strlcat(buf, "*", sizeof(buf));
   else {
    if (fp->fp_flags & PF_OSFP_MSS_MOD)
     strlcat(buf, "%", sizeof(buf));
    snprintf(tmp, sizeof(tmp), "%d", fp->fp_mss);
    strlcat(buf, tmp, sizeof(buf));
   }
   break;
  case 128:
   strlcat(buf, "W", sizeof(buf));
   if (fp->fp_flags & PF_OSFP_WSCALE_DC)
    strlcat(buf, "*", sizeof(buf));
   else {
    if (fp->fp_flags & PF_OSFP_WSCALE_MOD)
     strlcat(buf, "%", sizeof(buf));
    snprintf(tmp, sizeof(tmp), "%d", fp->fp_wscale);
    strlcat(buf, tmp, sizeof(buf));
   }
   break;
  }

  if (i != 0)
   strlcat(buf, ",", sizeof(buf));
 }
 strlcat(buf, ":", sizeof(buf));

 strlcat(buf, fp->fp_os.fp_class_nm, sizeof(buf));
 strlcat(buf, ":", sizeof(buf));
 strlcat(buf, fp->fp_os.fp_version_nm, sizeof(buf));
 strlcat(buf, ":", sizeof(buf));
 strlcat(buf, fp->fp_os.fp_subtype_nm, sizeof(buf));
 strlcat(buf, ":", sizeof(buf));

 snprintf(tmp, sizeof(tmp), "TcpOpts %d 0x%llx", fp->fp_optcnt,
     (long long int)fp->fp_tcpopts);
 strlcat(buf, tmp, sizeof(buf));

 return (buf);
}
