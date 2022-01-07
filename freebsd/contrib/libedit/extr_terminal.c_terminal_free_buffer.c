
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int **** wint_t ;


 int el_free (int ******) ;

__attribute__((used)) static void
terminal_free_buffer(wint_t ***bp)
{
 wint_t **b;
 wint_t **bufp;

 if (*bp == ((void*)0))
  return;

 b = *bp;
 *bp = ((void*)0);

 for (bufp = b; *bufp != ((void*)0); bufp++)
  el_free(*bufp);
 el_free(b);
}
