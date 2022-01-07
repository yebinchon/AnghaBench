
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int col ;
 int printf (char*) ;
 char spacer ;

__attribute__((used)) static void
LINE_BREAK(void)
{
 if (spacer != '\t') {
  printf("\n");
  spacer = '\t';
 }
 col = 8;
}
