
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
count_columns(char **list)
{
    int result = 0;
    if (list != 0) {
 while (*list++) {
     ++result;
 }
    }
    return result;
}
