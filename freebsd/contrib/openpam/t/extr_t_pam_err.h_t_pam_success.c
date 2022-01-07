
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAM_SUCCESS ;
 int t_compare_pam_err (int ,int) ;

__attribute__((used)) static inline int
t_pam_success(int received)
{

 return t_compare_pam_err(PAM_SUCCESS, received);
}
