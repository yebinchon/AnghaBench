
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
foo(unsigned long z)
{
 z = ({ unsigned long tmp; tmp = 1; tmp; });
 foo(z);
}
