
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_das_data {scalar_t__ sock; struct radius_das_data* shared_secret; } ;


 int close (scalar_t__) ;
 int eloop_unregister_read_sock (scalar_t__) ;
 int os_free (struct radius_das_data*) ;

void radius_das_deinit(struct radius_das_data *das)
{
 if (das == ((void*)0))
  return;

 if (das->sock >= 0) {
  eloop_unregister_read_sock(das->sock);
  close(das->sock);
 }

 os_free(das->shared_secret);
 os_free(das);
}
