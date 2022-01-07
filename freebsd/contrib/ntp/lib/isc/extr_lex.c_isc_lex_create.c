
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int isc_result_t ;
typedef int isc_mem_t ;
struct TYPE_4__ {size_t max_token; int magic; int sources; int specials; scalar_t__ saved_paren_count; scalar_t__ paren_count; void* last_was_eol; void* comment_ok; scalar_t__ comments; int * mctx; int * data; } ;
typedef TYPE_1__ isc_lex_t ;


 int INIT_LIST (int ) ;
 int ISC_R_NOMEMORY ;
 int ISC_R_SUCCESS ;
 void* ISC_TRUE ;
 int LEX_MAGIC ;
 int REQUIRE (int) ;
 void* isc_mem_get (int *,size_t) ;
 int isc_mem_put (int *,TYPE_1__*,int) ;
 int memset (int ,int ,int) ;

isc_result_t
isc_lex_create(isc_mem_t *mctx, size_t max_token, isc_lex_t **lexp) {
 isc_lex_t *lex;





 REQUIRE(lexp != ((void*)0) && *lexp == ((void*)0));
 REQUIRE(max_token > 0U);

 lex = isc_mem_get(mctx, sizeof(*lex));
 if (lex == ((void*)0))
  return (ISC_R_NOMEMORY);
 lex->data = isc_mem_get(mctx, max_token + 1);
 if (lex->data == ((void*)0)) {
  isc_mem_put(mctx, lex, sizeof(*lex));
  return (ISC_R_NOMEMORY);
 }
 lex->mctx = mctx;
 lex->max_token = max_token;
 lex->comments = 0;
 lex->comment_ok = ISC_TRUE;
 lex->last_was_eol = ISC_TRUE;
 lex->paren_count = 0;
 lex->saved_paren_count = 0;
 memset(lex->specials, 0, 256);
 INIT_LIST(lex->sources);
 lex->magic = LEX_MAGIC;

 *lexp = lex;

 return (ISC_R_SUCCESS);
}
