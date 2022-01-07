
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roffsu {scalar_t__ unit; int scale; } ;
struct roff_node {scalar_t__ type; char* string; } ;
struct mdoc_bl {char* width; scalar_t__ type; int count; } ;
typedef int buf ;


 int* Bl_stack ;
 int Bl_stack_len ;
 scalar_t__ LIST_enum ;
 scalar_t__ LIST_hang ;
 scalar_t__ LIST_tag ;
 scalar_t__ ROFFT_TEXT ;
 scalar_t__ SCALE_EN ;
 int SCALE_MAX ;
 int TPremain ;
 char* a2roffsu (char*,struct roffsu*,int ) ;
 int man_strlen (char*) ;
 int mid_it () ;
 int print_block (char*,int ) ;
 int print_word (char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
print_width(const struct mdoc_bl *bl, const struct roff_node *child)
{
 char buf[24];
 struct roffsu su;
 const char *end;
 int numeric, remain, sz, chsz;

 numeric = 1;
 remain = 0;


 if (bl->width == ((void*)0))
  sz = (bl->type == LIST_hang) ? 6 : 0;
 else {
  end = a2roffsu(bl->width, &su, SCALE_MAX);
  if (end == ((void*)0) || *end != '\0')
   sz = man_strlen(bl->width);
  else if (SCALE_EN == su.unit)
   sz = su.scale;
  else {
   sz = 0;
   numeric = 0;
  }
 }


 if (bl->type == LIST_enum)
  chsz = (bl->count > 8) + 1;
 else if (child != ((void*)0) && child->type == ROFFT_TEXT)
  chsz = man_strlen(child->string);
 else
  chsz = 0;


 mid_it();





 Bl_stack[Bl_stack_len++] = sz + 2;


 if (chsz > sz && bl->type != LIST_tag)
  print_block(".HP", 0);
 else {
  print_block(".TP", 0);
  remain = sz + 2;
 }
 if (numeric) {
  (void)snprintf(buf, sizeof(buf), "%dn", sz + 2);
  print_word(buf);
 } else
  print_word(bl->width);
 TPremain = remain;
}
