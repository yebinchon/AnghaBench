
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;
typedef int Channel ;


 int free (void*) ;

__attribute__((used)) static void
client_abandon_status_confirm(struct ssh *ssh, Channel *c, void *ctx)
{
 free(ctx);
}
