
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eloop_sock_table {int dummy; } ;
typedef int eloop_event_type ;
struct TYPE_2__ {struct eloop_sock_table exceptions; struct eloop_sock_table writers; struct eloop_sock_table readers; } ;





 TYPE_1__ eloop ;

__attribute__((used)) static struct eloop_sock_table *eloop_get_sock_table(eloop_event_type type)
{
 switch (type) {
 case 129:
  return &eloop.readers;
 case 128:
  return &eloop.writers;
 case 130:
  return &eloop.exceptions;
 }

 return ((void*)0);
}
