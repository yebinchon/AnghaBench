
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;


 int free (void*) ;

void
client_filter_cleanup(struct ssh *ssh, int cid, void *ctx)
{
 free(ctx);
}
