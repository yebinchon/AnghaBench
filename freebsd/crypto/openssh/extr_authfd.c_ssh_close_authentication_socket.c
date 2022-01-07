
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SSH_AUTHSOCKET_ENV_NAME ;
 int close (int) ;
 scalar_t__ getenv (int ) ;

void
ssh_close_authentication_socket(int sock)
{
 if (getenv(SSH_AUTHSOCKET_ENV_NAME))
  close(sock);
}
