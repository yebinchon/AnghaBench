
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 int EAI_MEMORY ;
 int snprintf (char*,size_t,char*,char*,int const) ;

__attribute__((used)) static int
hexname(const u_int8_t *cp, size_t len, char *host, size_t hostlen)
{
 int i, n;
 char *outp = host;

 *outp = '\0';
 for (i = 0; i < len; i++) {
  n = snprintf(outp, hostlen, "%s%02x",
      i ? ":" : "", cp[i]);
  if (n < 0 || n >= hostlen) {
   *host = '\0';
   return EAI_MEMORY;
  }
  outp += n;
  hostlen -= n;
 }
 return 0;
}
