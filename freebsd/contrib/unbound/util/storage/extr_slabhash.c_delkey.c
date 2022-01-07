
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct slabhash_testkey {TYPE_1__ entry; } ;


 int free (struct slabhash_testkey*) ;
 int lock_rw_destroy (int *) ;

__attribute__((used)) static void delkey(struct slabhash_testkey* k) {
 lock_rw_destroy(&k->entry.lock); free(k);}
