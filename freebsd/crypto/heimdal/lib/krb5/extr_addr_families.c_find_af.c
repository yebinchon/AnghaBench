
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addr_operations {int af; } ;


 struct addr_operations* at ;
 int num_addrs ;

__attribute__((used)) static struct addr_operations *
find_af(int af)
{
    struct addr_operations *a;

    for (a = at; a < at + num_addrs; ++a)
 if (af == a->af)
     return a;
    return ((void*)0);
}
