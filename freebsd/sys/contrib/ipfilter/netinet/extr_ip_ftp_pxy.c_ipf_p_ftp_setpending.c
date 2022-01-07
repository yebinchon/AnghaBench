
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ipf_state; } ;
typedef TYPE_1__ ipf_main_softc_t ;
struct TYPE_8__ {int * ftp_pendstate; int * ftp_pendnat; } ;
typedef TYPE_2__ ftpinfo_t ;


 int READ_ENTER (int *) ;
 int RWLOCK_EXIT (int *) ;
 int ipf_nat_setpending (TYPE_1__*,int *) ;
 int ipf_state_setpending (TYPE_1__*,int *) ;

void
ipf_p_ftp_setpending(ipf_main_softc_t *softc, ftpinfo_t *ftp)
{
 if (ftp->ftp_pendnat != ((void*)0))
  ipf_nat_setpending(softc, ftp->ftp_pendnat);

 if (ftp->ftp_pendstate != ((void*)0)) {
  READ_ENTER(&softc->ipf_state);
  ipf_state_setpending(softc, ftp->ftp_pendstate);
  RWLOCK_EXIT(&softc->ipf_state);
 }
}
