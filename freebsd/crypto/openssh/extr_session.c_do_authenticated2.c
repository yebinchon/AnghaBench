
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;
typedef int Authctxt ;


 int server_loop2 (struct ssh*,int *) ;

__attribute__((used)) static void
do_authenticated2(struct ssh *ssh, Authctxt *authctxt)
{
 server_loop2(ssh, authctxt);
}
