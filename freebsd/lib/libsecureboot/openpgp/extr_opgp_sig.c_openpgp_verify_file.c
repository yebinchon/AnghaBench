
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pbuf ;


 int MAXPATHLEN ;
 int R_OK ;
 scalar_t__ access (char*,int ) ;
 int openpgp_verify (char const*,unsigned char*,size_t,unsigned char*,size_t,int) ;
 unsigned char* read_file (char const*,size_t*) ;
 char** sig_exts ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 int warnx (char*,char const*) ;

int
openpgp_verify_file(const char *filename, unsigned char *fdata, size_t nbytes)
{
 char pbuf[MAXPATHLEN];
 unsigned char *sdata;
 const char *sname = ((void*)0);
 const char **ep;
 size_t sz;
 int n;

 for (ep = sig_exts; *ep; ep++) {
  n = snprintf(pbuf, sizeof(pbuf), "%s%s", filename, *ep);
  if (n >= (int)sizeof(pbuf)) {
   warnx("cannot form signature name for %s", filename);
   return (-1);
  }
  if (access(pbuf, R_OK) == 0) {
   sname = pbuf;
   break;
  }
 }
 if (!sname) {
  warnx("cannot find signature for %s", filename);
  return (-1);
 }
 sdata = read_file(sname, &sz);
 return (openpgp_verify(filename, fdata, nbytes, sdata, sz, 1));
}
