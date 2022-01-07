
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct passwd {scalar_t__ pw_uid; } ;
struct group {scalar_t__ gr_gid; } ;
typedef scalar_t__ gid_t ;
typedef int acl_tag_t ;




 int EINVAL ;
 int errno ;
 struct group* getgrnam (char*) ;
 struct passwd* getpwnam (char*) ;
 unsigned long strtoul (char*,char**,int ) ;

int
_acl_name_to_id(acl_tag_t tag, char *name, uid_t *id)
{
 struct group *g;
 struct passwd *p;
 unsigned long l;
 char *endp;

 switch(tag) {
 case 128:
  p = getpwnam(name);
  if (p == ((void*)0)) {
   l = strtoul(name, &endp, 0);
   if (*endp != '\0' || l != (unsigned long)(uid_t)l) {
    errno = EINVAL;
    return (-1);
   }
   *id = (uid_t)l;
   return (0);
  }
  *id = p->pw_uid;
  return (0);

 case 129:
  g = getgrnam(name);
  if (g == ((void*)0)) {
   l = strtoul(name, &endp, 0);
   if (*endp != '\0' || l != (unsigned long)(gid_t)l) {
    errno = EINVAL;
    return (-1);
   }
   *id = (gid_t)l;
   return (0);
  }
  *id = g->gr_gid;
  return (0);

 default:
  return (EINVAL);
 }
}
