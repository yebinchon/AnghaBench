
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAM_SUCCESS ;
 int pam_chauthtok (int ,int) ;
 int pamh ;
 int pt_error (int,char*) ;
 int pt_verbose (char*) ;
 int silent ;

__attribute__((used)) static int
pt_chauthtok(int flags)
{
 int pame;

 flags |= silent;
 pt_verbose("pam_chauthtok()");
 if ((pame = pam_chauthtok(pamh, flags)) != PAM_SUCCESS)
  pt_error(pame, "pam_chauthtok()");
 return (pame);
}
