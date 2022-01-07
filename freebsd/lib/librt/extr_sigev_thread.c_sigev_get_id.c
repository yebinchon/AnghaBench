
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sival_ptr; } ;
struct TYPE_5__ {int si_code; int si_timerid; int si_mqd; TYPE_1__ si_value; } ;
typedef TYPE_2__ siginfo_t ;
typedef int sigev_id_t ;






__attribute__((used)) static sigev_id_t
sigev_get_id(siginfo_t *si)
{
 switch(si->si_code) {
 case 128:
  return (si->si_timerid);
 case 129:
  return (si->si_mqd);
 case 130:
  return (sigev_id_t)si->si_value.sival_ptr;
 }
 return (-1);
}
