
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addr_tree_node {scalar_t__ net; int addrlen; int addr; } ;


 int sockaddr_cmp_addr (int *,int ,int *,int ) ;

int addr_tree_compare(const void* k1, const void* k2)
{
        struct addr_tree_node* n1 = (struct addr_tree_node*)k1;
        struct addr_tree_node* n2 = (struct addr_tree_node*)k2;
        int r = sockaddr_cmp_addr(&n1->addr, n1->addrlen, &n2->addr,
                n2->addrlen);
        if(r != 0) return r;
        if(n1->net < n2->net)
                return -1;
        if(n1->net > n2->net)
                return 1;
        return 0;
}
