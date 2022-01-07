
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int va_list ;
typedef int nvpair_t ;
struct TYPE_5__ {scalar_t__ nvl_error; } ;
typedef TYPE_1__ nvlist_t ;


 int ENOMEM ;
 scalar_t__ ERRNO_OR_DEFAULT (int ) ;
 int ERRNO_SET (scalar_t__) ;
 scalar_t__ nvlist_error (TYPE_1__*) ;
 int nvlist_move_nvpair (TYPE_1__*,int *) ;
 int * nvpair_create_stringv (char const*,char const*,int ) ;

void
nvlist_add_stringv(nvlist_t *nvl, const char *name, const char *valuefmt,
    va_list valueap)
{
 nvpair_t *nvp;

 if (nvlist_error(nvl) != 0) {
  ERRNO_SET(nvlist_error(nvl));
  return;
 }

 nvp = nvpair_create_stringv(name, valuefmt, valueap);
 if (nvp == ((void*)0)) {
  nvl->nvl_error = ERRNO_OR_DEFAULT(ENOMEM);
  ERRNO_SET(nvl->nvl_error);
 } else {
  (void)nvlist_move_nvpair(nvl, nvp);
 }
}
