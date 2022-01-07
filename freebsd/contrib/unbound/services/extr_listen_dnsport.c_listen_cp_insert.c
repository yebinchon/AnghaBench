
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct listen_list {struct listen_list* next; struct comm_point* com; } ;
struct listen_dnsport {struct listen_list* cps; } ;
struct comm_point {int dummy; } ;


 scalar_t__ malloc (int) ;

__attribute__((used)) static int
listen_cp_insert(struct comm_point* c, struct listen_dnsport* front)
{
 struct listen_list* item = (struct listen_list*)malloc(
  sizeof(struct listen_list));
 if(!item)
  return 0;
 item->com = c;
 item->next = front->cps;
 front->cps = item;
 return 1;
}
