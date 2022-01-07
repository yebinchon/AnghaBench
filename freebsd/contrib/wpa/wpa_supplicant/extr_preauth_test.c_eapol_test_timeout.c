
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct preauth_test_data {int auth_timed_out; } ;


 int eloop_terminate () ;
 int printf (char*) ;

__attribute__((used)) static void eapol_test_timeout(void *eloop_ctx, void *timeout_ctx)
{
 struct preauth_test_data *p = eloop_ctx;
 printf("EAPOL test timed out\n");
 p->auth_timed_out = 1;
 eloop_terminate();
}
