
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_13__ {scalar_t__ tv_sec; } ;
struct TYPE_12__ {scalar_t__ type; scalar_t__ pid; int l_name; int r_name; } ;
struct TYPE_11__ {scalar_t__ time; TYPE_2__ request; struct TYPE_11__* next; } ;
typedef TYPE_1__ TABLE_ENTRY ;
typedef TYPE_2__ CTL_MSG ;


 int CLOCK_MONOTONIC_FAST ;
 scalar_t__ MAX_LIFE ;
 TYPE_1__* NIL ;
 int clock_gettime (int ,TYPE_3__*) ;
 scalar_t__ debug ;
 int delete (TYPE_1__*) ;
 int print_request (char*,TYPE_2__*) ;
 scalar_t__ strcmp (int ,int ) ;
 TYPE_1__* table ;
 TYPE_3__ ts ;

CTL_MSG *
find_request(CTL_MSG *request)
{
 TABLE_ENTRY *ptr, *next;
 time_t current_time;

 clock_gettime(CLOCK_MONOTONIC_FAST, &ts);
 current_time = ts.tv_sec;




 if (debug)
  print_request("find_request", request);
 for (ptr = table; ptr != NIL; ptr = next) {
  next = ptr->next;
  if ((ptr->time - current_time) > MAX_LIFE) {

   if (debug)
    print_request("deleting expired entry",
        &ptr->request);
   delete(ptr);
   continue;
  }
  if (debug)
   print_request("", &ptr->request);
  if (strcmp(request->r_name, ptr->request.r_name) == 0 &&
      strcmp(request->l_name, ptr->request.l_name) == 0 &&
      request->type == ptr->request.type &&
      request->pid == ptr->request.pid) {

   ptr->time = current_time;
   return (&ptr->request);
  }
 }
 return ((CTL_MSG *)0);
}
