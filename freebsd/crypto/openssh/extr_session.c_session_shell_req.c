
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;
typedef int Session ;


 scalar_t__ do_exec (struct ssh*,int *,int *) ;
 int packet_check_eom () ;

__attribute__((used)) static int
session_shell_req(struct ssh *ssh, Session *s)
{
 packet_check_eom();
 return do_exec(ssh, s, ((void*)0)) == 0;
}
