
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef int EditLine ;


 int rl_getc_function (int ) ;
 int rl_instream ;
 int stub1 (int ) ;

__attribute__((used)) static int

_getc_function(EditLine *el __attribute__((__unused__)), wchar_t *c)
{
 int i;

 i = (*rl_getc_function)(rl_instream);
 if (i == -1)
  return 0;
 *c = (wchar_t)i;
 return 1;
}
