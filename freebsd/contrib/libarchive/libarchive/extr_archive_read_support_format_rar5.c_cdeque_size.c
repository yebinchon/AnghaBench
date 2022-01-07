
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdeque {size_t size; } ;



__attribute__((used)) static size_t cdeque_size(struct cdeque* d) {
 return d->size;
}
