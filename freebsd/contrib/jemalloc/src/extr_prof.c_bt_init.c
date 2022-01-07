
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** vec; scalar_t__ len; } ;
typedef TYPE_1__ prof_bt_t ;


 int cassert (int ) ;
 int config_prof ;

void
bt_init(prof_bt_t *bt, void **vec) {
 cassert(config_prof);

 bt->vec = vec;
 bt->len = 0;
}
