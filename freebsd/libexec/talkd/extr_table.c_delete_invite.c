
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct TYPE_7__ {scalar_t__ id_num; } ;
struct TYPE_6__ {TYPE_3__ request; struct TYPE_6__* next; } ;
typedef TYPE_1__ TABLE_ENTRY ;


 int LOG_DEBUG ;
 TYPE_1__* NIL ;
 int NOT_HERE ;
 int SUCCESS ;
 scalar_t__ debug ;
 int delete (TYPE_1__*) ;
 int print_request (char*,TYPE_3__*) ;
 int syslog (int ,char*,scalar_t__) ;
 TYPE_1__* table ;

int
delete_invite(u_int32_t id_num)
{
 TABLE_ENTRY *ptr;

 if (debug)
  syslog(LOG_DEBUG, "delete_invite(%d)", id_num);
 for (ptr = table; ptr != NIL; ptr = ptr->next) {
  if (ptr->request.id_num == id_num)
   break;
  if (debug)
   print_request("", &ptr->request);
 }
 if (ptr != NIL) {
  delete(ptr);
  return (SUCCESS);
 }
 return (NOT_HERE);
}
