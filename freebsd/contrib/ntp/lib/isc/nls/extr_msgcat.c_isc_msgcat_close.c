
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ nl_catd ;
struct TYPE_5__ {scalar_t__ catalog; scalar_t__ magic; } ;
typedef TYPE_1__ isc_msgcat_t ;


 int REQUIRE (int) ;
 scalar_t__ VALID_MSGCAT (TYPE_1__*) ;
 int catclose (scalar_t__) ;
 int free (TYPE_1__*) ;

void
isc_msgcat_close(isc_msgcat_t **msgcatp) {
 isc_msgcat_t *msgcat;





 REQUIRE(msgcatp != ((void*)0));
 msgcat = *msgcatp;
 REQUIRE(VALID_MSGCAT(msgcat) || msgcat == ((void*)0));

 if (msgcat != ((void*)0)) {




  msgcat->magic = 0;
  free(msgcat);
 }

 *msgcatp = ((void*)0);
}
