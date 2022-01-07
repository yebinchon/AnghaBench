
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int use_pam; } ;
typedef int Authctxt ;


 int fatal (char*) ;
 TYPE_1__ options ;
 int sshpam_init (int *) ;

void
start_pam(Authctxt *authctxt)
{
 if (!options.use_pam)
  fatal("PAM: initialisation requested when UsePAM=no");

 if (sshpam_init(authctxt) == -1)
  fatal("PAM: initialisation failed");
}
