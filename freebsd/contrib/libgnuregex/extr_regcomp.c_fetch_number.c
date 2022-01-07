
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int reg_syntax_t ;
struct TYPE_5__ {unsigned char c; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ opr; } ;
typedef TYPE_2__ re_token_t ;
typedef int re_string_t ;


 scalar_t__ BE (int,int ) ;
 scalar_t__ CHARACTER ;
 scalar_t__ END_OF_RE ;
 scalar_t__ OP_CLOSE_DUP_NUM ;
 int RE_DUP_MAX ;
 int fetch_token (TYPE_2__*,int *,int ) ;

__attribute__((used)) static int
fetch_number (re_string_t *input, re_token_t *token, reg_syntax_t syntax)
{
  int num = -1;
  unsigned char c;
  while (1)
    {
      fetch_token (token, input, syntax);
      c = token->opr.c;
      if (BE (token->type == END_OF_RE, 0))
 return -2;
      if (token->type == OP_CLOSE_DUP_NUM || c == ',')
 break;
      num = ((token->type != CHARACTER || c < '0' || '9' < c || num == -2)
      ? -2 : ((num == -1) ? c - '0' : num * 10 + c - '0'));
      num = (num > RE_DUP_MAX) ? -2 : num;
    }
  return num;
}
