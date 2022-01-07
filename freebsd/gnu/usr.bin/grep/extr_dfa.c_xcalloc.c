
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptr_t ;


 int _ (char*) ;
 int calloc (size_t,size_t) ;
 int dfaerror (int ) ;

__attribute__((used)) static ptr_t
xcalloc (size_t n, size_t s)
{
  ptr_t r = calloc(n, s);

  if (!r)
    dfaerror(_("Memory exhausted"));
  return r;
}
