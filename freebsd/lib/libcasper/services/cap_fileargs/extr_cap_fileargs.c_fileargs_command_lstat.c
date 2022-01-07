
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int sb ;
typedef int nvlist_t ;


 int ENOTCAPABLE ;
 int FA_LSTAT ;
 int allcached ;
 int errno ;
 int fileargs_add_cache (int *,int const*,char const*) ;
 int fileargs_allowed (int const*,int *,int ) ;
 int * lastname ;
 int lstat (char const*,struct stat*) ;
 int nvlist_add_binary (int *,char*,struct stat*,int) ;
 int nvlist_add_string (int *,char*,char*) ;
 char* nvlist_get_string (int *,char*) ;
 scalar_t__ strcmp (char const*,int *) ;

__attribute__((used)) static int
fileargs_command_lstat(const nvlist_t *limits, nvlist_t *nvlin,
    nvlist_t *nvlout)
{
 int error;
 const char *name;
 struct stat sb;

 if (limits == ((void*)0))
  return (ENOTCAPABLE);

 if (!fileargs_allowed(limits, nvlin, FA_LSTAT))
  return (ENOTCAPABLE);

 name = nvlist_get_string(nvlin, "name");

 error = lstat(name, &sb);
 if (error < 0)
  return (errno);

 if (!allcached && (lastname == ((void*)0) ||
     strcmp(name, lastname) == 0)) {
  nvlist_add_string(nvlout, "cmd", "cache");
  fileargs_add_cache(nvlout, limits, name);
 } else {
  nvlist_add_string(nvlout, "cmd", "lstat");
 }
 nvlist_add_binary(nvlout, "stat", &sb, sizeof(sb));
 return (0);
}
