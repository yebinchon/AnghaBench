
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct html {int dummy; } ;


 int print_endline (struct html*) ;
 int print_word (struct html*,char*) ;

void
print_gen_decls(struct html *h)
{
 print_word(h, "<!DOCTYPE html>");
 print_endline(h);
}
