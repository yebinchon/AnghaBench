
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct iter_donotq {int tree; } ;
typedef int socklen_t ;


 int * addr_tree_lookup (int *,struct sockaddr_storage*,int ) ;

int
donotq_lookup(struct iter_donotq* donotq, struct sockaddr_storage* addr,
        socklen_t addrlen)
{
 return addr_tree_lookup(&donotq->tree, addr, addrlen) != ((void*)0);
}
