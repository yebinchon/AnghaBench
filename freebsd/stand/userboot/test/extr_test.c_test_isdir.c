
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_file {int tf_isdir; } ;



int
test_isdir(void *arg, void *h)
{
 struct test_file *tf = h;

 return (tf->tf_isdir);
}
