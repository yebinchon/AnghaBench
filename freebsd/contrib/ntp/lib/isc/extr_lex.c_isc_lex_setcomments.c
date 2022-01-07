
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int comments; } ;
typedef TYPE_1__ isc_lex_t ;


 int REQUIRE (int ) ;
 int VALID_LEX (TYPE_1__*) ;

void
isc_lex_setcomments(isc_lex_t *lex, unsigned int comments) {




 REQUIRE(VALID_LEX(lex));

 lex->comments = comments;
}
