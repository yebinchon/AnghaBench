
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RPP_ECHO_OFF ;
 int errno ;
 int lafe_errc (int,int,char*) ;
 char* readpassphrase (char const*,char*,size_t,int ) ;

char *
lafe_readpassphrase(const char *prompt, char *buf, size_t bufsiz)
{
 char *p;

 p = readpassphrase(prompt, buf, bufsiz, RPP_ECHO_OFF);
 if (p == ((void*)0)) {
  switch (errno) {
  case 128:
   break;
  default:
   lafe_errc(1, errno, "Couldn't read passphrase");
   break;
  }
 }
 return (p);
}
