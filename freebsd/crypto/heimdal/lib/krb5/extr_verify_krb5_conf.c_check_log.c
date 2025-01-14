
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int severity ;
typedef int krb5_context ;
typedef int facility ;


 int find_value (char*,int ) ;
 int krb5_warnx (int ,char*,char const*,char*) ;
 int sscanf (char const*,char*,int*,char*,int*) ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int strsep_copy (char const**,char*,char*,int) ;
 int syslogvals ;

__attribute__((used)) static int
check_log(krb5_context context, const char *path, char *data)
{

    int min = 0, max = -1, n;
    char c;
    const char *p = data;

    n = sscanf(p, "%d%c%d/", &min, &c, &max);
    if(n == 2){
 if(c == '/') {
     if(min < 0){
  max = -min;
  min = 0;
     }else{
  max = min;
     }
 }
    }
    if(n){
 p = strchr(p, '/');
 if(p == ((void*)0)) {
     krb5_warnx(context, "%s: failed to parse \"%s\"", path, data);
     return 1;
 }
 p++;
    }
    if(strcmp(p, "STDERR") == 0 ||
       strcmp(p, "CONSOLE") == 0 ||
       (strncmp(p, "FILE", 4) == 0 && (p[4] == ':' || p[4] == '=')) ||
       (strncmp(p, "DEVICE", 6) == 0 && p[6] == '='))
 return 0;
    if(strncmp(p, "SYSLOG", 6) == 0){
 int ret = 0;
 char severity[128] = "";
 char facility[128] = "";
 p += 6;
 if(*p != '\0')
     p++;
 if(strsep_copy(&p, ":", severity, sizeof(severity)) != -1)
     strsep_copy(&p, ":", facility, sizeof(facility));
 if(*severity == '\0')
     strlcpy(severity, "ERR", sizeof(severity));
  if(*facility == '\0')
     strlcpy(facility, "AUTH", sizeof(facility));
 if(find_value(severity, syslogvals) == -1) {
     krb5_warnx(context, "%s: unknown syslog facility \"%s\"",
         path, facility);
     ret++;
 }
 if(find_value(severity, syslogvals) == -1) {
     krb5_warnx(context, "%s: unknown syslog severity \"%s\"",
         path, severity);
     ret++;
 }
 return ret;
    }else{
 krb5_warnx(context, "%s: unknown log type: \"%s\"", path, data);
 return 1;
    }
}
