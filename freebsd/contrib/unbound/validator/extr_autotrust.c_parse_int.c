
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static unsigned int
parse_int(char* line, int* ret)
{
 char *e;
 unsigned int x = (unsigned int)strtol(line, &e, 10);
 if(line == e) {
  *ret = -1;
  return 0;
 }
 *ret = 1;
 return x;
}
