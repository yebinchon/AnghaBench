
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partentry {int p_qfg; int p_qfu; int p_devname; } ;
struct diskentry {scalar_t__ d_pid; int d_part; } ;


 struct partentry* TAILQ_FIRST (int *) ;
 int chkquota (int ,int ,int ) ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int perror (char*) ;

__attribute__((used)) static int
startdisk(struct diskentry *d)
{
 struct partentry *p = TAILQ_FIRST(&d->d_part);

 d->d_pid = fork();
 if (d->d_pid < 0) {
  perror("fork");
  return (8);
 }
 if (d->d_pid == 0)
  exit(chkquota(p->p_devname, p->p_qfu, p->p_qfg));
 return (0);
}
