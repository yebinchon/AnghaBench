
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvlist_t ;


 int CAP_SYSCTL_RECURSIVE ;
 int NV_TYPE_NVLIST ;
 int assert (int) ;
 int * cnvlist_get_nvlist (void*) ;
 int* dnvlist_get_binary (int const*,char*,size_t*,int *,int ) ;
 char* dnvlist_get_string (int const*,char*,int *) ;
 scalar_t__ memcmp (int const*,int const*,size_t) ;
 int nvlist_get_number (int const*,char*) ;
 char* nvlist_next (int const*,int*,void**) ;
 scalar_t__ strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static bool
sysctl_allowed(const nvlist_t *limits, const nvlist_t *req)
{
 const nvlist_t *limit;
 uint64_t op, reqop;
 const char *lname, *name, *reqname;
 void *cookie;
 size_t lsize, reqsize;
 const int *lmib, *reqmib;
 int type;

 if (limits == ((void*)0))
  return (1);

 reqmib = dnvlist_get_binary(req, "mib", &reqsize, ((void*)0), 0);
 reqname = dnvlist_get_string(req, "name", ((void*)0));
 reqop = nvlist_get_number(req, "operation");

 cookie = ((void*)0);
 while ((name = nvlist_next(limits, &type, &cookie)) != ((void*)0)) {
  assert(type == NV_TYPE_NVLIST);

  limit = cnvlist_get_nvlist(cookie);
  op = nvlist_get_number(limit, "operation");
  if ((reqop & op) != reqop)
   continue;

  if (reqname != ((void*)0)) {
   lname = dnvlist_get_string(limit, "name", ((void*)0));
   if (lname == ((void*)0))
    continue;
   if ((op & CAP_SYSCTL_RECURSIVE) == 0) {
    if (strcmp(lname, reqname) != 0)
     continue;
   } else {
    size_t namelen;

    namelen = strlen(lname);
    if (strncmp(lname, reqname, namelen) != 0)
     continue;
    if (reqname[namelen] != '.' &&
        reqname[namelen] != '\0')
     continue;
   }
  } else {
   lmib = dnvlist_get_binary(limit, "mib", &lsize, ((void*)0), 0);
   if (lmib == ((void*)0))
    continue;
   if (lsize > reqsize || ((op & CAP_SYSCTL_RECURSIVE) == 0 &&
       lsize < reqsize))
    continue;
   if (memcmp(lmib, reqmib, lsize) != 0)
    continue;
  }

  return (1);
 }

 return (0);
}
