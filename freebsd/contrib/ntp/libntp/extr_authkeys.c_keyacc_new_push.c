
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sockaddr_u ;
struct TYPE_5__ {unsigned int subnetbits; struct TYPE_5__* next; int addr; } ;
typedef TYPE_1__ KeyAccT ;


 TYPE_1__* emalloc (int) ;
 int memcpy (int *,int const*,int) ;

KeyAccT*
keyacc_new_push(
 KeyAccT * head,
 const sockaddr_u * addr,
 unsigned int subnetbits
 )
{
 KeyAccT * node = emalloc(sizeof(KeyAccT));

 memcpy(&node->addr, addr, sizeof(sockaddr_u));
 node->subnetbits = subnetbits;
 node->next = head;

 return node;
}
