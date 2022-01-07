
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fscanf (int *,char*,char*) ;

__attribute__((used)) static const char *
fetch_read_word(FILE *f)
{
 static char word[1024];

 if (fscanf(f, " %1023s ", word) != 1)
  return (((void*)0));
 return (word);
}
