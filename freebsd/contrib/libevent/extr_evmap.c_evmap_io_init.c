
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evmap_io {scalar_t__ nclose; scalar_t__ nwrite; scalar_t__ nread; int events; } ;


 int LIST_INIT (int *) ;

__attribute__((used)) static void
evmap_io_init(struct evmap_io *entry)
{
 LIST_INIT(&entry->events);
 entry->nread = 0;
 entry->nwrite = 0;
 entry->nclose = 0;
}
