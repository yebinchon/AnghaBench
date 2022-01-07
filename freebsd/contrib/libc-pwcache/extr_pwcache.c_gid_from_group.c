
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct group {int gr_gid; } ;
typedef int gid_t ;
struct TYPE_3__ {scalar_t__ valid; int gid; int name; } ;
typedef TYPE_1__ GIDC ;


 int GID_SZ ;
 int GNMLEN ;
 scalar_t__ INVALID ;
 scalar_t__ VALID ;
 struct group* _pwcache_getgrnam (char const*) ;
 int _pwcache_setgroupent (int) ;
 int gropn ;
 TYPE_1__** grptb ;
 scalar_t__ grptb_start () ;
 scalar_t__ malloc (int) ;
 int st_hash (char const*,size_t,int ) ;
 int strcmp (char const*,int ) ;
 int strlcpy (int ,char const*,int ) ;
 size_t strlen (char const*) ;
 int stub1 (int) ;
 struct group* stub2 (char const*) ;
 struct group* stub3 (char const*) ;

int
gid_from_group(const char *name, gid_t *gid)
{
 struct group *gr;
 GIDC *ptr, **pptr;
 size_t namelen;




 if (name == ((void*)0) || ((namelen = strlen(name)) == 0))
  return (-1);
 if ((grptb == ((void*)0)) && (grptb_start() < 0))
  return (-1);





 pptr = grptb + st_hash(name, namelen, GID_SZ);
 ptr = *pptr;

 if ((ptr != ((void*)0)) && (ptr->valid > 0) && !strcmp(name, ptr->name)) {
  if (ptr->valid == INVALID)
   return (-1);
  *gid = ptr->gid;
  return (0);
 }

 if (!gropn) {
  if (_pwcache_setgroupent != ((void*)0))
   (*_pwcache_setgroupent)(1);
  ++gropn;
 }

 if (ptr == ((void*)0))
  *pptr = ptr = (GIDC *)malloc(sizeof(GIDC));





 if (ptr == ((void*)0)) {
  if ((gr = (*_pwcache_getgrnam)(name)) == ((void*)0))
   return (-1);
  *gid = gr->gr_gid;
  return (0);
 }

 (void)strlcpy(ptr->name, name, GNMLEN);
 if ((gr = (*_pwcache_getgrnam)(name)) == ((void*)0)) {
  ptr->valid = INVALID;
  return (-1);
 }
 ptr->valid = VALID;
 *gid = ptr->gid = gr->gr_gid;
 return (0);
}
