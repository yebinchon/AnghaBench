
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * conv; } ;


 int PAM_SUCCESS ;
 int openpam_ttyconv ;
 int pam_start (char const*,char const*,TYPE_1__*,int *) ;
 TYPE_1__ pamc ;
 int pamh ;
 int pt_error (int,char*,char const*) ;
 int pt_verbose (char*,char const*,char const*) ;

__attribute__((used)) static int
pt_start(const char *service, const char *user)
{
 int pame;

 pamc.conv = &openpam_ttyconv;
 pt_verbose("pam_start(%s, %s)", service, user);
 if ((pame = pam_start(service, user, &pamc, &pamh)) != PAM_SUCCESS)
  pt_error(pame, "pam_start(%s)", service);
 return (pame);
}
