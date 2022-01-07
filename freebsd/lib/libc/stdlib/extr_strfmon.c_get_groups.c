
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char CHAR_MAX ;

__attribute__((used)) static int
get_groups(int size, char *grouping) {

 int chars = 0;

 if (*grouping == CHAR_MAX || *grouping <= 0)
  return (0);

 while (size > (int)*grouping) {
  chars++;
  size -= (int)*grouping++;

  if (*grouping == CHAR_MAX)
   break;

  if (*grouping == 0) {
   chars += (size - 1) / *(grouping - 1);
   break;
  }
 }
 return (chars);
}
