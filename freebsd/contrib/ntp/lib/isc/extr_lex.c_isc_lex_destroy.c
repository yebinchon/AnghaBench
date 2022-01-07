
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int max_token; int mctx; scalar_t__ magic; struct TYPE_6__* data; int sources; } ;
typedef TYPE_1__ isc_lex_t ;


 int EMPTY (int ) ;
 scalar_t__ ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int RUNTIME_CHECK (int) ;
 int VALID_LEX (TYPE_1__*) ;
 scalar_t__ isc_lex_close (TYPE_1__*) ;
 int isc_mem_put (int ,TYPE_1__*,int) ;

void
isc_lex_destroy(isc_lex_t **lexp) {
 isc_lex_t *lex;





 REQUIRE(lexp != ((void*)0));
 lex = *lexp;
 REQUIRE(VALID_LEX(lex));

 while (!EMPTY(lex->sources))
  RUNTIME_CHECK(isc_lex_close(lex) == ISC_R_SUCCESS);
 if (lex->data != ((void*)0))
  isc_mem_put(lex->mctx, lex->data, lex->max_token + 1);
 lex->magic = 0;
 isc_mem_put(lex->mctx, lex, sizeof(*lex));

 *lexp = ((void*)0);
}
