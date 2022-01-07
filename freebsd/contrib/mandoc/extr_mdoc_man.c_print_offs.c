
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roffsu {scalar_t__ unit; int scale; } ;
typedef int buf ;


 scalar_t__* Bl_stack ;
 int Bl_stack_len ;
 int MMAN_Bk_susp ;
 int MMAN_nl ;
 scalar_t__ SCALE_EN ;
 char* a2roffsu (char const*,struct roffsu*,scalar_t__) ;
 int man_strlen (char const*) ;
 int outflags ;
 int print_line (char*,int ) ;
 int print_word (char const*) ;
 int snprintf (char*,int,char*,int) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void
print_offs(const char *v, int keywords)
{
 char buf[24];
 struct roffsu su;
 const char *end;
 int sz;

 print_line(".RS", MMAN_Bk_susp);


 if (((void*)0) == v || '\0' == *v || (keywords && !strcmp(v, "left")))
  sz = 0;
 else if (keywords && !strcmp(v, "indent"))
  sz = 6;
 else if (keywords && !strcmp(v, "indent-two"))
  sz = 12;
 else {
  end = a2roffsu(v, &su, SCALE_EN);
  if (end == ((void*)0) || *end != '\0')
   sz = man_strlen(v);
  else if (SCALE_EN == su.unit)
   sz = su.scale;
  else {







   print_word(v);
   outflags |= MMAN_nl;
   return;
  }
 }





 if (Bl_stack_len)
  sz += Bl_stack[Bl_stack_len - 1];

 (void)snprintf(buf, sizeof(buf), "%dn", sz);
 print_word(buf);
 outflags |= MMAN_nl;
}
