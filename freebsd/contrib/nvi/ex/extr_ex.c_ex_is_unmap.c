
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EXCMDLIST ;
typedef char CHAR_T ;


 size_t C_UNMAP ;
 int const* cmds ;
 int* ex_comm_search (char*,size_t) ;

int
ex_is_unmap(CHAR_T *name, size_t len)
{
 EXCMDLIST const *cp;





 if (name[len - 1] != '!')
  return (0);
 --len;
 return ((cp = ex_comm_search(name, len)) != ((void*)0) &&
     cp == &cmds[C_UNMAP]);
}
