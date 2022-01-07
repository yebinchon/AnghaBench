
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const tab; } ;
struct tbl_node {void* part; TYPE_3__* last_span; TYPE_1__ opts; } ;
struct tbl_dat {int block; char const* string; TYPE_2__* layout; int pos; } ;
struct TYPE_6__ {struct tbl_dat* last; } ;
struct TYPE_5__ {scalar_t__ pos; } ;


 int MANDOCERR_TBLDATA_SPAN ;
 scalar_t__ TBL_CELL_DOWN ;
 int TBL_DATA_DATA ;
 void* TBL_PART_DATA ;
 int getdata (struct tbl_node*,TYPE_3__*,int,char const*,int*) ;
 int mandoc_msg (int ,int,int,char*,char const*) ;
 char const* mandoc_realloc (char const*,size_t) ;
 char const* mandoc_strdup (char const*) ;
 int strlcat (char const*,char const*,size_t) ;
 int strlen (char const*) ;

void
tbl_cdata(struct tbl_node *tbl, int ln, const char *p, int pos)
{
 struct tbl_dat *dat;
 size_t sz;

 dat = tbl->last_span->last;

 if (p[pos] == 'T' && p[pos + 1] == '}') {
  pos += 2;
  if (p[pos] == tbl->opts.tab) {
   tbl->part = TBL_PART_DATA;
   pos++;
   while (p[pos] != '\0')
    getdata(tbl, tbl->last_span, ln, p, &pos);
   return;
  } else if (p[pos] == '\0') {
   tbl->part = TBL_PART_DATA;
   return;
  }


 }

 dat->pos = TBL_DATA_DATA;
 dat->block = 1;

 if (dat->string != ((void*)0)) {
  sz = strlen(p + pos) + strlen(dat->string) + 2;
  dat->string = mandoc_realloc(dat->string, sz);
  (void)strlcat(dat->string, " ", sz);
  (void)strlcat(dat->string, p + pos, sz);
 } else
  dat->string = mandoc_strdup(p + pos);

 if (dat->layout->pos == TBL_CELL_DOWN)
  mandoc_msg(MANDOCERR_TBLDATA_SPAN,
      ln, pos, "%s", dat->string);
}
