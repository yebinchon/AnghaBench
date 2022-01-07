
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
struct TYPE_13__ {scalar_t__ length; } ;
typedef TYPE_4__ hex_decode_ctx_t ;


 int ISC_FALSE ;
 int ISC_R_SUCCESS ;
 int ISC_TRUE ;
 int RETERR (int ) ;
 int hex_decode_char (TYPE_4__*,int ) ;
 int hex_decode_finish (TYPE_4__*) ;
 int hex_decode_init (TYPE_4__*,int,int *) ;
 int isc_lex_getmastertoken (int *,TYPE_2__*,scalar_t__,int ) ;
 int isc_lex_ungettoken (int *,TYPE_2__*) ;
 scalar_t__ isc_tokentype_string ;

isc_result_t
isc_hex_tobuffer(isc_lex_t *lexer, isc_buffer_t *target, int length) {
 hex_decode_ctx_t ctx;
 isc_textregion_t *tr;
 isc_token_t token;
 isc_boolean_t eol;

 hex_decode_init(&ctx, length, target);

 while (ctx.length != 0) {
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
   RETERR(hex_decode_char(&ctx, tr->base[i]));
 }
 if (ctx.length < 0)
  isc_lex_ungettoken(lexer, &token);
 RETERR(hex_decode_finish(&ctx));
 return (ISC_R_SUCCESS);
}
