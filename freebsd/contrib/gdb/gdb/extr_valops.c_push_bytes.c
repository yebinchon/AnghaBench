
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 scalar_t__ INNER_THAN (int,int) ;
 int write_memory (int,char*,int) ;

CORE_ADDR
push_bytes (CORE_ADDR sp, char *buffer, int len)
{
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
