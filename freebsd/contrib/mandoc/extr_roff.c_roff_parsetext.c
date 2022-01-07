
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff {TYPE_1__* man; } ;
struct buf {char* buf; int sz; } ;
typedef enum mandoc_esc { ____Placeholder_mandoc_esc } mandoc_esc ;
struct TYPE_2__ {int next; int * last; } ;


 char ASCII_HYPH ;
 int ESCAPE_ERROR ;
 int ROFF_CONT ;
 int ROFF_NEXT_SIBLING ;
 int ROFF_REPARSE ;
 int free (char*) ;
 scalar_t__ isalpha (unsigned char) ;
 int mandoc_asprintf (char**,char*,char*,char*) ;
 int mandoc_escape (char const**,int *,int *) ;
 int roffce_lines ;
 int * roffce_node ;
 int roffit_lines ;
 char* roffit_macro ;
 size_t strcspn (char*,char*) ;

__attribute__((used)) static int
roff_parsetext(struct roff *r, struct buf *buf, int pos, int *offs)
{
 size_t sz;
 const char *start;
 char *p;
 int isz;
 enum mandoc_esc esc;



 if (roffit_lines == 1) {
  isz = mandoc_asprintf(&p, "%s\n.%s", buf->buf, roffit_macro);
  free(buf->buf);
  buf->buf = p;
  buf->sz = isz + 1;
  *offs = 0;
  free(roffit_macro);
  roffit_lines = 0;
  return ROFF_REPARSE;
 } else if (roffit_lines > 1)
  --roffit_lines;

 if (roffce_node != ((void*)0) && buf->buf[pos] != '\0') {
  if (roffce_lines < 1) {
   r->man->last = roffce_node;
   r->man->next = ROFF_NEXT_SIBLING;
   roffce_lines = 0;
   roffce_node = ((void*)0);
  } else
   roffce_lines--;
 }



 start = p = buf->buf + pos;

 while (*p != '\0') {
  sz = strcspn(p, "-\\");
  p += sz;

  if (*p == '\0')
   break;

  if (*p == '\\') {

   p++;
   esc = mandoc_escape((const char **)&p, ((void*)0), ((void*)0));
   if (esc == ESCAPE_ERROR)
    break;
   while (*p == '-')
    p++;
   continue;
  } else if (p == start) {
   p++;
   continue;
  }

  if (isalpha((unsigned char)p[-1]) &&
      isalpha((unsigned char)p[1]))
   *p = ASCII_HYPH;
  p++;
 }
 return ROFF_CONT;
}
