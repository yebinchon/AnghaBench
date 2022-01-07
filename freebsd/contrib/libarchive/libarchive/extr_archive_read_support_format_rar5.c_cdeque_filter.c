
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_info {int dummy; } ;



__attribute__((used)) static void* cdeque_filter(struct filter_info* f) {
 return (void**) (size_t) f;
}
