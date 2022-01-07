
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_base {int dummy; } ;


 scalar_t__ EVRPC_UNREGISTER (struct evrpc_base*,int ) ;
 int Message ;
 int NeverReply ;
 int assert (int) ;
 int evrpc_free (struct evrpc_base*) ;

__attribute__((used)) static void
rpc_teardown(struct evrpc_base *base)
{
 assert(EVRPC_UNREGISTER(base, Message) == 0);
 assert(EVRPC_UNREGISTER(base, NeverReply) == 0);

 evrpc_free(base);
}
