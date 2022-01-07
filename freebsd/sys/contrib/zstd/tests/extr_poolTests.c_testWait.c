
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {int dummy; } ;
typedef int POOL_ctx ;


 int ASSERT_TRUE (int * const) ;
 int POOL_add (int * const,int *,struct data*) ;
 int * POOL_create (size_t,size_t) ;
 int POOL_free (int * const) ;
 int waitFn ;

__attribute__((used)) static int testWait(size_t numThreads, size_t queueSize) {
  struct data data;
  POOL_ctx* const ctx = POOL_create(numThreads, queueSize);
  ASSERT_TRUE(ctx);
  { size_t i;
    for (i = 0; i < 16; ++i) {
        POOL_add(ctx, &waitFn, &data);
    }
  }
  POOL_free(ctx);
  return 0;
}
