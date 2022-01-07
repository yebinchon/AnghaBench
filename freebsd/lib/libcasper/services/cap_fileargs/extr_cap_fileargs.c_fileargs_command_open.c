
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int ENOTCAPABLE ;
 int FA_OPEN ;
 int allcached ;
 int errno ;
 int fileargs_add_cache (int *,int const*,char const*) ;
 int fileargs_allowed (int const*,int *,int ) ;
 int * lastname ;
 int nvlist_add_string (int *,char*,char*) ;
 char* nvlist_get_string (int *,char*) ;
 int nvlist_move_descriptor (int *,char*,int) ;
 int open_file (char const*) ;
 scalar_t__ strcmp (char const*,int *) ;

__attribute__((used)) static int
fileargs_command_open(const nvlist_t *limits, nvlist_t *nvlin,
    nvlist_t *nvlout)
{
 int fd;
 const char *name;

 if (limits == ((void*)0))
  return (ENOTCAPABLE);

 if (!fileargs_allowed(limits, nvlin, FA_OPEN))
  return (ENOTCAPABLE);

 name = nvlist_get_string(nvlin, "name");

 fd = open_file(name);
 if (fd < 0)
  return (errno);

 if (!allcached && (lastname == ((void*)0) ||
     strcmp(name, lastname) == 0)) {
  nvlist_add_string(nvlout, "cmd", "cache");
  fileargs_add_cache(nvlout, limits, name);
 } else {
  nvlist_add_string(nvlout, "cmd", "open");
 }
 nvlist_move_descriptor(nvlout, "fd", fd);
 return (0);
}
