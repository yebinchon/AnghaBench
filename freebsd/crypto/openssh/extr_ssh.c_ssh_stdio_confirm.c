
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;


 int fatal (char*) ;

__attribute__((used)) static void
ssh_stdio_confirm(struct ssh *ssh, int id, int success, void *arg)
{
 if (!success)
  fatal("stdio forwarding failed");
}
