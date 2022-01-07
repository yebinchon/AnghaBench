
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suffix ;
struct stat {int st_mode; } ;


 char* DBM_SUFFIX ;
 int DEBUG (int,char*) ;
 int R_OK ;
 scalar_t__ S_ISDIR (int ) ;
 int S_ISREG (int ) ;
 int W_OK ;
 int X_OK ;
 int _nc_STRCAT (char*,char*,size_t) ;
 int _nc_STRCPY (char*,char const*,size_t) ;
 unsigned int _nc_pathlast (char*) ;
 scalar_t__ access (char*,int) ;
 int failed (char*) ;
 int free (char*) ;
 char* malloc (size_t) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
valid_db_path(const char *nominal)
{
    struct stat sb;
    char *result = strdup(nominal);


    DEBUG(1, ("** stat(%s)", result));
    if (stat(result, &sb) >= 0) {
 if (!S_ISDIR(sb.st_mode)
     || access(result, R_OK | W_OK | X_OK) != 0) {
     DEBUG(1, ("...not a writable directory"));
     free(result);
     result = 0;
 }

    } else {

 unsigned leaf = _nc_pathlast(result);

 DEBUG(1, ("...not found"));
 if (leaf) {
     char save = result[leaf];
     result[leaf] = 0;
     if (stat(result, &sb) >= 0
  && S_ISDIR(sb.st_mode)
  && access(result, R_OK | W_OK | X_OK) == 0) {
  result[leaf] = save;
     } else {
  DEBUG(1, ("...parent directory %s is not writable", result));
  free(result);
  result = 0;
     }
 } else {
     DEBUG(1, ("... no parent directory"));
     free(result);
     result = 0;
 }
    }
    return result;
}
