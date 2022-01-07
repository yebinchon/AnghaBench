
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyent {int ty_status; } ;


 struct ttyent* getttynam (char const*) ;

__attribute__((used)) static int
isttystat(const char *tty, int flag)
{
 struct ttyent *t;

 return ((t = getttynam(tty)) == ((void*)0)) ? 0 : !!(t->ty_status & flag);
}
