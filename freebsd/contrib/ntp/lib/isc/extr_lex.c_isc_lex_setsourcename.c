
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_6__ {int mctx; int sources; } ;
typedef TYPE_1__ isc_lex_t ;
struct TYPE_7__ {char* name; } ;
typedef TYPE_2__ inputsource ;


 TYPE_2__* HEAD (int ) ;
 int ISC_R_NOMEMORY ;
 int ISC_R_NOTFOUND ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int VALID_LEX (TYPE_1__*) ;
 int isc_mem_free (int ,char*) ;
 char* isc_mem_strdup (int ,char const*) ;

isc_result_t
isc_lex_setsourcename(isc_lex_t *lex, const char *name) {
 inputsource *source;
 char *newname;

 REQUIRE(VALID_LEX(lex));
 source = HEAD(lex->sources);

 if (source == ((void*)0))
  return(ISC_R_NOTFOUND);
 newname = isc_mem_strdup(lex->mctx, name);
 if (newname == ((void*)0))
  return (ISC_R_NOMEMORY);
 isc_mem_free(lex->mctx, source->name);
 source->name = newname;
 return (ISC_R_SUCCESS);
}
