
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 scalar_t__* Bl_stack ;
 int Bl_stack_len ;
 int* Bl_stack_post ;
 int MMAN_Bk_susp ;
 int print_line (char*,int ) ;
 int print_word (char*) ;
 int snprintf (char*,int,char*,scalar_t__) ;

__attribute__((used)) static void
mid_it(void)
{
 char buf[24];


 if (0 == Bl_stack_len || 0 == Bl_stack[Bl_stack_len - 1])
  return;


 if (Bl_stack_post[Bl_stack_len - 1])
  return;


 print_line(".RS", MMAN_Bk_susp);
 (void)snprintf(buf, sizeof(buf), "%dn",
     Bl_stack[Bl_stack_len - 1]);
 print_word(buf);


 Bl_stack_post[Bl_stack_len - 1] = 1;
}
