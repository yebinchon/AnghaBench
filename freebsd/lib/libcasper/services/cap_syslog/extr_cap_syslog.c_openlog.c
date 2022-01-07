
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int cap_channel_t ;


 int LOG_PERROR ;
 int STDERR_FILENO ;
 int * cap_xfer_nvlist (int *,int *) ;
 int nvlist_add_descriptor (int *,char*,int ) ;
 int nvlist_add_number (int *,char*,int) ;
 int nvlist_add_string (int *,char*,char const*) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int *) ;

void
cap_openlog(cap_channel_t *chan, const char *ident, int logopt, int facility)
{
 nvlist_t *nvl;

 nvl = nvlist_create(0);
 nvlist_add_string(nvl, "cmd", "openlog");
 if (ident != ((void*)0)) {
  nvlist_add_string(nvl, "ident", ident);
 }
 nvlist_add_number(nvl, "logopt", logopt);
 nvlist_add_number(nvl, "facility", facility);
 if (logopt & LOG_PERROR) {
  nvlist_add_descriptor(nvl, "stderr", STDERR_FILENO);
 }
 nvl = cap_xfer_nvlist(chan, nvl);
 if (nvl == ((void*)0)) {
  return;
 }
 nvlist_destroy(nvl);
}
