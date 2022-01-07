
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int recoveredname ;
typedef int newname ;


 int ADE_READLINK ;
 int ADE_RENAME ;
 int ADE_STRERR ;
 int ADE_SYMLINK ;
 int AUDIT_CURRENT_LINK ;
 int AUE_audit_recovery ;
 int CRASH_RECOVERY ;
 scalar_t__ ENOENT ;
 int MAXPATHLEN ;
 int NOT_TERMINATED ;
 int POSTFIX_LEN ;
 int auditd_gen_record (int ,char*) ;
 scalar_t__ auditd_rename (char*,char*) ;
 scalar_t__ errno ;
 int memcpy (char*,int ,int ) ;
 int readlink (int ,char*,int) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strlcpy (char*,char*,int) ;
 char* strstr (char*,int ) ;
 scalar_t__ symlink (char*,int ) ;
 int unlink (int ) ;

int
auditd_new_curlink(char *curfile)
{
 int len, err;
 char *ptr;
 char *path = ((void*)0);
 struct stat sb;
 char recoveredname[MAXPATHLEN];
 char newname[MAXPATHLEN];





 len = readlink(AUDIT_CURRENT_LINK, recoveredname,
     sizeof(recoveredname) - 1);
 if (len > 0) {

  recoveredname[len++] = '\0';
  if (stat(recoveredname, &sb) == 0) {

   strlcpy(newname, recoveredname, sizeof(newname));

   if ((ptr = strstr(newname, NOT_TERMINATED)) != ((void*)0)) {
    memcpy(ptr, CRASH_RECOVERY, POSTFIX_LEN);
    if (auditd_rename(recoveredname, newname) != 0)
     return (ADE_RENAME);
   } else
    return (ADE_STRERR);

   path = newname;
  }


  (void) unlink(AUDIT_CURRENT_LINK);


  err = auditd_gen_record(AUE_audit_recovery, path);
  if (err)
   return (err);
 }

 if (len < 0 && errno != ENOENT)
  return (ADE_READLINK);

 if (symlink(curfile, AUDIT_CURRENT_LINK) != 0)
  return (ADE_SYMLINK);

 return (0);
}
