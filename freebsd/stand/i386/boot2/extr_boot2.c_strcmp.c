
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int
strcmp(const char *s1, const char *s2)
{

 for (; *s1 == *s2 && *s1; s1++, s2++);
 return ((unsigned char)*s1 - (unsigned char)*s2);
}
