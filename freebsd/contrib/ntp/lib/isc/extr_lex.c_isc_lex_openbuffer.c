
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;
typedef int isc_result_t ;
typedef int isc_lex_t ;
typedef int isc_buffer_t ;


 int ISC_FALSE ;
 int REQUIRE (int ) ;
 int VALID_LEX (int *) ;
 int new_source (int *,int ,int ,int *,char*) ;
 int snprintf (char*,int,char*,int *) ;

isc_result_t
isc_lex_openbuffer(isc_lex_t *lex, isc_buffer_t *buffer) {
 char name[128];





 REQUIRE(VALID_LEX(lex));

 snprintf(name, sizeof(name), "buffer-%p", buffer);

 return (new_source(lex, ISC_FALSE, ISC_FALSE, buffer, name));
}
