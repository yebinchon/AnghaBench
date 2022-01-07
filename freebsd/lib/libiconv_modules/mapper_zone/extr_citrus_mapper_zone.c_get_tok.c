
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _parse_state {int ps_state; } ;
struct _memstream {int dummy; } ;


 int EOF ;


 int T_ERR ;
 scalar_t__ _bcs_isspace (int) ;
 int _memstream_getc (struct _memstream*) ;
 int _memstream_peek (struct _memstream*) ;
 int get_imm (struct _memstream*,struct _parse_state*) ;

__attribute__((used)) static int
get_tok(struct _memstream *ms, struct _parse_state *ps)
{
 int c;

loop:
 c = _memstream_peek(ms);
 if (c == 0x00)
  return (EOF);
 if (_bcs_isspace(c)) {
  _memstream_getc(ms);
  goto loop;
 }

 switch (ps->ps_state) {
 case 129:
  switch (c) {
  case ':':
  case '-':
  case '/':
   _memstream_getc(ms);
   return (c);
  case '0':
  case '1':
  case '2':
  case '3':
  case '4':
  case '5':
  case '6':
  case '7':
  case '8':
  case '9':
   return (get_imm(ms, ps));
  }
  break;
 case 128:
  switch (c) {
  case '/':
   _memstream_getc(ms);
   return (c);
  case '+':
  case '-':
  case '0':
  case '1':
  case '2':
  case '3':
  case '4':
  case '5':
  case '6':
  case '7':
  case '8':
  case '9':
   return (get_imm(ms, ps));
  }
  break;
 }
 return (T_ERR);
}
