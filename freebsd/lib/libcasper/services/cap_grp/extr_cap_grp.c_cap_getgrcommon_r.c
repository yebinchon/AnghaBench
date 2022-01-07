
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct group {int dummy; } ;
typedef int nvlist_t ;
typedef scalar_t__ gid_t ;
typedef int cap_channel_t ;


 int ERANGE ;
 int abort () ;
 int assert (int) ;
 int * cap_xfer_nvlist (int *,int *) ;
 scalar_t__ errno ;
 char* gbuffer ;
 size_t gbufsize ;
 int group_resize () ;
 int group_unpack (int *,struct group*,char*,size_t) ;
 int nvlist_add_number (int *,char*,int ) ;
 int nvlist_add_string (int *,char*,char const*) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int *) ;
 int nvlist_exists_string (int *,char*) ;
 scalar_t__ nvlist_get_number (int *,char*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
cap_getgrcommon_r(cap_channel_t *chan, const char *cmd, const char *name,
    gid_t gid, struct group *grp, char *buffer, size_t bufsize,
    struct group **result)
{
 nvlist_t *nvl;
 bool getgr_r;
 int error;

 nvl = nvlist_create(0);
 nvlist_add_string(nvl, "cmd", cmd);
 if (strcmp(cmd, "getgrent") == 0 || strcmp(cmd, "getgrent_r") == 0) {

 } else if (strcmp(cmd, "getgrnam") == 0 ||
     strcmp(cmd, "getgrnam_r") == 0) {
  nvlist_add_string(nvl, "name", name);
 } else if (strcmp(cmd, "getgrgid") == 0 ||
     strcmp(cmd, "getgrgid_r") == 0) {
  nvlist_add_number(nvl, "gid", (uint64_t)gid);
 } else {
  abort();
 }
 nvl = cap_xfer_nvlist(chan, nvl);
 if (nvl == ((void*)0)) {
  assert(errno != 0);
  *result = ((void*)0);
  return (errno);
 }
 error = (int)nvlist_get_number(nvl, "error");
 if (error != 0) {
  nvlist_destroy(nvl);
  *result = ((void*)0);
  return (error);
 }

 if (!nvlist_exists_string(nvl, "gr_name")) {

  nvlist_destroy(nvl);
  *result = ((void*)0);
  return (0);
 }

 getgr_r = (strcmp(cmd, "getgrent_r") == 0 ||
     strcmp(cmd, "getgrnam_r") == 0 || strcmp(cmd, "getgrgid_r") == 0);

 for (;;) {
  error = group_unpack(nvl, grp, buffer, bufsize);
  if (getgr_r || error != ERANGE)
   break;
  assert(buffer == gbuffer);
  assert(bufsize == gbufsize);
  error = group_resize();
  if (error != 0)
   break;

  buffer = gbuffer;
  bufsize = gbufsize;
 }

 nvlist_destroy(nvl);

 if (error == 0)
  *result = grp;
 else
  *result = ((void*)0);

 return (error);
}
