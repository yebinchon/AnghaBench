
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int nvpair_t ;
struct TYPE_5__ {scalar_t__ nvl_error; } ;
typedef TYPE_1__ nvlist_t ;


 int ENOMEM ;
 scalar_t__ ERRNO_OR_DEFAULT (int ) ;
 int ERRNO_SET (scalar_t__) ;
 int close (int) ;
 scalar_t__ nvlist_error (TYPE_1__*) ;
 int nvlist_move_nvpair (TYPE_1__*,int *) ;
 int * nvpair_move_descriptor (char const*,int) ;

void
nvlist_move_descriptor(nvlist_t *nvl, const char *name, int value)
{
 nvpair_t *nvp;

 if (nvlist_error(nvl) != 0) {
  close(value);
  ERRNO_SET(nvlist_error(nvl));
  return;
 }

 nvp = nvpair_move_descriptor(name, value);
 if (nvp == ((void*)0)) {
  nvl->nvl_error = ERRNO_OR_DEFAULT(ENOMEM);
  ERRNO_SET(nvl->nvl_error);
 } else {
  (void)nvlist_move_nvpair(nvl, nvp);
 }
}
