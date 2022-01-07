
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ssh {int dummy; } ;
typedef int Session ;


 scalar_t__ do_exec (struct ssh*,int *,char*) ;
 int free (char*) ;
 int packet_check_eom () ;
 char* packet_get_string (int*) ;

__attribute__((used)) static int
session_exec_req(struct ssh *ssh, Session *s)
{
 u_int len, success;

 char *command = packet_get_string(&len);
 packet_check_eom();
 success = do_exec(ssh, s, command) == 0;
 free(command);
 return success;
}
