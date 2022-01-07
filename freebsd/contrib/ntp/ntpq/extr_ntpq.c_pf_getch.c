
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int
pf_getch(
 const char ** datap,
 const char * endp
 )
{
 return (*datap != endp)
     ? *(const unsigned char*)*datap
     : '\0';
}
