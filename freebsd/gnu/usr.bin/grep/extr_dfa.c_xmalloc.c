
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptr_t ;


 int _ (char*) ;
 int assert (int) ;
 int dfaerror (int ) ;
 int malloc (size_t) ;

__attribute__((used)) static ptr_t
xmalloc (size_t n)
{
  ptr_t r = malloc(n);

  assert(n != 0);
  if (!r)
    dfaerror(_("Memory exhausted"));
  return r;
}
