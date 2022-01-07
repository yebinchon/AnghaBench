
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int EINVAL ;
 int slog_closelog (int const*,int *,int *) ;
 int slog_openlog (int const*,int *,int *) ;
 int slog_setlogmask (int const*,int *,int *) ;
 int slog_vsyslog (int const*,int *,int *) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
syslog_command(const char *cmd, const nvlist_t *limits, nvlist_t *nvlin,
    nvlist_t *nvlout)
{

 if (strcmp(cmd, "vsyslog") == 0) {
  slog_vsyslog(limits, nvlin, nvlout);
 } else if (strcmp(cmd, "openlog") == 0) {
  slog_openlog(limits, nvlin, nvlout);
 } else if (strcmp(cmd, "closelog") == 0) {
  slog_closelog(limits, nvlin, nvlout);
 } else if (strcmp(cmd, "setlogmask") == 0) {
  slog_setlogmask(limits, nvlin, nvlout);
 } else {
  return (EINVAL);
 }

 return (0);
}
