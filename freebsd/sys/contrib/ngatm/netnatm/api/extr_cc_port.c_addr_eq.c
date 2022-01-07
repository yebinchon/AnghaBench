
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_addr {scalar_t__ type; scalar_t__ plan; scalar_t__ len; int addr; } ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static __inline int
addr_eq(const struct uni_addr *a1, const struct uni_addr *a2)
{
 return (a1->type == a2->type && a1->plan == a2->plan &&
     a1->len == a2->len && memcmp(a1->addr, a2->addr, a1->len) == 0);
}
