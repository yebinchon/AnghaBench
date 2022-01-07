
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sockaddr_u ;
struct TYPE_3__ {int subnetbits; int addr; struct TYPE_3__* next; } ;
typedef TYPE_1__ KeyAccT ;


 int FALSE ;
 int TRUE ;
 scalar_t__ keyacc_amatch (int *,int const*,int ) ;

int
keyacc_contains(
 const KeyAccT *head,
 const sockaddr_u *addr,
 int defv)
{
 if (head) {
  do {
   if (keyacc_amatch(&head->addr, addr,
       head->subnetbits))
    return TRUE;
  } while (((void*)0) != (head = head->next));
  return FALSE;
 } else {
  return !!defv;
 }
}
