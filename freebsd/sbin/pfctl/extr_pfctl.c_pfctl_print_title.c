
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ first_title ;
 int printf (char*,...) ;

void
pfctl_print_title(char *title)
{
 if (!first_title)
  printf("\n");
 first_title = 0;
 printf("%s\n", title);
}
