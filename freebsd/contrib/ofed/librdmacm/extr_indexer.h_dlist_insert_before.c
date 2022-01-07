
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int prev; } ;
typedef TYPE_1__ dlist_entry ;


 int dlist_insert_after (TYPE_1__*,int ) ;

__attribute__((used)) static inline void dlist_insert_before(dlist_entry *item, dlist_entry *head)
{
 dlist_insert_after(item, head->prev);
}
