
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvlist_t ;
typedef scalar_t__ mode_t ;
typedef int cap_rights_t ;


 int ENAMETOOLONG ;
 scalar_t__ MAXPATHLEN ;
 int NV_FLAG_NO_UNIQUE ;
 int O_CREAT ;
 int errno ;
 int nvlist_add_binary (int *,char*,int *,int) ;
 int nvlist_add_null (int *,char const* const) ;
 int nvlist_add_number (int *,char*,int) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int *) ;
 scalar_t__ strlen (char const* const) ;

__attribute__((used)) static nvlist_t *
fileargs_create_limit(int argc, const char * const *argv, int flags,
    mode_t mode, cap_rights_t *rightsp, int operations)
{
 nvlist_t *limits;
 int i;

 limits = nvlist_create(NV_FLAG_NO_UNIQUE);
 if (limits == ((void*)0))
  return (((void*)0));

 nvlist_add_number(limits, "flags", flags);
 nvlist_add_number(limits, "operations", operations);
 if (rightsp != ((void*)0)) {
  nvlist_add_binary(limits, "cap_rights", rightsp,
      sizeof(*rightsp));
 }
 if ((flags & O_CREAT) != 0)
  nvlist_add_number(limits, "mode", (uint64_t)mode);

 for (i = 0; i < argc; i++) {
  if (strlen(argv[i]) >= MAXPATHLEN) {
   nvlist_destroy(limits);
   errno = ENAMETOOLONG;
   return (((void*)0));
  }
  nvlist_add_null(limits, argv[i]);
 }

 return (limits);
}
