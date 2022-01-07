
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tbl_dat {char* string; } ;
struct rofftbl {size_t (* slen ) (char const*,int ) ;int arg; } ;
struct roffcol {size_t width; } ;


 int free (void*) ;
 char* mandoc_strdup (char*) ;
 char* strchr (char const*,char) ;
 size_t stub1 (char const*,int ) ;

__attribute__((used)) static size_t
tblcalc_literal(struct rofftbl *tbl, struct roffcol *col,
    const struct tbl_dat *dp, size_t mw)
{
 const char *str;
 const char *beg;
 char *end;
 size_t lsz;
 size_t wsz;
 size_t msz;

 if (dp->string == ((void*)0) || *dp->string == '\0')
  return 0;
 str = mw ? mandoc_strdup(dp->string) : dp->string;
 msz = lsz = 0;
 for (beg = str; beg != ((void*)0) && *beg != '\0'; beg = end) {
  end = mw ? strchr(beg, ' ') : ((void*)0);
  if (end != ((void*)0)) {
   *end++ = '\0';
   while (*end == ' ')
    end++;
  }
  wsz = (*tbl->slen)(beg, tbl->arg);
  if (mw && lsz && lsz + 1 + wsz <= mw)
   lsz += 1 + wsz;
  else
   lsz = wsz;
  if (msz < lsz)
   msz = lsz;
 }
 if (mw)
  free((void *)str);
 if (col != ((void*)0) && col->width < msz)
  col->width = msz;
 return msz;
}
