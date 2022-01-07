
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_client_data {int acct_sock; int acct_serv_sock; int acct_serv_sock6; } ;


 int close (int) ;
 int eloop_unregister_read_sock (int) ;

__attribute__((used)) static void radius_close_acct_sockets(struct radius_client_data *radius)
{
 radius->acct_sock = -1;

 if (radius->acct_serv_sock >= 0) {
  eloop_unregister_read_sock(radius->acct_serv_sock);
  close(radius->acct_serv_sock);
  radius->acct_serv_sock = -1;
 }







}
