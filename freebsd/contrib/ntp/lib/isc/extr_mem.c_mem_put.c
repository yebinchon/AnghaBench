
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int arg; int (* memfree ) (int ,void*) ;} ;
typedef TYPE_1__ isc__mem_t ;


 int INSIST (int) ;
 int UNUSED (size_t) ;
 int memset (void*,int,size_t) ;
 int stub1 (int ,void*) ;

__attribute__((used)) static inline void
mem_put(isc__mem_t *ctx, void *mem, size_t size) {






 UNUSED(size);

 (ctx->memfree)(ctx->arg, mem);
}
