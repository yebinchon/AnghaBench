
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct old_qctrl TYPE_1__ ;


typedef int oq ;
typedef scalar_t__ clock_t ;
struct old_qctrl {size_t oq_hiwater; size_t oq_lowater; size_t oq_bufsz; scalar_t__ oq_delay; int oq_minfree; } ;
typedef TYPE_1__ au_qctrl_t ;


 int A_OLDSETQCTRL ;
 int A_SETQCTRL ;
 scalar_t__ EINVAL ;
 int auditon (int ,TYPE_1__*,int) ;
 scalar_t__ errno ;

int
audit_set_qctrl(au_qctrl_t *qctrl, size_t sz)
{
 int ret;

 if (sizeof(*qctrl) != sz) {
  errno = EINVAL;
  return (-1);
 }

 ret = auditon(A_SETQCTRL, qctrl, sz);
 return (ret);
}
