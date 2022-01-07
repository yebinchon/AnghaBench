
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int dummy; } ;


 int ASCII_NBRSP ;
 int wcwidth (int) ;

__attribute__((used)) static size_t
locale_width(const struct termp *p, int c)
{
 int rc;

 if (c == ASCII_NBRSP)
  c = ' ';
 rc = wcwidth(c);
 if (rc < 0)
  rc = 0;
 return rc;
}
