
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdeque {scalar_t__ end_pos; scalar_t__ beg_pos; scalar_t__ size; } ;



__attribute__((used)) static void cdeque_clear(struct cdeque* d) {
 d->size = 0;
 d->beg_pos = 0;
 d->end_pos = 0;
}
