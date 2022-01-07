
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONGEST ;
typedef int CORE_ADDR ;


 int DEPRECATED_REGISTER_SIZE ;
 scalar_t__ INNER_THAN (int,int) ;
 int MAX_REGISTER_SIZE ;
 int store_unsigned_integer (char*,int,int ) ;
 int write_memory (int,char*,int) ;

CORE_ADDR
push_word (CORE_ADDR sp, ULONGEST word)
{
  int len = DEPRECATED_REGISTER_SIZE;
  char buffer[MAX_REGISTER_SIZE];

  store_unsigned_integer (buffer, len, word);
  if (INNER_THAN (1, 2))
    {

      sp -= len;
      write_memory (sp, buffer, len);
    }
  else
    {

      write_memory (sp, buffer, len);
      sp += len;
    }

  return sp;
}
