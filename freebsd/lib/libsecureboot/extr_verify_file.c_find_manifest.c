
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
typedef int buf ;


 int DEBUG_PRINTF (int,char*) ;
 char* MANIFEST_SKIP ;
 char* MANIFEST_SKIP_ALWAYS ;
 int MAXPATHLEN ;
 int VE_FINGERPRINT_NONE ;
 int free (char*) ;
 int load_manifest (char*,char*,char*,struct stat*) ;
 char** manifest_names ;
 int snprintf (char*,int,char*,char*,char const*) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* strdup (char*) ;
 int strncpy (char*,char const*,int) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int
find_manifest(const char *name)
{
 struct stat st;
 char buf[MAXPATHLEN];
 char *prefix;
 char *skip;
 const char **tp;
 int rc;

 strncpy(buf, name, MAXPATHLEN - 1);
 if (!(prefix = strrchr(buf, '/')))
  return (-1);
 *prefix = '\0';
 prefix = strdup(buf);
 rc = VE_FINGERPRINT_NONE;
 for (tp = manifest_names; *tp; tp++) {
  snprintf(buf, sizeof(buf), "%s/%s", prefix, *tp);
  DEBUG_PRINTF(5, ("looking for %s\n", buf));
  if (stat(buf, &st) == 0 && st.st_size > 0) {
    skip = ((void*)0);

   rc = load_manifest(buf, skip ? prefix : ((void*)0),
       skip, &st);
   break;
  }
 }
 free(prefix);
 return (rc);
}
