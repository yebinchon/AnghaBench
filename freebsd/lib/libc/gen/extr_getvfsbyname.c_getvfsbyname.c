
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvfsconf {int vfc_name; } ;


 int ENOENT ;
 scalar_t__ are_fusefs (char const*,int ) ;
 int errno ;
 int free (struct xvfsconf*) ;
 struct xvfsconf* malloc (size_t) ;
 int memcpy (struct xvfsconf*,struct xvfsconf*,int) ;
 scalar_t__ strcmp (char const*,int ) ;
 scalar_t__ sysctlbyname (char*,struct xvfsconf*,size_t*,int *,int ) ;

int
getvfsbyname(const char *fsname, struct xvfsconf *vfcp)
{
 struct xvfsconf *xvfsp;
 size_t buflen;
 int cnt, i;

 if (sysctlbyname("vfs.conflist", ((void*)0), &buflen, ((void*)0), 0) < 0)
  return (-1);
 xvfsp = malloc(buflen);
 if (xvfsp == ((void*)0))
  return (-1);
 if (sysctlbyname("vfs.conflist", xvfsp, &buflen, ((void*)0), 0) < 0) {
  free(xvfsp);
  return (-1);
 }
 cnt = buflen / sizeof(struct xvfsconf);
 for (i = 0; i < cnt; i++) {
  if (strcmp(fsname, xvfsp[i].vfc_name) == 0 ||
      are_fusefs(fsname, xvfsp[i].vfc_name)) {
   memcpy(vfcp, xvfsp + i, sizeof(struct xvfsconf));
   free(xvfsp);
   return (0);
  }
 }
 free(xvfsp);
 errno = ENOENT;
 return (-1);
}
