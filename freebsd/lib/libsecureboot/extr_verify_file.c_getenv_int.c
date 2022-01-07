
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char const*) ;
 long strtol (char const*,char**,int ) ;

__attribute__((used)) static int
getenv_int(const char *var, int def)
{
 const char *cp;
 char *ep;
 long val;

 val = def;
 cp = getenv(var);
 if (cp && *cp) {
  val = strtol(cp, &ep, 0);
  if ((ep && *ep) || val != (int)val) {
   val = def;
  }
 }
 return (int)val;
}
