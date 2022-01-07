
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sim_db_data {int sock; int * local_sock; } ;


 int close (int) ;
 int eloop_unregister_read_sock (int) ;
 int os_free (int *) ;
 int unlink (int *) ;

__attribute__((used)) static void eap_sim_db_close_socket(struct eap_sim_db_data *data)
{
 if (data->sock >= 0) {
  eloop_unregister_read_sock(data->sock);
  close(data->sock);
  data->sock = -1;
 }
 if (data->local_sock) {
  unlink(data->local_sock);
  os_free(data->local_sock);
  data->local_sock = ((void*)0);
 }
}
