
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
struct passwd {int pw_uid; } ;
struct TYPE_3__ {scalar_t__ valid; int uid; int name; } ;
typedef TYPE_1__ UIDC ;


 scalar_t__ INVALID ;
 int UNMLEN ;
 int UNM_SZ ;
 scalar_t__ VALID ;
 struct passwd* _pwcache_getpwnam (char const*) ;
 int _pwcache_setpassent (int) ;
 scalar_t__ malloc (int) ;
 int pwopn ;
 int st_hash (char const*,size_t,int ) ;
 int strcmp (char const*,int ) ;
 int strlcpy (int ,char const*,int ) ;
 size_t strlen (char const*) ;
 int stub1 (int) ;
 struct passwd* stub2 (char const*) ;
 struct passwd* stub3 (char const*) ;
 TYPE_1__** usrtb ;
 scalar_t__ usrtb_start () ;

int
uid_from_user(const char *name, uid_t *uid)
{
 struct passwd *pw;
 UIDC *ptr, **pptr;
 size_t namelen;




 if (name == ((void*)0) || ((namelen = strlen(name)) == 0))
  return (-1);
 if ((usrtb == ((void*)0)) && (usrtb_start() < 0))
  return (-1);





 pptr = usrtb + st_hash(name, namelen, UNM_SZ);
 ptr = *pptr;

 if ((ptr != ((void*)0)) && (ptr->valid > 0) && !strcmp(name, ptr->name)) {
  if (ptr->valid == INVALID)
   return (-1);
  *uid = ptr->uid;
  return (0);
 }

 if (!pwopn) {
  if (_pwcache_setpassent != ((void*)0))
   (*_pwcache_setpassent)(1);
  ++pwopn;
 }

 if (ptr == ((void*)0))
  *pptr = ptr = (UIDC *)malloc(sizeof(UIDC));





 if (ptr == ((void*)0)) {
  if ((pw = (*_pwcache_getpwnam)(name)) == ((void*)0))
   return (-1);
  *uid = pw->pw_uid;
  return (0);
 }
 (void)strlcpy(ptr->name, name, UNMLEN);
 if ((pw = (*_pwcache_getpwnam)(name)) == ((void*)0)) {
  ptr->valid = INVALID;
  return (-1);
 }
 ptr->valid = VALID;
 *uid = ptr->uid = pw->pw_uid;
 return (0);
}
