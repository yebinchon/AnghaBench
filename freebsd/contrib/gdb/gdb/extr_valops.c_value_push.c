
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ BFD_ENDIAN_BIG ;
 scalar_t__ INNER_THAN (int,int) ;
 int PARM_BOUNDARY ;
 scalar_t__ TARGET_BYTE_ORDER ;
 int TARGET_CHAR_BIT ;
 int TYPE_LENGTH (int ) ;
 int VALUE_CONTENTS_ALL (struct value*) ;
 int VALUE_ENCLOSING_TYPE (struct value*) ;
 int write_memory (scalar_t__,int ,int) ;

__attribute__((used)) static CORE_ADDR
value_push (CORE_ADDR sp, struct value *arg)
{
  int len = TYPE_LENGTH (VALUE_ENCLOSING_TYPE (arg));
  int container_len = len;
  int offset;


  if (PARM_BOUNDARY)
    container_len = ((len + PARM_BOUNDARY / TARGET_CHAR_BIT - 1)
       & ~(PARM_BOUNDARY / TARGET_CHAR_BIT - 1));


  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
    offset = container_len - len;
  else
    offset = 0;

  if (INNER_THAN (1, 2))
    {

      sp -= container_len;
      write_memory (sp + offset, VALUE_CONTENTS_ALL (arg), len);
    }
  else
    {

      write_memory (sp + offset, VALUE_CONTENTS_ALL (arg), len);
      sp += container_len;
    }

  return sp;
}
