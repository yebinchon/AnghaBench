
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mtime; int st_mode; } ;


 int DEBUG_PRINTF (int,char*) ;
 int S_ISREG (int ) ;
 int VEF_VERBOSE ;
 int VE_FINGERPRINT_NONE ;
 int VE_FINGERPRINT_WRONG ;
 int VE_NOT_CHECKED ;
 int VE_VERIFIED ;
 int add_verify_status (struct stat*,int) ;
 int fingerprint_info_add (char const*,char const*,char const*,char*,struct stat*) ;
 int is_verified (struct stat*) ;
 int loaded_manifests ;
 scalar_t__ stat (char const*,struct stat*) ;
 size_t strlen (char const*) ;
 int ve_utc_set (int ) ;
 scalar_t__ verify_signed (char const*,int ) ;

int
load_manifest(const char *name, const char *prefix,
    const char *skip, struct stat *stp)
{
 struct stat st;
 size_t n;
 int rc;
 char *content;

 rc = VE_FINGERPRINT_NONE;
 n = strlen(name);
 if (n > 4) {
  if (!stp) {
   stp = &st;
   if (stat(name, &st) < 0 || !S_ISREG(st.st_mode))
    return (rc);
  }
  rc = is_verified(stp);
  if (rc != VE_NOT_CHECKED) {
   return (rc);
  }

  ve_utc_set(stp->st_mtime);
  content = (char *)verify_signed(name, VEF_VERBOSE);
  if (content) {
   fingerprint_info_add(name, prefix, skip, content, stp);
   add_verify_status(stp, VE_VERIFIED);
   loaded_manifests = 1;
   DEBUG_PRINTF(3, ("loaded: %s %s %s\n",
    name, prefix, skip));
   rc = 0;
  } else {
   rc = VE_FINGERPRINT_WRONG;
   add_verify_status(stp, rc);
  }
 }
 return (rc);
}
