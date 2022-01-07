
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tbl_node {int part; } ;




 int TBL_PART_OPTS ;
 int tbl_cdata (struct tbl_node*,int,char const*,int) ;
 int tbl_data (struct tbl_node*,int,char const*,int) ;
 int tbl_layout (struct tbl_node*,int,char const*,int) ;
 int tbl_option (struct tbl_node*,int,char const*,int*) ;

void
tbl_read(struct tbl_node *tbl, int ln, const char *p, int pos)
{
 const char *cp;
 int active;







 if (tbl->part == TBL_PART_OPTS) {
  tbl->part = 128;
  active = 1;
  for (cp = p + pos; *cp != '\0'; cp++) {
   switch (*cp) {
   case '(':
    active = 0;
    continue;
   case ')':
    active = 1;
    continue;
   case ';':
    if (active)
     break;
    continue;
   default:
    continue;
   }
   break;
  }
  if (*cp == ';') {
   tbl_option(tbl, ln, p, &pos);
   if (p[pos] == '\0')
    return;
  }
 }



 switch (tbl->part) {
 case 128:
  tbl_layout(tbl, ln, p, pos);
  break;
 case 129:
  tbl_cdata(tbl, ln, p, pos);
  break;
 default:
  tbl_data(tbl, ln, p, pos);
  break;
 }
}
