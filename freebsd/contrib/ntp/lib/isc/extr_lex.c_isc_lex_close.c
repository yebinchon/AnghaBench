
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_8__ {int mctx; int sources; } ;
typedef TYPE_1__ isc_lex_t ;
struct TYPE_9__ {int pushback; int name; scalar_t__ input; scalar_t__ need_close; scalar_t__ is_file; } ;
typedef TYPE_2__ inputsource ;
typedef int FILE ;


 TYPE_2__* HEAD (int ) ;
 int ISC_LIST_UNLINK (int ,TYPE_2__*,int ) ;
 int ISC_R_NOMORE ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int VALID_LEX (TYPE_1__*) ;
 int fclose (int *) ;
 int isc_buffer_free (int *) ;
 int isc_mem_free (int ,int ) ;
 int isc_mem_put (int ,TYPE_2__*,int) ;
 int link ;

isc_result_t
isc_lex_close(isc_lex_t *lex) {
 inputsource *source;





 REQUIRE(VALID_LEX(lex));

 source = HEAD(lex->sources);
 if (source == ((void*)0))
  return (ISC_R_NOMORE);

 ISC_LIST_UNLINK(lex->sources, source, link);
 if (source->is_file) {
  if (source->need_close)
   (void)fclose((FILE *)(source->input));
 }
 isc_mem_free(lex->mctx, source->name);
 isc_buffer_free(&source->pushback);
 isc_mem_put(lex->mctx, source, sizeof(*source));

 return (ISC_R_SUCCESS);
}
