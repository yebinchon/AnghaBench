
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;


 size_t net_write (int,char const*,size_t) ;
 int strlen (char const*) ;
 int warn (char*) ;

__attribute__((used)) static int
send_broken_auth(int s,
   struct sockaddr *thisaddr,
   struct sockaddr *thataddr,
   const char *hostname,
   const char *remote_user,
   const char *local_user,
   size_t cmd_len,
   const char *cmd)
{
    size_t len;

    len = strlen(local_user) + 1;
    if (net_write (s, local_user, len) != len) {
 warn ("write");
 return 1;
    }
    len = strlen(remote_user) + 1;
    if (net_write (s, remote_user, len) != len) {
 warn ("write");
 return 1;
    }
    if (net_write (s, cmd, cmd_len) != cmd_len) {
 warn ("write");
 return 1;
    }
    return 0;
}
