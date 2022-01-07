
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nvlist_t ;
struct TYPE_3__ {int fa_chann; } ;
typedef TYPE_1__ fileargs_t ;


 int NV_FLAG_NO_UNIQUE ;
 int assert (int ) ;
 int * cap_xfer_nvlist (int ,int *) ;
 int errno ;
 int nvlist_add_string (int *,char*,char const*) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int *) ;
 scalar_t__ nvlist_get_number (int *,char*) ;

__attribute__((used)) static nvlist_t*
fileargs_fetch(fileargs_t *fa, const char *name, const char *cmd)
{
 nvlist_t *nvl;
 int serrno;

 assert(fa != ((void*)0));
 assert(name != ((void*)0));

 nvl = nvlist_create(NV_FLAG_NO_UNIQUE);
 nvlist_add_string(nvl, "cmd", cmd);
 nvlist_add_string(nvl, "name", name);

 nvl = cap_xfer_nvlist(fa->fa_chann, nvl);
 if (nvl == ((void*)0))
  return (((void*)0));

 if (nvlist_get_number(nvl, "error") != 0) {
  serrno = (int)nvlist_get_number(nvl, "error");
  nvlist_destroy(nvl);
  errno = serrno;
  return (((void*)0));
 }

 return (nvl);
}
