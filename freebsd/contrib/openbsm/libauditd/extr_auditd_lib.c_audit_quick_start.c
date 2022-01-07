
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int TS ;


 int ADE_ACTL ;
 int ADE_NOERR ;
 int ADE_SOFTLIM ;
 int AUE_audit_startup ;
 int TIMESTAMP_LEN ;
 scalar_t__ auditd_gen_record (int ,int *) ;
 scalar_t__ auditd_new_curlink (char*) ;
 scalar_t__ auditd_prevent_audit () ;
 int auditd_read_dirs (int *,int *) ;
 int auditd_set_dist () ;
 int auditd_set_evcmap () ;
 int auditd_set_fsize () ;
 int auditd_set_host () ;
 int auditd_set_minfree () ;
 int auditd_set_namask () ;
 int auditd_set_policy () ;
 int auditd_swap_trail (char*,char**,int ,int *) ;
 int free (char*) ;
 scalar_t__ getTSstr (int ,char*,int) ;
 int getgid () ;

int
audit_quick_start(void)
{
 int err;
 char *newfile = ((void*)0);
 time_t tt;
 char TS[TIMESTAMP_LEN + 1];
 int ret = 0;




 if (auditd_prevent_audit() != 0)
  return (-1);




 err = auditd_read_dirs(((void*)0), ((void*)0));
 if (err != ADE_NOERR && err != ADE_SOFTLIM)
  return (-1);




 (void) auditd_set_dist();




 if (getTSstr(tt, TS, sizeof(TS)) != 0)
  return (-1);
 err = auditd_swap_trail(TS, &newfile, getgid(), ((void*)0));
 if (err != ADE_NOERR && err != ADE_ACTL) {
  ret = -1;
  goto out;
 }




 if (auditd_new_curlink(newfile) != 0) {
  ret = -1;
  goto out;
 }




 if (auditd_gen_record(AUE_audit_startup, ((void*)0)) != 0) {
  ret = -1;
  goto out;
 }




 (void) auditd_set_evcmap();
 (void) auditd_set_namask();
 (void) auditd_set_policy();
 (void) auditd_set_fsize();
 (void) auditd_set_minfree();
 (void) auditd_set_host();

out:
 if (newfile != ((void*)0))
  free(newfile);

 return (ret);
}
