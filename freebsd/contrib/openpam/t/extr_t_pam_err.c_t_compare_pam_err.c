
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAM_NUM_ERRORS ;
 int* pam_err_name ;
 int t_printv (char*,int) ;

int
t_compare_pam_err(int expected, int received)
{

 if (expected == received)
  return (1);
 if (expected >= 0 && expected < PAM_NUM_ERRORS)
  t_printv("expected %s, ", pam_err_name[expected]);
 else
  t_printv("expected %d, ", expected);
 if (received >= 0 && received < PAM_NUM_ERRORS)
  t_printv("received %s\n", pam_err_name[received]);
 else
  t_printv("received %d\n", received);
 return (0);
}
