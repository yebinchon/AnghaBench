
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cleanhostname (char*) ;
 char* colon (char*) ;
 int free (char*) ;
 char* strrchr (char*,char) ;
 char* xstrdup (char const*) ;

int
parse_user_host_path(const char *s, char **userp, char **hostp, char **pathp)
{
 char *user = ((void*)0), *host = ((void*)0), *path = ((void*)0);
 char *sdup, *tmp;
 int ret = -1;

 if (userp != ((void*)0))
  *userp = ((void*)0);
 if (hostp != ((void*)0))
  *hostp = ((void*)0);
 if (pathp != ((void*)0))
  *pathp = ((void*)0);

 sdup = xstrdup(s);


 if ((tmp = colon(sdup)) == ((void*)0))
  goto out;


 *tmp++ = '\0';
 if (*tmp == '\0')
  tmp = ".";
 path = xstrdup(tmp);


 tmp = strrchr(sdup, '@');
 if (tmp != ((void*)0)) {
  *tmp++ = '\0';
  host = xstrdup(cleanhostname(tmp));
  if (*sdup != '\0')
   user = xstrdup(sdup);
 } else {
  host = xstrdup(cleanhostname(sdup));
  user = ((void*)0);
 }


 if (userp != ((void*)0)) {
  *userp = user;
  user = ((void*)0);
 }
 if (hostp != ((void*)0)) {
  *hostp = host;
  host = ((void*)0);
 }
 if (pathp != ((void*)0)) {
  *pathp = path;
  path = ((void*)0);
 }
 ret = 0;
out:
 free(sdup);
 free(user);
 free(host);
 free(path);
 return ret;
}
