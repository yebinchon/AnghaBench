
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_13__ {int tv_sec; } ;
struct TYPE_12__ {int id_num; } ;
struct TYPE_11__ {int id_num; } ;
struct TYPE_10__ {struct TYPE_10__* last; struct TYPE_10__* next; TYPE_3__ request; int time; } ;
typedef TYPE_1__ TABLE_ENTRY ;
typedef TYPE_2__ CTL_RESPONSE ;
typedef TYPE_3__ CTL_MSG ;


 int CLOCK_MONOTONIC_FAST ;
 int LOG_ERR ;
 TYPE_1__* NIL ;
 int _exit (int) ;
 int clock_gettime (int ,TYPE_4__*) ;
 int htonl (int ) ;
 scalar_t__ malloc (int) ;
 int new_id () ;
 int syslog (int ,char*) ;
 TYPE_1__* table ;
 TYPE_4__ ts ;

void
insert_table(CTL_MSG *request, CTL_RESPONSE *response)
{
 TABLE_ENTRY *ptr;
 time_t current_time;

 clock_gettime(CLOCK_MONOTONIC_FAST, &ts);
 current_time = ts.tv_sec;
 request->id_num = new_id();
 response->id_num = htonl(request->id_num);

 ptr = (TABLE_ENTRY *)malloc(sizeof(TABLE_ENTRY));
 if (ptr == NIL) {
  syslog(LOG_ERR, "insert_table: Out of memory");
  _exit(1);
 }
 ptr->time = current_time;
 ptr->request = *request;
 ptr->next = table;
 if (ptr->next != NIL)
  ptr->next->last = ptr;
 ptr->last = NIL;
 table = ptr;
}
