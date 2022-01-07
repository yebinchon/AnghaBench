
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int isc_lexspecials_t ;
struct TYPE_4__ {int specials; } ;
typedef TYPE_1__ isc_lex_t ;


 int REQUIRE (int ) ;
 int VALID_LEX (TYPE_1__*) ;
 int memcpy (int ,int ,int) ;

void
isc_lex_getspecials(isc_lex_t *lex, isc_lexspecials_t specials) {




 REQUIRE(VALID_LEX(lex));

 memcpy(specials, lex->specials, 256);
}
