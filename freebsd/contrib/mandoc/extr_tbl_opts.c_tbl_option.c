
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opts; } ;
struct tbl_node {TYPE_1__ opts; } ;
struct TYPE_4__ {char* name; int key; } ;


 int KEY_MAXKEYS ;
 int MANDOCERR_TBLOPT_ALPHA ;
 int MANDOCERR_TBLOPT_BAD ;
 int arg (struct tbl_node*,int,char const*,int*,int) ;
 scalar_t__ isalpha (unsigned char) ;
 TYPE_2__* keys ;
 int mandoc_msg (int ,int,int,char*,char const,...) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;

void
tbl_option(struct tbl_node *tbl, int ln, const char *p, int *offs)
{
 int i, pos, len;

 pos = *offs;
 for (;;) {
  while (p[pos] == ' ' || p[pos] == '\t' || p[pos] == ',')
   pos++;

  if (p[pos] == ';') {
   *offs = pos + 1;
   return;
  }



  len = 0;
  while (isalpha((unsigned char)p[pos + len]))
   len++;

  if (len == 0) {
   mandoc_msg(MANDOCERR_TBLOPT_ALPHA,
       ln, pos, "%c", p[pos]);
   pos++;
   continue;
  }



  i = 0;
  while (i < KEY_MAXKEYS &&
      (strncasecmp(p + pos, keys[i].name, len) ||
       keys[i].name[len] != '\0'))
   i++;

  if (i == KEY_MAXKEYS) {
   mandoc_msg(MANDOCERR_TBLOPT_BAD,
       ln, pos, "%.*s", len, p + pos);
   pos += len;
   continue;
  }



  pos += len;
  if (keys[i].key)
   tbl->opts.opts |= keys[i].key;
  else
   arg(tbl, ln, p, &pos, i);
 }
}
