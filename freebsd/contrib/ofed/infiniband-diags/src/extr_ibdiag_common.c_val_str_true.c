
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int ) ;

__attribute__((used)) static inline int val_str_true(const char *val_str)
{
 return ((strncmp(val_str, "TRUE", strlen("TRUE")) == 0) ||
  (strncmp(val_str, "true", strlen("true")) == 0));
}
