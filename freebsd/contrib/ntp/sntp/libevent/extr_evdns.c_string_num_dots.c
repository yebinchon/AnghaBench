
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;

__attribute__((used)) static int
string_num_dots(const char *s) {
 int count = 0;
 while ((s = strchr(s, '.'))) {
  s++;
  count++;
 }
 return count;
}
