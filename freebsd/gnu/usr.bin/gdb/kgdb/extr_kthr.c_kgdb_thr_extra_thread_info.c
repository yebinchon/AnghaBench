
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int td_name ;
struct thread {int * td_name; } ;
struct proc {int * p_comm; } ;
struct kthr {int pid; scalar_t__ kaddr; scalar_t__ paddr; } ;
typedef int comm ;
typedef int buf ;


 int MAXCOMLEN ;
 struct kthr* kgdb_thr_lookup_tid (int) ;
 int kvm ;
 int kvm_read (int ,uintptr_t,char**,int) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcat (char*,char*,int) ;

char *
kgdb_thr_extra_thread_info(int tid)
{
 char comm[MAXCOMLEN + 1];
 char td_name[MAXCOMLEN + 1];
 struct kthr *kt;
 struct proc *p;
 struct thread *t;
 static char buf[64];

 kt = kgdb_thr_lookup_tid(tid);
 if (kt == ((void*)0))
  return (((void*)0));
 snprintf(buf, sizeof(buf), "PID=%d", kt->pid);
 p = (struct proc *)kt->paddr;
 if (kvm_read(kvm, (uintptr_t)&p->p_comm[0], &comm, sizeof(comm)) !=
     sizeof(comm))
  return (buf);
 strlcat(buf, ": ", sizeof(buf));
 strlcat(buf, comm, sizeof(buf));
 t = (struct thread *)kt->kaddr;
 if (kvm_read(kvm, (uintptr_t)&t->td_name[0], &td_name,
     sizeof(td_name)) == sizeof(td_name) &&
     strcmp(comm, td_name) != 0) {
  strlcat(buf, "/", sizeof(buf));
  strlcat(buf, td_name, sizeof(buf));
 }
 return (buf);
}
