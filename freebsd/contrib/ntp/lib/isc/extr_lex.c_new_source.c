
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ isc_result_t ;
struct TYPE_7__ {int sources; int mctx; int max_token; } ;
typedef TYPE_1__ isc_lex_t ;
typedef void* isc_boolean_t ;
struct TYPE_8__ {int line; scalar_t__ ignored; int * name; int * pushback; void* input; int at_eof; void* need_close; void* is_file; scalar_t__ result; } ;
typedef TYPE_2__ inputsource ;


 int ISC_FALSE ;
 int ISC_LIST_INITANDPREPEND (int ,TYPE_2__*,int ) ;
 scalar_t__ ISC_R_NOMEMORY ;
 scalar_t__ ISC_R_SUCCESS ;
 scalar_t__ isc_buffer_allocate (int ,int **,int ) ;
 int isc_mem_free (int ,int *) ;
 TYPE_2__* isc_mem_get (int ,int) ;
 int isc_mem_put (int ,TYPE_2__*,int) ;
 int * isc_mem_strdup (int ,char const*) ;
 int link ;

__attribute__((used)) static inline isc_result_t
new_source(isc_lex_t *lex, isc_boolean_t is_file, isc_boolean_t need_close,
    void *input, const char *name)
{
 inputsource *source;
 isc_result_t result;

 source = isc_mem_get(lex->mctx, sizeof(*source));
 if (source == ((void*)0))
  return (ISC_R_NOMEMORY);
 source->result = ISC_R_SUCCESS;
 source->is_file = is_file;
 source->need_close = need_close;
 source->at_eof = ISC_FALSE;
 source->input = input;
 source->name = isc_mem_strdup(lex->mctx, name);
 if (source->name == ((void*)0)) {
  isc_mem_put(lex->mctx, source, sizeof(*source));
  return (ISC_R_NOMEMORY);
 }
 source->pushback = ((void*)0);
 result = isc_buffer_allocate(lex->mctx, &source->pushback,
         lex->max_token);
 if (result != ISC_R_SUCCESS) {
  isc_mem_free(lex->mctx, source->name);
  isc_mem_put(lex->mctx, source, sizeof(*source));
  return (result);
 }
 source->ignored = 0;
 source->line = 1;
 ISC_LIST_INITANDPREPEND(lex->sources, source, link);

 return (ISC_R_SUCCESS);
}
