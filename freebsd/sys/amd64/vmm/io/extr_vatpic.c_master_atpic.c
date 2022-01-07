
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vatpic {struct atpic* atpic; } ;
struct atpic {int dummy; } ;



__attribute__((used)) static __inline bool
master_atpic(struct vatpic *vatpic, struct atpic *atpic)
{

 if (atpic == &vatpic->atpic[0])
  return (1);
 else
  return (0);
}
