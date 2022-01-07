
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ type; } ;
typedef TYPE_1__ isc_token_t ;
struct TYPE_10__ {int saved_paren_count; int paren_count; int sources; } ;
typedef TYPE_2__ isc_lex_t ;
struct TYPE_11__ {int at_eof; int saved_line; int line; int pushback; } ;
typedef TYPE_3__ inputsource ;


 TYPE_3__* HEAD (int ) ;
 int ISC_FALSE ;
 int REQUIRE (int) ;
 int UNUSED (TYPE_1__*) ;
 int VALID_LEX (TYPE_2__*) ;
 scalar_t__ isc_buffer_consumedlength (int ) ;
 int isc_buffer_first (int ) ;
 scalar_t__ isc_tokentype_eof ;

void
isc_lex_ungettoken(isc_lex_t *lex, isc_token_t *tokenp) {
 inputsource *source;




 REQUIRE(VALID_LEX(lex));
 source = HEAD(lex->sources);
 REQUIRE(source != ((void*)0));
 REQUIRE(tokenp != ((void*)0));
 REQUIRE(isc_buffer_consumedlength(source->pushback) != 0 ||
  tokenp->type == isc_tokentype_eof);

 UNUSED(tokenp);

 isc_buffer_first(source->pushback);
 lex->paren_count = lex->saved_paren_count;
 source->line = source->saved_line;
 source->at_eof = ISC_FALSE;
}
