
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int nvpair_t ;
struct TYPE_6__ {scalar_t__ nvl_error; int nvl_flags; } ;
typedef TYPE_1__ nvlist_t ;


 int ENOENT ;
 int ERRNO_SET (int ) ;
 int NVLIST_ASSERT (TYPE_1__ const*) ;
 int NV_FLAG_IGNORE_CASE ;
 int NV_TYPE_FIRST ;
 int NV_TYPE_LAST ;
 int NV_TYPE_NONE ;
 int PJDLOG_ASSERT (int) ;
 int * nvlist_first_nvpair (TYPE_1__ const*) ;
 int * nvlist_next_nvpair (TYPE_1__ const*,int *) ;
 int nvpair_name (int *) ;
 int nvpair_type (int *) ;
 scalar_t__ strcasecmp (int ,char const*) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static nvpair_t *
nvlist_find(const nvlist_t *nvl, int type, const char *name)
{
 nvpair_t *nvp;

 NVLIST_ASSERT(nvl);
 PJDLOG_ASSERT(nvl->nvl_error == 0);
 PJDLOG_ASSERT(type == NV_TYPE_NONE ||
     (type >= NV_TYPE_FIRST && type <= NV_TYPE_LAST));

 for (nvp = nvlist_first_nvpair(nvl); nvp != ((void*)0);
     nvp = nvlist_next_nvpair(nvl, nvp)) {
  if (type != NV_TYPE_NONE && nvpair_type(nvp) != type)
   continue;
  if ((nvl->nvl_flags & NV_FLAG_IGNORE_CASE) != 0) {
   if (strcasecmp(nvpair_name(nvp), name) != 0)
    continue;
  } else {
   if (strcmp(nvpair_name(nvp), name) != 0)
    continue;
  }
  break;
 }

 if (nvp == ((void*)0))
  ERRNO_SET(ENOENT);

 return (nvp);
}
