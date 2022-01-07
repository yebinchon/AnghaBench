
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int a2port (char*) ;
 char const* cleanhostname (char*) ;
 int free (char*) ;
 char* hpdelim2 (char**,char*) ;
 char* strchr (char*,char) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;
 char* urldecode (char*) ;
 int valid_domain (char*,int ,int *) ;
 char* xstrdup (char const*) ;

int
parse_uri(const char *scheme, const char *uri, char **userp, char **hostp,
    int *portp, char **pathp)
{
 char *uridup, *cp, *tmp, ch;
 char *user = ((void*)0), *host = ((void*)0), *path = ((void*)0);
 int port = -1, ret = -1;
 size_t len;

 len = strlen(scheme);
 if (strncmp(uri, scheme, len) != 0 || strncmp(uri + len, "://", 3) != 0)
  return 1;
 uri += len + 3;

 if (userp != ((void*)0))
  *userp = ((void*)0);
 if (hostp != ((void*)0))
  *hostp = ((void*)0);
 if (portp != ((void*)0))
  *portp = -1;
 if (pathp != ((void*)0))
  *pathp = ((void*)0);

 uridup = tmp = xstrdup(uri);


 if ((cp = strchr(tmp, '@')) != ((void*)0)) {
  char *delim;

  *cp = '\0';

  if ((delim = strchr(tmp, ';')) != ((void*)0)) {

   *delim = '\0';
  }
  if (*tmp == '\0') {

   goto out;
  }
  if ((user = urldecode(tmp)) == ((void*)0))
   goto out;
  tmp = cp + 1;
 }


 if ((cp = hpdelim2(&tmp, &ch)) == ((void*)0) || *cp == '\0')
  goto out;
 host = xstrdup(cleanhostname(cp));
 if (!valid_domain(host, 0, ((void*)0)))
  goto out;

 if (tmp != ((void*)0) && *tmp != '\0') {
  if (ch == ':') {

   if ((cp = strchr(tmp, '/')) != ((void*)0))
    *cp = '\0';
   if ((port = a2port(tmp)) <= 0)
    goto out;
   tmp = cp ? cp + 1 : ((void*)0);
  }
  if (tmp != ((void*)0) && *tmp != '\0') {

   if ((path = urldecode(tmp)) == ((void*)0))
    goto out;
  }
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
 if (pathp != ((void*)0)) {
  *pathp = path;
  path = ((void*)0);
 }
 ret = 0;
 out:
 free(uridup);
 free(user);
 free(host);
 free(path);
 return ret;
}
