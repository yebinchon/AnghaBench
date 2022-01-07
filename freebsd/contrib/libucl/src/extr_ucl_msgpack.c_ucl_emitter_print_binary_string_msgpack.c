
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct ucl_emitter_functions {int ud; int (* ucl_emitter_append_len ) (char const*,size_t,int ) ;} ;
struct ucl_emitter_context {struct ucl_emitter_functions* func; } ;
typedef int bl ;


 int TO_BE16 (size_t) ;
 int TO_BE32 (size_t) ;
 int memcpy (unsigned char*,int *,int) ;
 int stub1 (unsigned char*,unsigned int,int ) ;
 int stub2 (char const*,size_t,int ) ;

void
ucl_emitter_print_binary_string_msgpack (struct ucl_emitter_context *ctx,
  const char *s, size_t len)
{
 const struct ucl_emitter_functions *func = ctx->func;
 const unsigned char l8_ch = 0xc4, l16_ch = 0xc5, l32_ch = 0xc6;
 unsigned char buf[5];
 unsigned blen;

 if (len <= 0xff) {
  blen = 2;
  buf[0] = l8_ch;
  buf[1] = len & 0xff;
 }
 else if (len <= 0xffff) {
  uint16_t bl = TO_BE16 (len);

  blen = 3;
  buf[0] = l16_ch;
  memcpy (&buf[1], &bl, sizeof (bl));
 }
 else {
  uint32_t bl = TO_BE32 (len);

  blen = 5;
  buf[0] = l32_ch;
  memcpy (&buf[1], &bl, sizeof (bl));
 }

 func->ucl_emitter_append_len (buf, blen, func->ud);
 func->ucl_emitter_append_len (s, len, func->ud);
}
