
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int MaxRetrans; } ;



__attribute__((used)) static int eap_wsc_getTimeout(struct eap_sm *sm, void *priv)
{


 sm->MaxRetrans = 2;
 return 5;
}
