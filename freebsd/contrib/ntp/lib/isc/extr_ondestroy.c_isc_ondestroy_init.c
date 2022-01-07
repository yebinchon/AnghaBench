
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int events; int magic; } ;
typedef TYPE_1__ isc_ondestroy_t ;


 int ISC_LIST_INIT (int ) ;
 int ONDESTROY_MAGIC ;

void
isc_ondestroy_init(isc_ondestroy_t *ondest) {
 ondest->magic = ONDESTROY_MAGIC;
 ISC_LIST_INIT(ondest->events);
}
