
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pam_response {int dummy; } ;
struct pam_message {int dummy; } ;


 int ENTER () ;
 int PAM_CONV_ERR ;
 int RETURNC (int ) ;

int
openpam_nullconv(int n,
  const struct pam_message **msg,
  struct pam_response **resp,
  void *data)
{

 ENTER();
 (void)n;
 (void)msg;
 (void)resp;
 (void)data;
 RETURNC(PAM_CONV_ERR);
}
