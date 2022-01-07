
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __exit (int) ;

void
exit(int x)
{
    __exit(x);
}
