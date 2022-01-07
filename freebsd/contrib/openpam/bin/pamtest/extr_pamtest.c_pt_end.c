
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAM_SUCCESS ;
 int pam_end (int *,int) ;
 int * pamh ;
 int pt_error (int,char*) ;

__attribute__((used)) static int
pt_end(int pame)
{

 if (pamh != ((void*)0) && (pame = pam_end(pamh, pame)) != PAM_SUCCESS)

  pt_error(pame, "pam_end()");
 return (pame);
}
