
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {unsigned int length; int * base; } ;
struct TYPE_10__ {TYPE_3__ as_textregion; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_1__ value; } ;
typedef TYPE_2__ isc_token_t ;
typedef TYPE_3__ isc_textregion_t ;
typedef int isc_result_t ;
typedef int isc_lex_t ;
typedef int isc_buffer_t ;
typedef int isc_boolean_t ;
struct TYPE_13__ {scalar_t__ length; int seen_end; } ;
typedef TYPE_4__ base32_decode_ctx_t ;


 int ISC_FALSE ;
 int ISC_R_SUCCESS ;
 int ISC_TRUE ;
 int RETERR (int ) ;
 int base32_decode_char (TYPE_4__*,int ) ;
 int base32_decode_finish (TYPE_4__*) ;
 int base32_decode_init (TYPE_4__*,int,char const*,int *) ;
 int isc_lex_getmastertoken (int *,TYPE_2__*,scalar_t__,int ) ;
 int isc_lex_ungettoken (int *,TYPE_2__*) ;
 scalar_t__ isc_tokentype_string ;

__attribute__((used)) static isc_result_t
base32_tobuffer(isc_lex_t *lexer, const char base[], isc_buffer_t *target,
  int length)
{
 base32_decode_ctx_t ctx;
 isc_textregion_t *tr;
 isc_token_t token;
 isc_boolean_t eol;

 base32_decode_init(&ctx, length, base, target);

 while (!ctx.seen_end && (ctx.length != 0)) {
  unsigned int i;

  if (length > 0)
   eol = ISC_FALSE;
  else
   eol = ISC_TRUE;
  RETERR(isc_lex_getmastertoken(lexer, &token,
           isc_tokentype_string, eol));
  if (token.type != isc_tokentype_string)
   break;
  tr = &token.value.as_textregion;
  for (i = 0; i < tr->length; i++)
   RETERR(base32_decode_char(&ctx, tr->base[i]));
 }
 if (ctx.length < 0 && !ctx.seen_end)
  isc_lex_ungettoken(lexer, &token);
 RETERR(base32_decode_finish(&ctx));
 return (ISC_R_SUCCESS);
}
