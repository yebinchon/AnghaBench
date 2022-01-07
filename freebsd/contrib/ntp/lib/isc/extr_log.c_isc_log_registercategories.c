
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ id; int * name; } ;
typedef TYPE_1__ isc_logcategory_t ;
struct TYPE_8__ {int category_count; TYPE_1__* categories; } ;
typedef TYPE_2__ isc_log_t ;


 int DE_CONST (int *,TYPE_1__*) ;
 int REQUIRE (int) ;
 scalar_t__ UINT_MAX ;
 int VALID_CONTEXT (TYPE_2__*) ;

void
isc_log_registercategories(isc_log_t *lctx, isc_logcategory_t categories[]) {
 isc_logcategory_t *catp;

 REQUIRE(VALID_CONTEXT(lctx));
 REQUIRE(categories != ((void*)0) && categories[0].name != ((void*)0));
 if (lctx->categories == ((void*)0))
  lctx->categories = categories;

 else {




  for (catp = lctx->categories; catp->name != ((void*)0); )
   if (catp->id == UINT_MAX)




    DE_CONST(catp->name, catp);
   else
    catp++;

  catp->name = (void *)categories;
  catp->id = UINT_MAX;
 }




 for (catp = categories; catp->name != ((void*)0); catp++)
  catp->id = lctx->category_count++;
}
