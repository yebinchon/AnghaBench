
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyent {int ty_name; } ;


 int endttyent () ;
 struct ttyent* getttyent () ;
 int setttyent () ;
 int strcmp (char const*,int ) ;
 scalar_t__ strncmp (char const*,char*,int) ;

struct ttyent *
getttynam(const char *tty)
{
 struct ttyent *t;

 if (strncmp(tty, "/dev/", 5) == 0)
  tty += 5;
 setttyent();
 while ( (t = getttyent()) )
  if (!strcmp(tty, t->ty_name))
   break;
 endttyent();
 return (t);
}
