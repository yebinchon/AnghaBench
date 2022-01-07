
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int putchr (int ) ;

__attribute__((used)) static void
putstr(const char *s)
{

 while (*s)
  putchr(*s++);
}
