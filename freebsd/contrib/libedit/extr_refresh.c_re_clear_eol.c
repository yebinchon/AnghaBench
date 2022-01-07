
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EditLine ;


 int ELRE_DEBUG (int,int ) ;
 int __F ;
 int terminal_clear_EOL (int *,int) ;

__attribute__((used)) static void
re_clear_eol(EditLine *el, int fx, int sx, int diff)
{

 ELRE_DEBUG(1, (__F, "re_clear_eol sx %d, fx %d, diff %d\n",
     sx, fx, diff));

 if (fx < 0)
  fx = -fx;
 if (sx < 0)
  sx = -sx;
 if (fx > diff)
  diff = fx;
 if (sx > diff)
  diff = sx;

 ELRE_DEBUG(1, (__F, "re_clear_eol %d\n", diff));
 terminal_clear_EOL(el, diff);
}
