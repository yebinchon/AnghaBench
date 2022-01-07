
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evmap_signal {int events; } ;


 int LIST_INIT (int *) ;

__attribute__((used)) static void
evmap_signal_init(struct evmap_signal *entry)
{
 LIST_INIT(&entry->events);
}
