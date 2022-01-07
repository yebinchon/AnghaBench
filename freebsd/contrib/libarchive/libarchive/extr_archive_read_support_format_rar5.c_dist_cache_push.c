
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* dist_cache; } ;
struct rar5 {TYPE_1__ cstate; } ;



__attribute__((used)) static void dist_cache_push(struct rar5* rar, int value) {
 int* q = rar->cstate.dist_cache;

 q[3] = q[2];
 q[2] = q[1];
 q[1] = q[0];
 q[0] = value;
}
