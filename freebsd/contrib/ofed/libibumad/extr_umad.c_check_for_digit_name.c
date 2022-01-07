
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;


 scalar_t__ isdigit (char const) ;

__attribute__((used)) static int check_for_digit_name(const struct dirent *dent)
{
 const char *p = dent->d_name;
 while (*p && isdigit(*p))
  p++;
 return *p ? 0 : 1;
}
