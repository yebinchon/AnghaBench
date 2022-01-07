
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int ssize_t ;
typedef int off_t ;
struct TYPE_9__ {int program; int pmfd; TYPE_1__* arch; int vmfd; } ;
typedef TYPE_2__ kvm_t ;
typedef int kvaddr_t ;
struct TYPE_8__ {int (* ka_kvatop ) (TYPE_2__*,int,int *) ;} ;


 scalar_t__ ISALIVE (TYPE_2__*) ;
 char* _PATH_MEM ;
 int _kvm_err (TYPE_2__*,int ,char*,...) ;
 int _kvm_syserr (TYPE_2__*,int ,char*) ;
 scalar_t__ errno ;
 int lseek (int ,int ,int ) ;
 int read (int ,char*,int) ;
 int stub1 (TYPE_2__*,int,int *) ;

ssize_t
kvm_read2(kvm_t *kd, kvaddr_t kva, void *buf, size_t len)
{
 int cc;
 ssize_t cr;
 off_t pa;
 char *cp;

 if (ISALIVE(kd)) {




  errno = 0;
  if (lseek(kd->vmfd, (off_t)kva, 0) == -1 && errno != 0) {
   _kvm_err(kd, 0, "invalid address (0x%jx)",
       (uintmax_t)kva);
   return (-1);
  }
  cr = read(kd->vmfd, buf, len);
  if (cr < 0) {
   _kvm_syserr(kd, 0, "kvm_read");
   return (-1);
  } else if (cr < (ssize_t)len)
   _kvm_err(kd, kd->program, "short read");
  return (cr);
 }

 cp = buf;
 while (len > 0) {
  cc = kd->arch->ka_kvatop(kd, kva, &pa);
  if (cc == 0)
   return (-1);
  if (cc > (ssize_t)len)
   cc = len;
  errno = 0;
  if (lseek(kd->pmfd, pa, 0) == -1 && errno != 0) {
   _kvm_syserr(kd, 0, _PATH_MEM);
   break;
  }
  cr = read(kd->pmfd, cp, cc);
  if (cr < 0) {
   _kvm_syserr(kd, kd->program, "kvm_read");
   break;
  }





  if (cr == 0)
   break;
  cp += cr;
  kva += cr;
  len -= cr;
 }

 return (cp - (char *)buf);
}
