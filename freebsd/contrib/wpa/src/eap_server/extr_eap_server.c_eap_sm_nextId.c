
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int lastId; } ;


 int rand () ;

__attribute__((used)) static int eap_sm_nextId(struct eap_sm *sm, int id)
{
 if (id < 0) {


  id = rand() & 0xff;
  if (id != sm->lastId)
   return id;
 }
 return (id + 1) & 0xff;
}
