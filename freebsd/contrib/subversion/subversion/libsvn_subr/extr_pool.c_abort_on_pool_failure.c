
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APR_ENOMEM ;
 int EXCEPTION_NONCONTINUABLE ;
 int RaiseException (int ,int ,int ,int *) ;
 int STATUS_NO_MEMORY ;
 int abort () ;
 int printf (char*) ;

__attribute__((used)) static int
abort_on_pool_failure(int retcode)
{


  printf("libsvn: Out of memory - terminating application.\n");







  abort();
  return 0;
}
