
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
typedef TYPE_1__ item_t ;


 int ISC_QLINK_INIT (TYPE_1__*,int ) ;
 int qlink ;

__attribute__((used)) static void
item_init(item_t *item, int value) {
 item->value = value;
 ISC_QLINK_INIT(item, qlink);
}
