
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int magic; int catalog; } ;
typedef TYPE_1__ isc_msgcat_t ;


 int MSGCAT_MAGIC ;
 int REQUIRE (int) ;
 int catopen (char const*,int ) ;
 TYPE_1__* malloc (int) ;

void
isc_msgcat_open(const char *name, isc_msgcat_t **msgcatp) {
 isc_msgcat_t *msgcat;





 REQUIRE(name != ((void*)0));
 REQUIRE(msgcatp != ((void*)0) && *msgcatp == ((void*)0));

 msgcat = malloc(sizeof(*msgcat));
 if (msgcat == ((void*)0)) {
  *msgcatp = ((void*)0);
  return;
 }
 msgcat->magic = MSGCAT_MAGIC;

 *msgcatp = msgcat;
}
