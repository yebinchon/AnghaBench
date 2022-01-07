
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigaction {int sa_mask; int sa_handler; } ;
typedef int sigset_t ;
typedef int ill_act ;
struct TYPE_2__ {int* stfle; } ;


 int OPENSSL_s390x_facilities () ;
 TYPE_1__ OPENSSL_s390xcap_P ;
 int OPENSSL_vx_probe () ;
 int S390X_CAPBIT (int ) ;
 int S390X_VX ;
 int S390X_VXD ;
 int S390X_VXE ;
 int SIGFPE ;
 int SIGILL ;
 int SIGTRAP ;
 int SIG_SETMASK ;
 int ill_handler ;
 int ill_jmp ;
 int memset (struct sigaction*,int ,int) ;
 int sigaction (int ,struct sigaction*,struct sigaction*) ;
 int sigdelset (int *,int ) ;
 int sigfillset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 scalar_t__ sigsetjmp (int ,int) ;

void OPENSSL_cpuid_setup(void)
{
    sigset_t oset;
    struct sigaction ill_act, oact_ill, oact_fpe;

    if (OPENSSL_s390xcap_P.stfle[0])
        return;


    OPENSSL_s390xcap_P.stfle[0] |= S390X_CAPBIT(0);

    memset(&ill_act, 0, sizeof(ill_act));
    ill_act.sa_handler = ill_handler;
    sigfillset(&ill_act.sa_mask);
    sigdelset(&ill_act.sa_mask, SIGILL);
    sigdelset(&ill_act.sa_mask, SIGFPE);
    sigdelset(&ill_act.sa_mask, SIGTRAP);
    sigprocmask(SIG_SETMASK, &ill_act.sa_mask, &oset);
    sigaction(SIGILL, &ill_act, &oact_ill);
    sigaction(SIGFPE, &ill_act, &oact_fpe);


    if (sigsetjmp(ill_jmp, 1) == 0)
        OPENSSL_s390x_facilities();


    if ((OPENSSL_s390xcap_P.stfle[2] & S390X_CAPBIT(S390X_VX))
        && (sigsetjmp(ill_jmp, 1) == 0)) {
        OPENSSL_vx_probe();
    } else {
        OPENSSL_s390xcap_P.stfle[2] &= ~(S390X_CAPBIT(S390X_VX)
                                         | S390X_CAPBIT(S390X_VXD)
                                         | S390X_CAPBIT(S390X_VXE));
    }

    sigaction(SIGFPE, &oact_fpe, ((void*)0));
    sigaction(SIGILL, &oact_ill, ((void*)0));
    sigprocmask(SIG_SETMASK, &oset, ((void*)0));
}
