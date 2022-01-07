
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int bcheck2 (int ,char,char) ;
 int bclass (int) ;
 int bracecnt ;
 int brackcnt ;
 int input () ;
 int parencnt ;

void bracecheck(void)
{
 int c;
 static int beenhere = 0;

 if (beenhere++)
  return;
 while ((c = input()) != EOF && c != '\0')
  bclass(c);
 bcheck2(bracecnt, '{', '}');
 bcheck2(brackcnt, '[', ']');
 bcheck2(parencnt, '(', ')');
}
