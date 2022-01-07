
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct segment {double m; double y; double x; } ;
struct gen_sc {int dummy; } ;


 double INFINITY ;
 struct segment* LIST_NEXT (struct segment*,int ) ;
 int _next ;
 struct segment* gsc_getentry (struct gen_sc*,double) ;

__attribute__((used)) static int
gsc_add_seg(struct gen_sc *gsc, double x, double y, double d, double m)
{
 struct segment *start, *end, *s;
 double x2;

 if (d == INFINITY)
  x2 = INFINITY;
 else
  x2 = x + d;
 start = gsc_getentry(gsc, x);
 end = gsc_getentry(gsc, x2);
 if (start == ((void*)0) || end == ((void*)0))
  return (-1);

 for (s = start; s != end; s = LIST_NEXT(s, _next)) {
  s->m += m;
  s->y += y + (s->x - x) * m;
 }

 end = gsc_getentry(gsc, INFINITY);
 for (; s != end; s = LIST_NEXT(s, _next)) {
  s->y += m * d;
 }

 return (0);
}
