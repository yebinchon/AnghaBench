
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
struct passwd {char const* pw_name; } ;
struct TYPE_3__ {scalar_t__ valid; int uid; char const* name; } ;
typedef TYPE_1__ UIDC ;


 scalar_t__ INVALID ;
 int UID_SZ ;
 int UNMLEN ;
 scalar_t__ VALID ;
 struct passwd* _pwcache_getpwuid (int) ;
 int _pwcache_setpassent (int) ;
 scalar_t__ malloc (int) ;
 int pwopn ;
 int snprintf (char const*,int ,char*,long) ;
 int strlcpy (char const*,char const*,int ) ;
 int stub1 (int) ;
 struct passwd* stub2 (int) ;
 TYPE_1__** uidtb ;
 scalar_t__ uidtb_start () ;

const char *
user_from_uid(uid_t uid, int noname)
{
 struct passwd *pw;
 UIDC *ptr, **pptr;

 if ((uidtb == ((void*)0)) && (uidtb_start() < 0))
  return (((void*)0));




 pptr = uidtb + (uid % UID_SZ);
 ptr = *pptr;

 if ((ptr != ((void*)0)) && (ptr->valid > 0) && (ptr->uid == uid)) {



  if (!noname || (ptr->valid == VALID))
   return (ptr->name);
  return (((void*)0));
 }




 if (!pwopn) {
  if (_pwcache_setpassent != ((void*)0))
   (*_pwcache_setpassent)(1);
  ++pwopn;
 }

 if (ptr == ((void*)0))
  *pptr = ptr = (UIDC *)malloc(sizeof(UIDC));

 if ((pw = (*_pwcache_getpwuid)(uid)) == ((void*)0)) {




  if (ptr == ((void*)0))
   return (((void*)0));
  ptr->uid = uid;
  (void)snprintf(ptr->name, UNMLEN, "%lu", (long) uid);
  ptr->valid = INVALID;
  if (noname)
   return (((void*)0));
 } else {



  if (ptr == ((void*)0))
   return (pw->pw_name);
  ptr->uid = uid;
  (void)strlcpy(ptr->name, pw->pw_name, UNMLEN);
  ptr->valid = VALID;
 }
 return (ptr->name);
}
