
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;


 int os_free (void*) ;

__attribute__((used)) static void eap_leap_deinit(struct eap_sm *sm, void *priv)
{
 os_free(priv);
}
