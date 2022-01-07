
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int nvlist_t ;
typedef int message ;
typedef int cap_channel_t ;


 int CAP_SYSLOG_LIMIT ;
 int * cap_xfer_nvlist (int *,int *) ;
 int nvlist_add_number (int *,char*,int) ;
 int nvlist_add_string (int *,char*,char*) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int *) ;
 int vsnprintf (char*,int,char const*,int ) ;

void
cap_vsyslog(cap_channel_t *chan, int priority, const char *fmt, va_list ap)
{
 nvlist_t *nvl;
 char message[CAP_SYSLOG_LIMIT];

 (void)vsnprintf(message, sizeof(message), fmt, ap);

 nvl = nvlist_create(0);
 nvlist_add_string(nvl, "cmd", "vsyslog");
 nvlist_add_number(nvl, "priority", priority);
 nvlist_add_string(nvl, "message", message);
 nvl = cap_xfer_nvlist(chan, nvl);
 if (nvl == ((void*)0)) {
  return;
 }
 nvlist_destroy(nvl);
}
