
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcent_state {void* buffer; } ;


 int free (void*) ;

__attribute__((used)) static void
rpcent_endstate(void *p)
{
 if (p == ((void*)0))
  return;

 free(((struct rpcent_state *)p)->buffer);
 free(p);
}
