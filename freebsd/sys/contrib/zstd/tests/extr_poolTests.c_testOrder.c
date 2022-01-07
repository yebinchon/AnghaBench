
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {size_t i; size_t* data; int mutex; } ;
typedef int POOL_ctx ;


 int ASSERT_EQ (size_t,size_t) ;
 int ASSERT_FALSE (int ) ;
 int ASSERT_TRUE (int * const) ;
 int POOL_add (int * const,int *,struct data*) ;
 int * POOL_create (size_t,size_t) ;
 int POOL_free (int * const) ;
 int ZSTD_pthread_mutex_destroy (int *) ;
 int ZSTD_pthread_mutex_init (int *,int *) ;
 int fn ;

__attribute__((used)) static int testOrder(size_t numThreads, size_t queueSize)
{
  struct data data;
  POOL_ctx* const ctx = POOL_create(numThreads, queueSize);
  ASSERT_TRUE(ctx);
  data.i = 0;
  ASSERT_FALSE(ZSTD_pthread_mutex_init(&data.mutex, ((void*)0)));
  { size_t i;
    for (i = 0; i < 16; ++i) {
      POOL_add(ctx, &fn, &data);
    }
  }
  POOL_free(ctx);
  ASSERT_EQ(16, data.i);
  { size_t i;
    for (i = 0; i < data.i; ++i) {
      ASSERT_EQ(i, data.data[i]);
    }
  }
  ZSTD_pthread_mutex_destroy(&data.mutex);
  return 0;
}
