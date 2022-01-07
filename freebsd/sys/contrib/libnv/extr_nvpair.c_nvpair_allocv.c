
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {char* nvp_name; int nvp_type; size_t nvp_datasize; size_t nvp_nitems; int nvp_magic; int nvp_data; } ;
typedef TYPE_1__ nvpair_t ;


 int ENAMETOOLONG ;
 int ERRNO_SET (int ) ;
 int NVPAIR_MAGIC ;
 size_t NV_NAME_MAX ;
 int NV_TYPE_FIRST ;
 int NV_TYPE_LAST ;
 int PJDLOG_ASSERT (int) ;
 int memcpy (char*,char const*,size_t) ;
 TYPE_1__* nv_calloc (int,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static nvpair_t *
nvpair_allocv(const char *name, int type, uint64_t data, size_t datasize,
    size_t nitems)
{
 nvpair_t *nvp;
 size_t namelen;

 PJDLOG_ASSERT(type >= NV_TYPE_FIRST && type <= NV_TYPE_LAST);

 namelen = strlen(name);
 if (namelen >= NV_NAME_MAX) {
  ERRNO_SET(ENAMETOOLONG);
  return (((void*)0));
 }

 nvp = nv_calloc(1, sizeof(*nvp) + namelen + 1);
 if (nvp != ((void*)0)) {
  nvp->nvp_name = (char *)(nvp + 1);
  memcpy(nvp->nvp_name, name, namelen);
  nvp->nvp_name[namelen] = '\0';
  nvp->nvp_type = type;
  nvp->nvp_data = data;
  nvp->nvp_datasize = datasize;
  nvp->nvp_nitems = nitems;
  nvp->nvp_magic = NVPAIR_MAGIC;
 }

 return (nvp);
}
