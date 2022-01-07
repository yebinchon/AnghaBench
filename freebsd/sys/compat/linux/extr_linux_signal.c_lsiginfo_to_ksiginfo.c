
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int lsi_int; int lsi_addr; int lsi_status; int lsi_uid; int lsi_pid; int lsi_code; } ;
typedef TYPE_3__ l_siginfo_t ;
struct TYPE_7__ {int sival_int; } ;
struct TYPE_8__ {TYPE_1__ si_value; } ;
struct TYPE_10__ {int ksi_signo; TYPE_2__ ksi_info; int ksi_addr; int ksi_status; int ksi_uid; int ksi_pid; int ksi_code; } ;
typedef TYPE_4__ ksiginfo_t ;


 int PTRIN (int ) ;

void
lsiginfo_to_ksiginfo(const l_siginfo_t *lsi, ksiginfo_t *ksi, int sig)
{

 ksi->ksi_signo = sig;
 ksi->ksi_code = lsi->lsi_code;
 ksi->ksi_pid = lsi->lsi_pid;
 ksi->ksi_uid = lsi->lsi_uid;
 ksi->ksi_status = lsi->lsi_status;
 ksi->ksi_addr = PTRIN(lsi->lsi_addr);
 ksi->ksi_info.si_value.sival_int = lsi->lsi_int;
}
