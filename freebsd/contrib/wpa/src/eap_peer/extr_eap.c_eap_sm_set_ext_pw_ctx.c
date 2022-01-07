
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext_password_data {int dummy; } ;
struct eap_sm {struct ext_password_data* ext_pw; int * ext_pw_buf; } ;


 int ext_password_free (int *) ;

void eap_sm_set_ext_pw_ctx(struct eap_sm *sm, struct ext_password_data *ext)
{
 ext_password_free(sm->ext_pw_buf);
 sm->ext_pw_buf = ((void*)0);
 sm->ext_pw = ext;
}
