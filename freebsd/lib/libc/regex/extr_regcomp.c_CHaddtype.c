
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ wint_t ;
typedef int wctype_t ;
struct parse {int dummy; } ;
struct TYPE_4__ {scalar_t__ ntypes; int * types; } ;
typedef TYPE_1__ cset ;


 int CHadd (struct parse*,TYPE_1__*,scalar_t__) ;
 scalar_t__ NC ;
 int REG_ESPACE ;
 int SETERROR (int ) ;
 scalar_t__ iswctype (scalar_t__,int ) ;
 int * reallocarray (int *,scalar_t__,int) ;

__attribute__((used)) static void
CHaddtype(struct parse *p, cset *cs, wctype_t wct)
{
 wint_t i;
 wctype_t *newtypes;

 for (i = 0; i < NC; i++)
  if (iswctype(i, wct))
   CHadd(p, cs, i);
 newtypes = reallocarray(cs->types, cs->ntypes + 1,
     sizeof(*cs->types));
 if (newtypes == ((void*)0)) {
  SETERROR(REG_ESPACE);
  return;
 }
 cs->types = newtypes;
 cs->types[cs->ntypes++] = wct;
}
