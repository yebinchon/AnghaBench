
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tbl_opts {char const decimal; } ;
struct tbl_dat {char* string; } ;
struct rofftbl {size_t (* slen ) (char*,int ) ;int arg; } ;
struct roffcol {size_t width; size_t decimal; size_t nwidth; } ;


 scalar_t__ isdigit (unsigned char) ;
 size_t stub1 (char*,int ) ;
 size_t stub2 (char*,int ) ;

__attribute__((used)) static size_t
tblcalc_number(struct rofftbl *tbl, struct roffcol *col,
  const struct tbl_opts *opts, const struct tbl_dat *dp)
{
 const char *cp, *lastdigit, *lastpoint;
 size_t intsz, totsz;
 char buf[2];

 if (dp->string == ((void*)0) || *dp->string == '\0')
  return 0;

 totsz = (*tbl->slen)(dp->string, tbl->arg);
 if (col == ((void*)0))
  return totsz;







 lastdigit = lastpoint = ((void*)0);
 for (cp = dp->string; cp[0] != '\0'; cp++) {
  if (cp[0] == '\\' && cp[1] == '&') {
   lastdigit = lastpoint = cp;
   break;
  } else if (cp[0] == opts->decimal &&
      (isdigit((unsigned char)cp[1]) ||
       (cp > dp->string && isdigit((unsigned char)cp[-1]))))
   lastpoint = cp;
  else if (isdigit((unsigned char)cp[0]))
   lastdigit = cp;
 }



 if (lastdigit == ((void*)0)) {
  if (col != ((void*)0) && col->width < totsz)
   col->width = totsz;
  return totsz;
 }



 if (lastpoint == ((void*)0))
  lastpoint = lastdigit + 1;
 intsz = 0;
 buf[1] = '\0';
 for (cp = dp->string; cp < lastpoint; cp++) {
  buf[0] = cp[0];
  intsz += (*tbl->slen)(buf, tbl->arg);
 }







 if (intsz > col->decimal) {
  col->nwidth += intsz - col->decimal;
  col->decimal = intsz;
 } else
  totsz += col->decimal - intsz;



 if (totsz > col->nwidth)
  col->nwidth = totsz;
 return totsz;
}
