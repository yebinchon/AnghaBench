
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static inline int st_strcmp(void *key1, void *key2)
{
 return strcmp((const char *)key1, (const char *)key2);
}
