
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int oldname ;
typedef int newname ;
typedef int TS ;


 int AUC_DISABLED ;
 int AUC_NOAUDIT ;
 int AUDIT_CURRENT_LINK ;
 int AUE_audit_shutdown ;
 int MAXPATHLEN ;
 int NOT_TERMINATED ;
 int POSTFIX_LEN ;
 int TIMESTAMP_LEN ;
 int __BSM_INTERNAL_NOTIFY_KEY ;
 scalar_t__ audit_get_cond (int*) ;
 scalar_t__ audit_set_cond (int*) ;
 int auditd_gen_record (int ,int *) ;
 scalar_t__ auditd_rename (char*,char*) ;
 scalar_t__ getTSstr (int ,char*,int) ;
 int memcpy (char*,char*,int ) ;
 int notify_post (int ) ;
 int readlink (int ,char*,int) ;
 int strlcpy (char*,char*,int) ;
 char* strstr (char*,int ) ;
 int unlink (int ) ;

int
audit_quick_stop(void)
{
 int len;
 int cond;
 char *ptr;
 time_t tt;
 char oldname[MAXPATHLEN];
 char newname[MAXPATHLEN];
 char TS[TIMESTAMP_LEN + 1];




 if (audit_get_cond(&cond) != 0)
  return (-1);
 if (cond == AUC_NOAUDIT)
  return (0);




 (void) auditd_gen_record(AUE_audit_shutdown, ((void*)0));




 cond = AUC_DISABLED;
 if (audit_set_cond(&cond) != 0)
  return (-1);







 len = readlink(AUDIT_CURRENT_LINK, oldname, sizeof(oldname) - 1);
 if (len < 0)
  return (-1);
 oldname[len++] = '\0';

 if (getTSstr(tt, TS, sizeof(TS)) != 0)
  return (-1);

 strlcpy(newname, oldname, sizeof(newname));

 if ((ptr = strstr(newname, NOT_TERMINATED)) != ((void*)0)) {
  memcpy(ptr, TS, POSTFIX_LEN);
  if (auditd_rename(oldname, newname) != 0)
   return (-1);
 } else
  return (-1);

 (void) unlink(AUDIT_CURRENT_LINK);

 return (0);
}
