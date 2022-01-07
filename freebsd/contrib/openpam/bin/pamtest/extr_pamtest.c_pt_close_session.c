
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAM_SUCCESS ;
 int pam_close_session (int ,int) ;
 int pamh ;
 int pt_error (int,char*) ;
 int pt_verbose (char*) ;
 int silent ;

__attribute__((used)) static int
pt_close_session(int flags)
{
 int pame;

 flags |= silent;
 pt_verbose("pam_close_session()");
 if ((pame = pam_close_session(pamh, flags)) != PAM_SUCCESS)
  pt_error(pame, "pam_close_session()");
 return (pame);
}
