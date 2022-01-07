
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct listen_port {int fd; int ftype; struct listen_port* next; } ;
typedef enum listen_type { ____Placeholder_listen_type } listen_type ;


 scalar_t__ malloc (int) ;

__attribute__((used)) static int
port_insert(struct listen_port** list, int s, enum listen_type ftype)
{
 struct listen_port* item = (struct listen_port*)malloc(
  sizeof(struct listen_port));
 if(!item)
  return 0;
 item->next = *list;
 item->fd = s;
 item->ftype = ftype;
 *list = item;
 return 1;
}
