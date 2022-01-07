
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct group {char const* gr_name; } ;
typedef int gid_t ;
struct TYPE_3__ {scalar_t__ valid; int gid; char const* name; } ;
typedef TYPE_1__ GIDC ;


 int GID_SZ ;
 int GNMLEN ;
 scalar_t__ INVALID ;
 scalar_t__ VALID ;
 struct group* _pwcache_getgrgid (int) ;
 int _pwcache_setgroupent (int) ;
 TYPE_1__** gidtb ;
 scalar_t__ gidtb_start () ;
 int gropn ;
 scalar_t__ malloc (int) ;
 int snprintf (char const*,int ,char*,long) ;
 int strlcpy (char const*,char const*,int ) ;
 int stub1 (int) ;
 struct group* stub2 (int) ;

const char *
group_from_gid(gid_t gid, int noname)
{
 struct group *gr;
 GIDC *ptr, **pptr;

 if ((gidtb == ((void*)0)) && (gidtb_start() < 0))
  return (((void*)0));




 pptr = gidtb + (gid % GID_SZ);
 ptr = *pptr;

 if ((ptr != ((void*)0)) && (ptr->valid > 0) && (ptr->gid == gid)) {



  if (!noname || (ptr->valid == VALID))
   return (ptr->name);
  return (((void*)0));
 }




 if (!gropn) {
  if (_pwcache_setgroupent != ((void*)0))
   (*_pwcache_setgroupent)(1);
  ++gropn;
 }

 if (ptr == ((void*)0))
  *pptr = ptr = (GIDC *)malloc(sizeof(GIDC));

 if ((gr = (*_pwcache_getgrgid)(gid)) == ((void*)0)) {




  if (ptr == ((void*)0))
   return (((void*)0));
  ptr->gid = gid;
  (void)snprintf(ptr->name, GNMLEN, "%lu", (long) gid);
  ptr->valid = INVALID;
  if (noname)
   return (((void*)0));
 } else {



  if (ptr == ((void*)0))
   return (gr->gr_name);
  ptr->gid = gid;
  (void)strlcpy(ptr->name, gr->gr_name, GNMLEN);
  ptr->valid = VALID;
 }
 return (ptr->name);
}
