
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EXCMDLIST ;
typedef int CHAR_T ;


 size_t C_ABBR ;
 size_t C_UNABBREVIATE ;
 int const* cmds ;
 int* ex_comm_search (int *,size_t) ;

int
ex_is_abbrev(CHAR_T *name, size_t len)
{
 EXCMDLIST const *cp;

 return ((cp = ex_comm_search(name, len)) != ((void*)0) &&
     (cp == &cmds[C_ABBR] || cp == &cmds[C_UNABBREVIATE]));
}
