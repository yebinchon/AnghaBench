
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,size_t) ;

__attribute__((used)) static void
testskipped(size_t i)
{

 printf("ok %zu # skip - not turned on\n", i);
}
