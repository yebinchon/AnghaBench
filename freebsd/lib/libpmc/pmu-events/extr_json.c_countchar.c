
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int countchar(char *map, char c, int end)
{
 int i;
 int count = 0;
 for (i = 0; i < end; i++)
  if (map[i] == c)
   count++;
 return count;
}
