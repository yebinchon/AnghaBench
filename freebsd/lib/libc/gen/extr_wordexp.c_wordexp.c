
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ we_nbytes; int * we_strings; int * we_wordv; scalar_t__ we_wordc; } ;
typedef TYPE_1__ wordexp_t ;


 int WRDE_APPEND ;
 int WRDE_REUSE ;
 int we_askshell (char const*,TYPE_1__*,int) ;
 int we_check (char const*) ;
 int wordfree (TYPE_1__*) ;

int
wordexp(const char * __restrict words, wordexp_t * __restrict we, int flags)
{
 int error;

 if (flags & WRDE_REUSE)
  wordfree(we);
 if ((flags & WRDE_APPEND) == 0) {
  we->we_wordc = 0;
  we->we_wordv = ((void*)0);
  we->we_strings = ((void*)0);
  we->we_nbytes = 0;
 }
 if ((error = we_check(words)) != 0) {
  wordfree(we);
  return (error);
 }
 if ((error = we_askshell(words, we, flags)) != 0) {
  wordfree(we);
  return (error);
 }
 return (0);
}
