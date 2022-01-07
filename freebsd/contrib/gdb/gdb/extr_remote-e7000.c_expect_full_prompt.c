
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (char*) ;

__attribute__((used)) static void
expect_full_prompt (void)
{
  expect ("\r:");
}
