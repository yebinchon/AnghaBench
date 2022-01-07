
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SSH_TUNID_ANY ;
 int SSH_TUNID_ERR ;
 int SSH_TUNID_MAX ;
 int free (char*) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 char* strchr (char*,char) ;
 int strtonum (char const*,int ,int ,char const**) ;
 char* xstrdup (char const*) ;

int
a2tun(const char *s, int *remote)
{
 const char *errstr = ((void*)0);
 char *sp, *ep;
 int tun;

 if (remote != ((void*)0)) {
  *remote = SSH_TUNID_ANY;
  sp = xstrdup(s);
  if ((ep = strchr(sp, ':')) == ((void*)0)) {
   free(sp);
   return (a2tun(s, ((void*)0)));
  }
  ep[0] = '\0'; ep++;
  *remote = a2tun(ep, ((void*)0));
  tun = a2tun(sp, ((void*)0));
  free(sp);
  return (*remote == SSH_TUNID_ERR ? *remote : tun);
 }

 if (strcasecmp(s, "any") == 0)
  return (SSH_TUNID_ANY);

 tun = strtonum(s, 0, SSH_TUNID_MAX, &errstr);
 if (errstr != ((void*)0))
  return (SSH_TUNID_ERR);

 return (tun);
}
