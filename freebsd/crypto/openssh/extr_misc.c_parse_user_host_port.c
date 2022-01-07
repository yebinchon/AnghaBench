
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int a2port (char*) ;
 int cleanhostname (char*) ;
 int free (char*) ;
 char* hpdelim (char**) ;
 char* strdup (char const*) ;
 char* strrchr (char*,char) ;
 char* xstrdup (int ) ;

int
parse_user_host_port(const char *s, char **userp, char **hostp, int *portp)
{
 char *sdup, *cp, *tmp;
 char *user = ((void*)0), *host = ((void*)0);
 int port = -1, ret = -1;

 if (userp != ((void*)0))
  *userp = ((void*)0);
 if (hostp != ((void*)0))
  *hostp = ((void*)0);
 if (portp != ((void*)0))
  *portp = -1;

 if ((sdup = tmp = strdup(s)) == ((void*)0))
  return -1;

 if ((cp = strrchr(tmp, '@')) != ((void*)0)) {
  *cp = '\0';
  if (*tmp == '\0')
   goto out;
  if ((user = strdup(tmp)) == ((void*)0))
   goto out;
  tmp = cp + 1;
 }

 if ((cp = hpdelim(&tmp)) == ((void*)0) || *cp == '\0')
  goto out;
 host = xstrdup(cleanhostname(cp));

 if (tmp != ((void*)0) && *tmp != '\0') {
  if ((port = a2port(tmp)) <= 0)
   goto out;
 }

 if (userp != ((void*)0)) {
  *userp = user;
  user = ((void*)0);
 }
 if (hostp != ((void*)0)) {
  *hostp = host;
  host = ((void*)0);
 }
 if (portp != ((void*)0))
  *portp = port;
 ret = 0;
 out:
 free(sdup);
 free(user);
 free(host);
 return ret;
}
