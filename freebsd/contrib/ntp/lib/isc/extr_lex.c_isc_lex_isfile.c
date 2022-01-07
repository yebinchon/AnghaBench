
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sources; } ;
typedef TYPE_1__ isc_lex_t ;
typedef int isc_boolean_t ;
struct TYPE_7__ {int is_file; } ;
typedef TYPE_2__ inputsource ;


 TYPE_2__* HEAD (int ) ;
 int ISC_FALSE ;
 int REQUIRE (int ) ;
 int VALID_LEX (TYPE_1__*) ;

isc_boolean_t
isc_lex_isfile(isc_lex_t *lex) {
 inputsource *source;

 REQUIRE(VALID_LEX(lex));

 source = HEAD(lex->sources);

 if (source == ((void*)0))
  return (ISC_FALSE);

 return (source->is_file);
}
