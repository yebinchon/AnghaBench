
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int onerror_ctx ;
 int test_onerror (int ) ;

__attribute__((used)) static void
test_die(void)
{
 if (test_onerror != ((void*)0))
  test_onerror(onerror_ctx);
 abort();
}
