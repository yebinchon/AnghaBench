
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int dummy; } ;


 int ASCII_BREAK ;

__attribute__((used)) static size_t
ascii_width(const struct termp *p, int c)
{
 return c != ASCII_BREAK;
}
