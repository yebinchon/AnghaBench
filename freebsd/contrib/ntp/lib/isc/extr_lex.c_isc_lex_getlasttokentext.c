
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ type; } ;
typedef TYPE_1__ isc_token_t ;
struct TYPE_12__ {unsigned char* base; scalar_t__ length; } ;
typedef TYPE_2__ isc_region_t ;
struct TYPE_13__ {int sources; } ;
typedef TYPE_3__ isc_lex_t ;
struct TYPE_14__ {scalar_t__ ignored; int pushback; } ;
typedef TYPE_4__ inputsource ;


 TYPE_4__* HEAD (int ) ;
 int INSIST (int) ;
 int REQUIRE (int) ;
 int UNUSED (TYPE_1__*) ;
 int VALID_LEX (TYPE_3__*) ;
 scalar_t__ isc_buffer_base (int ) ;
 scalar_t__ isc_buffer_consumedlength (int ) ;
 scalar_t__ isc_tokentype_eof ;

void
isc_lex_getlasttokentext(isc_lex_t *lex, isc_token_t *tokenp, isc_region_t *r)
{
 inputsource *source;

 REQUIRE(VALID_LEX(lex));
 source = HEAD(lex->sources);
 REQUIRE(source != ((void*)0));
 REQUIRE(tokenp != ((void*)0));
 REQUIRE(isc_buffer_consumedlength(source->pushback) != 0 ||
  tokenp->type == isc_tokentype_eof);

 UNUSED(tokenp);

 INSIST(source->ignored <= isc_buffer_consumedlength(source->pushback));
 r->base = (unsigned char *)isc_buffer_base(source->pushback) +
    source->ignored;
 r->length = isc_buffer_consumedlength(source->pushback) -
      source->ignored;
}
