
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct listen_port {int fd; struct listen_port* next; } ;


 int close (int) ;
 int closesocket (int) ;
 int free (struct listen_port*) ;

void listening_ports_free(struct listen_port* list)
{
 struct listen_port* nx;
 while(list) {
  nx = list->next;
  if(list->fd != -1) {

   close(list->fd);



  }
  free(list);
  list = nx;
 }
}
