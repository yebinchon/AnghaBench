
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum uni_sig { ____Placeholder_uni_sig } uni_sig ;


 int UNIAPI_MAXSIG ;
 char const** sig_names ;
 int sprintf (char*,char*,int) ;

const char *
uni_signame(enum uni_sig sig)
{
 static char buf[40];

 if (sig >= UNIAPI_MAXSIG) {
  sprintf(buf, "UNIAPI_SIG%u", sig);
  return (buf);
 }
 return (sig_names[sig]);
}
