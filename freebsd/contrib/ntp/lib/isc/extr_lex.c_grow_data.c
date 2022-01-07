
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_3__ {int max_token; char* data; int mctx; } ;
typedef TYPE_1__ isc_lex_t ;


 int ISC_R_NOMEMORY ;
 int ISC_R_SUCCESS ;
 char* isc_mem_get (int ,int) ;
 int isc_mem_put (int ,char*,int) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static inline isc_result_t
grow_data(isc_lex_t *lex, size_t *remainingp, char **currp, char **prevp) {
 char *new;

 new = isc_mem_get(lex->mctx, lex->max_token * 2 + 1);
 if (new == ((void*)0))
  return (ISC_R_NOMEMORY);
 memcpy(new, lex->data, lex->max_token + 1);
 *currp = new + (*currp - lex->data);
 if (*prevp != ((void*)0))
  *prevp = new + (*prevp - lex->data);
 isc_mem_put(lex->mctx, lex->data, lex->max_token + 1);
 lex->data = new;
 *remainingp += lex->max_token;
 lex->max_token *= 2;
 return (ISC_R_SUCCESS);
}
