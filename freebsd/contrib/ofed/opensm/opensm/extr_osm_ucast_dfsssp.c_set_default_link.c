
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * next; scalar_t__ weight; scalar_t__ to_port; scalar_t__ to; scalar_t__ from_port; scalar_t__ from; scalar_t__ guid; } ;
typedef TYPE_1__ link_t ;



__attribute__((used)) static inline void set_default_link(link_t * link)
{
 link->guid = 0;
 link->from = 0;
 link->from_port = 0;
 link->to = 0;
 link->to_port = 0;
 link->weight = 0;
 link->next = ((void*)0);
}
