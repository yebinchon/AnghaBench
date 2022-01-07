
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (char*,int) ;
 int fflush (int ) ;
 int log_file ;

__attribute__((used)) static void
expect_prompt (int discard)
{





  expect ("dbug> ", discard);
}
