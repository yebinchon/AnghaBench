
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct sshkey_cert {size_t nprincipals; int * principals; } ;
struct sshauthopt {int dummy; } ;
struct ssh {int dummy; } ;


 int auth_debug_add (char*,char const*,char const*) ;
 int debug (char*,char const*,char const*) ;
 int debug3 (char*,char const*,int ) ;
 int sshauthopt_free (struct sshauthopt*) ;
 struct sshauthopt* sshauthopt_parse (char*,char const**) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int
check_principals_line(struct ssh *ssh, char *cp, const struct sshkey_cert *cert,
    const char *loc, struct sshauthopt **authoptsp)
{
 u_int i, found = 0;
 char *ep, *line_opts;
 const char *reason = ((void*)0);
 struct sshauthopt *opts = ((void*)0);

 if (authoptsp != ((void*)0))
  *authoptsp = ((void*)0);


 ep = cp + strlen(cp) - 1;
 while (ep > cp && (*ep == '\n' || *ep == ' ' || *ep == '\t'))
  *ep-- = '\0';





 line_opts = ((void*)0);
 if ((ep = strrchr(cp, ' ')) != ((void*)0) ||
     (ep = strrchr(cp, '\t')) != ((void*)0)) {
  for (; *ep == ' ' || *ep == '\t'; ep++)
   ;
  line_opts = cp;
  cp = ep;
 }
 if ((opts = sshauthopt_parse(line_opts, &reason)) == ((void*)0)) {
  debug("%s: bad principals options: %s", loc, reason);
  auth_debug_add("%s: bad principals options: %s", loc, reason);
  return -1;
 }

 for (i = 0; i < cert->nprincipals; i++) {
  if (strcmp(cp, cert->principals[i]) != 0)
   continue;
  debug3("%s: matched principal \"%.100s\"",
      loc, cert->principals[i]);
  found = 1;
 }
 if (found && authoptsp != ((void*)0)) {
  *authoptsp = opts;
  opts = ((void*)0);
 }
 sshauthopt_free(opts);
 return found ? 0 : -1;
}
