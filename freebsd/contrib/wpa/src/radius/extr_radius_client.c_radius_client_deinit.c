
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_client_data {struct radius_client_data* acct_handlers; struct radius_client_data* auth_handlers; } ;


 int eloop_cancel_timeout (int ,struct radius_client_data*,int *) ;
 int os_free (struct radius_client_data*) ;
 int radius_client_flush (struct radius_client_data*,int ) ;
 int radius_close_acct_sockets (struct radius_client_data*) ;
 int radius_close_auth_sockets (struct radius_client_data*) ;
 int radius_retry_primary_timer ;

void radius_client_deinit(struct radius_client_data *radius)
{
 if (!radius)
  return;

 radius_close_auth_sockets(radius);
 radius_close_acct_sockets(radius);

 eloop_cancel_timeout(radius_retry_primary_timer, radius, ((void*)0));

 radius_client_flush(radius, 0);
 os_free(radius->auth_handlers);
 os_free(radius->acct_handlers);
 os_free(radius);
}
