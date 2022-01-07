
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;


 int cleanup_exit (int ) ;
 int debug (char*) ;

__attribute__((used)) static void
client_cleanup_stdio_fwd(struct ssh *ssh, int id, void *arg)
{
 debug("stdio forwarding: done");
 cleanup_exit(0);
}
