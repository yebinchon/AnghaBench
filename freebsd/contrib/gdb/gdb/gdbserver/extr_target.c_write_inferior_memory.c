
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* write_memory ) (int ,char*,int) ;} ;
typedef int CORE_ADDR ;


 int check_mem_write (int ,char*,int) ;
 int free (char*) ;
 char* malloc (int) ;
 int memcpy (char*,char const*,int) ;
 int stub1 (int ,char*,int) ;
 TYPE_1__* the_target ;

int
write_inferior_memory (CORE_ADDR memaddr, const char *myaddr, int len)
{



  static char *buffer = 0;
  int res;

  if (buffer != ((void*)0))
    free (buffer);

  buffer = malloc (len);
  memcpy (buffer, myaddr, len);
  check_mem_write (memaddr, buffer, len);
  res = (*the_target->write_memory) (memaddr, buffer, len);
  free (buffer);
  buffer = ((void*)0);

  return res;
}
