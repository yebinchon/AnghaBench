
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint_t ;
typedef int provname ;
struct TYPE_12__ {int * p_ucred; int p_dtrace_probes; } ;
typedef TYPE_1__ proc_t ;
typedef scalar_t__ pid_t ;
struct TYPE_13__ {scalar_t__ ftp_pid; int ftp_mtx; struct TYPE_13__* ftp_next; int ftp_provid; int ftp_name; int ftp_retired; int * ftp_proc; int ftp_cmtx; } ;
typedef TYPE_2__ fasttrap_provider_t ;
struct TYPE_14__ {int ftb_mtx; TYPE_2__* ftb_data; } ;
typedef TYPE_3__ fasttrap_bucket_t ;
typedef int dtrace_pattr_t ;
typedef int cred_t ;
struct TYPE_15__ {TYPE_3__* fth_table; } ;


 int ASSERT (int) ;
 int DTRACE_PRIV_OWNER ;
 int DTRACE_PRIV_PROC ;
 int DTRACE_PRIV_ZONEOWNER ;
 int DTRACE_PROVNAMELEN ;
 size_t FASTTRAP_PROVS_INDEX (scalar_t__,char const*) ;
 int KM_SLEEP ;
 int MA_OWNED ;
 int MUTEX_DEFAULT ;
 int PROC_LOCK_ASSERT (TYPE_1__*,int ) ;
 int PROC_UNLOCK (TYPE_1__*) ;
 int crfree (int *) ;
 int crhold (int *) ;
 scalar_t__ dtrace_register (char*,int const*,int,int *,int *,TYPE_2__*,int *) ;
 int * fasttrap_proc_lookup (scalar_t__) ;
 int fasttrap_provider_free (TYPE_2__*) ;
 TYPE_6__ fasttrap_provs ;
 TYPE_2__* kmem_zalloc (int,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int mutex_init (int *,char*,int ,int *) ;
 TYPE_1__* pfind (scalar_t__) ;
 int const pid_attr ;
 int pid_pops ;
 int snprintf (char*,int,char*,char const*,int ) ;
 scalar_t__ strcmp (int ,char const*) ;
 int strcpy (int ,char const*) ;
 int strlen (char const*) ;
 int usdt_pops ;

__attribute__((used)) static fasttrap_provider_t *
fasttrap_provider_lookup(pid_t pid, const char *name,
    const dtrace_pattr_t *pattr)
{
 fasttrap_provider_t *fp, *new_fp = ((void*)0);
 fasttrap_bucket_t *bucket;
 char provname[DTRACE_PROVNAMELEN];
 proc_t *p;
 cred_t *cred;

 ASSERT(strlen(name) < sizeof (fp->ftp_name));
 ASSERT(pattr != ((void*)0));

 bucket = &fasttrap_provs.fth_table[FASTTRAP_PROVS_INDEX(pid, name)];
 mutex_enter(&bucket->ftb_mtx);




 for (fp = bucket->ftb_data; fp != ((void*)0); fp = fp->ftp_next) {
  if (fp->ftp_pid == pid && strcmp(fp->ftp_name, name) == 0 &&
      !fp->ftp_retired) {
   mutex_enter(&fp->ftp_mtx);
   mutex_exit(&bucket->ftb_mtx);
   return (fp);
  }
 }





 mutex_exit(&bucket->ftb_mtx);





 if ((p = pfind(pid)) == ((void*)0))
  return (((void*)0));






 p->p_dtrace_probes++;





 PROC_LOCK_ASSERT(p, MA_OWNED);
 crhold(p->p_ucred);
 cred = p->p_ucred;
 PROC_UNLOCK(p);

 new_fp = kmem_zalloc(sizeof (fasttrap_provider_t), KM_SLEEP);
 new_fp->ftp_pid = pid;
 new_fp->ftp_proc = fasttrap_proc_lookup(pid);

 mutex_init(&new_fp->ftp_mtx, "provider mtx", MUTEX_DEFAULT, ((void*)0));
 mutex_init(&new_fp->ftp_cmtx, "lock on creating", MUTEX_DEFAULT, ((void*)0));


 ASSERT(new_fp->ftp_proc != ((void*)0));

 mutex_enter(&bucket->ftb_mtx);





 for (fp = bucket->ftb_data; fp != ((void*)0); fp = fp->ftp_next) {
  if (fp->ftp_pid == pid && strcmp(fp->ftp_name, name) == 0 &&
      !fp->ftp_retired) {
   mutex_enter(&fp->ftp_mtx);
   mutex_exit(&bucket->ftb_mtx);
   fasttrap_provider_free(new_fp);
   crfree(cred);
   return (fp);
  }
 }

 (void) strcpy(new_fp->ftp_name, name);
 if (snprintf(provname, sizeof (provname), "%s%u", name, (uint_t)pid) >=
     sizeof (provname) ||
     dtrace_register(provname, pattr,
     DTRACE_PRIV_PROC | DTRACE_PRIV_OWNER | DTRACE_PRIV_ZONEOWNER, cred,
     pattr == &pid_attr ? &pid_pops : &usdt_pops, new_fp,
     &new_fp->ftp_provid) != 0) {
  mutex_exit(&bucket->ftb_mtx);
  fasttrap_provider_free(new_fp);
  crfree(cred);
  return (((void*)0));
 }

 new_fp->ftp_next = bucket->ftb_data;
 bucket->ftb_data = new_fp;

 mutex_enter(&new_fp->ftp_mtx);
 mutex_exit(&bucket->ftb_mtx);

 crfree(cred);
 return (new_fp);
}
