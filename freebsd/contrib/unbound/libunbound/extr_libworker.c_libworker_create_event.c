
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_event_base {int dummy; } ;
struct ub_ctx {int dummy; } ;
struct libworker {int dummy; } ;


 struct libworker* libworker_setup (struct ub_ctx*,int ,struct ub_event_base*) ;

struct libworker* libworker_create_event(struct ub_ctx* ctx,
 struct ub_event_base* eb)
{
 return libworker_setup(ctx, 0, eb);
}
