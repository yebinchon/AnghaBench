
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hx509_collector {int lock; } ;
typedef int hx509_lock ;



hx509_lock
_hx509_collector_get_lock(struct hx509_collector *c)
{
    return c->lock;
}
