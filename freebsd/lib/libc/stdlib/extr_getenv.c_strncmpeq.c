
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static inline bool
strncmpeq(const char *nameValue, const char *name, size_t nameLen)
{
 if (strncmp(nameValue, name, nameLen) == 0 && nameValue[nameLen] == '=')
  return (1);

 return (0);
}
