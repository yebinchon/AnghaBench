
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int col ;
 char spacer ;

__attribute__((used)) static void
LINE_INIT(char c)
{
 spacer = c;
 if (c == '\t')
  col = 8;
 else
  col = 1;
}
