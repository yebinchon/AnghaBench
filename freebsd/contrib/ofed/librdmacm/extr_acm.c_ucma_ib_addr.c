
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_family; } ;
typedef scalar_t__ socklen_t ;


 scalar_t__ AF_IB ;

__attribute__((used)) static int ucma_ib_addr(struct sockaddr *addr, socklen_t len)
{
 return len && addr && (addr->sa_family == AF_IB);
}
