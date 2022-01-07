
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_4__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_6__ {TYPE_2__ inter; TYPE_1__ due; int uap; int func; } ;
typedef TYPE_3__ evTimer ;
typedef int evContext_p ;


 int evPrintf (int *,int,char*,int ,int ,long,int ,long,int ) ;

__attribute__((used)) static void
print_timer(void *what, void *uap) {
 evTimer *cur = what;
 evContext_p *ctx = uap;

 cur = what;
 evPrintf(ctx, 7,
     "  func %p, uap %p, due %ld.%09ld, inter %ld.%09ld\n",
   cur->func, cur->uap,
   (long)cur->due.tv_sec, cur->due.tv_nsec,
   (long)cur->inter.tv_sec, cur->inter.tv_nsec);
}
