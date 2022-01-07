
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int l_siginfo_t ;
typedef int l_int ;
struct TYPE_3__ {int ksi_info; } ;
typedef TYPE_1__ ksiginfo_t ;


 int siginfo_to_lsiginfo (int *,int *,int ) ;

void
ksiginfo_to_lsiginfo(const ksiginfo_t *ksi, l_siginfo_t *lsi, l_int sig)
{

 siginfo_to_lsiginfo(&ksi->ksi_info, lsi, sig);
}
