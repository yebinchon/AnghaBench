
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_once {int arg; int (* cb ) (int,short,int ) ;} ;


 int free (struct event_once*) ;
 int stub1 (int,short,int ) ;

__attribute__((used)) static void
event_once_cb(int fd, short events, void *arg)
{
 struct event_once *eonce = arg;

 (*eonce->cb)(fd, events, eonce->arg);
 free(eonce);
}
