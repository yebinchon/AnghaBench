
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int read_number_from_line(const char *line, int *value)
{
 const char *ptr;

 ptr = strchr(line, ':');
 if (!ptr)
  return 1;

 ++ptr;

 *value = atoi(ptr);
 return 0;
}
