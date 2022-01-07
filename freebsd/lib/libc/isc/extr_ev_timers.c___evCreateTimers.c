
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heap_context ;
typedef int evContext_p ;


 int UNUSED (int const*) ;
 int due_sooner ;
 int heap_new (int ,int ,int) ;
 int set_index ;

heap_context
evCreateTimers(const evContext_p *ctx) {

 UNUSED(ctx);

 return (heap_new(due_sooner, set_index, 2048));
}
