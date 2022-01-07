
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pw ;
typedef int prompt ;


 int RPP_REQUIRE_TTY ;
 int errx (int,char*) ;
 int * readpassphrase (char*,char*,int,int ) ;
 int snprintf (char*,int,char*,char const*,char const*) ;

__attribute__((used)) static const char *
getproxypass(const char *proxyuser, const char *proxyhost)
{
 char prompt[512];
 static char pw[256];

 snprintf(prompt, sizeof(prompt), "Proxy password for %s@%s: ",
    proxyuser, proxyhost);
 if (readpassphrase(prompt, pw, sizeof(pw), RPP_REQUIRE_TTY) == ((void*)0))
  errx(1, "Unable to read proxy passphrase");
 return (pw);
}
