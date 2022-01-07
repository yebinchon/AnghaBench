
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctors_run ;

__attribute__((used)) static void
ctors_handler(void)
{

 ctors_run = 1;
}
