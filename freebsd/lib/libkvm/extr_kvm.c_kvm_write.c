
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_long ;
typedef int ssize_t ;
typedef int off_t ;
struct TYPE_9__ {int program; int pmfd; TYPE_1__* arch; int vmfd; int writable; } ;
typedef TYPE_2__ kvm_t ;
struct TYPE_8__ {int (* ka_kvatop ) (TYPE_2__*,int,int *) ;} ;


 scalar_t__ ISALIVE (TYPE_2__*) ;
 char* _PATH_MEM ;
 int _kvm_err (TYPE_2__*,int ,char*,...) ;
 int _kvm_syserr (TYPE_2__*,int ,char*) ;
 scalar_t__ errno ;
 int lseek (int ,int ,int ) ;
 int stub1 (TYPE_2__*,int,int *) ;
 int write (int ,char const*,int) ;

ssize_t
kvm_write(kvm_t *kd, u_long kva, const void *buf, size_t len)
{
 int cc;
 ssize_t cw;
 off_t pa;
 const char *cp;

 if (!ISALIVE(kd) && !kd->writable) {
  _kvm_err(kd, kd->program,
      "kvm_write not implemented for dead kernels");
  return (-1);
 }

 if (ISALIVE(kd)) {



  errno = 0;
  if (lseek(kd->vmfd, (off_t)kva, 0) == -1 && errno != 0) {
   _kvm_err(kd, 0, "invalid address (%lx)", kva);
   return (-1);
  }
  cc = write(kd->vmfd, buf, len);
  if (cc < 0) {
   _kvm_syserr(kd, 0, "kvm_write");
   return (-1);
  } else if ((size_t)cc < len)
   _kvm_err(kd, kd->program, "short write");
  return (cc);
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
  cw = write(kd->pmfd, cp, cc);
  if (cw < 0) {
   _kvm_syserr(kd, kd->program, "kvm_write");
   break;
  }





  if (cw == 0)
   break;
  cp += cw;
  kva += cw;
  len -= cw;
 }

 return (cp - (const char *)buf);
}
