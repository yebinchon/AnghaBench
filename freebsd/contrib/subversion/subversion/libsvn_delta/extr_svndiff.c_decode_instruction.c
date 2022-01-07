
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int action_code; int length; int offset; } ;
typedef TYPE_1__ svn_txdelta_op_t ;
typedef enum svn_delta_action { ____Placeholder_svn_delta_action } svn_delta_action ;
typedef int apr_size_t ;


 unsigned char* decode_size (int*,unsigned char const*,unsigned char const*) ;
 int svn_txdelta_new ;

__attribute__((used)) static const unsigned char *
decode_instruction(svn_txdelta_op_t *op,
                   const unsigned char *p,
                   const unsigned char *end)
{
  apr_size_t c;
  apr_size_t action;

  if (p == end)
    return ((void*)0);


  c = *p++;


  action = (c >> 6) & 0x3;
  if (action >= 0x3)
      return ((void*)0);



  op->action_code = (enum svn_delta_action)(action);


  op->length = c & 0x3f;
  if (op->length == 0)
    {
      p = decode_size(&op->length, p, end);
      if (p == ((void*)0))
        return ((void*)0);
    }
  if (action != svn_txdelta_new)
    {
      p = decode_size(&op->offset, p, end);
      if (p == ((void*)0))
        return ((void*)0);
    }

  return p;
}
