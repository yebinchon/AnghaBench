
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int new ;
typedef scalar_t__ isc_result_t ;
typedef int isc_logchannel_t ;
typedef int current ;


 char* FILE_NAME (int *) ;
 int FILE_VERSIONS (int *) ;
 int ISC_LOG_ROLLINFINITE ;
 int ISC_LOG_ROLLNEVER ;
 scalar_t__ ISC_R_FILENOTFOUND ;
 scalar_t__ ISC_R_NOSPACE ;
 scalar_t__ ISC_R_SUCCESS ;
 int LOG_ERR ;
 int PATH_MAX ;
 scalar_t__ greatest_version (int *,int*) ;
 scalar_t__ isc_file_remove (char const*) ;
 scalar_t__ isc_file_rename (char const*,char*) ;
 int isc_result_totext (scalar_t__) ;
 int snprintf (char*,int,char*,char const*,...) ;
 int syslog (int ,char*,char const*,...) ;

__attribute__((used)) static isc_result_t
roll_log(isc_logchannel_t *channel) {
 int i, n, greatest;
 char current[PATH_MAX + 1];
 char new[PATH_MAX + 1];
 const char *path;
 isc_result_t result;






 if (FILE_VERSIONS(channel) == ISC_LOG_ROLLNEVER)
  return (ISC_R_SUCCESS);

 path = FILE_NAME(channel);







 result = greatest_version(channel, &greatest);
 if (result != ISC_R_SUCCESS)
  return (result);
 if (FILE_VERSIONS(channel) == ISC_LOG_ROLLINFINITE ||
     FILE_VERSIONS(channel) > greatest)
  ;
 else





  while (--greatest >= FILE_VERSIONS(channel)) {
   n = snprintf(current, sizeof(current), "%s.%d",
         path, greatest);
   if (n >= (int)sizeof(current) || n < 0)
    result = ISC_R_NOSPACE;
   else
    result = isc_file_remove(current);
   if (result != ISC_R_SUCCESS &&
       result != ISC_R_FILENOTFOUND)
    syslog(LOG_ERR,
           "unable to remove log file '%s.%d': %s",
           path, greatest,
           isc_result_totext(result));
  }

 for (i = greatest; i > 0; i--) {
  result = ISC_R_SUCCESS;
  n = snprintf(current, sizeof(current), "%s.%d", path, i - 1);
  if (n >= (int)sizeof(current) || n < 0)
   result = ISC_R_NOSPACE;
  if (result == ISC_R_SUCCESS) {
   n = snprintf(new, sizeof(new), "%s.%d", path, i);
   if (n >= (int)sizeof(new) || n < 0)
    result = ISC_R_NOSPACE;
  }
  if (result == ISC_R_SUCCESS)
   result = isc_file_rename(current, new);
  if (result != ISC_R_SUCCESS &&
      result != ISC_R_FILENOTFOUND)
   syslog(LOG_ERR,
          "unable to rename log file '%s.%d' to "
          "'%s.%d': %s", path, i - 1, path, i,
          isc_result_totext(result));
 }

 if (FILE_VERSIONS(channel) != 0) {
  n = snprintf(new, sizeof(new), "%s.0", path);
  if (n >= (int)sizeof(new) || n < 0)
   result = ISC_R_NOSPACE;
  else
   result = isc_file_rename(path, new);
  if (result != ISC_R_SUCCESS &&
      result != ISC_R_FILENOTFOUND)
   syslog(LOG_ERR,
          "unable to rename log file '%s' to '%s.0': %s",
          path, path, isc_result_totext(result));
 } else {
  result = isc_file_remove(path);
  if (result != ISC_R_SUCCESS &&
      result != ISC_R_FILENOTFOUND)
   syslog(LOG_ERR, "unable to remove log file '%s': %s",
          path, isc_result_totext(result));
 }

 return (ISC_R_SUCCESS);
}
