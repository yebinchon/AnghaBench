
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;
typedef int isc_lex_t ;
typedef int isc_buffer_t ;


 int base32 ;
 int base32_tobuffer (int *,int ,int *,int) ;

isc_result_t
isc_base32_tobuffer(isc_lex_t *lexer, isc_buffer_t *target, int length) {
 return (base32_tobuffer(lexer, base32, target, length));
}
