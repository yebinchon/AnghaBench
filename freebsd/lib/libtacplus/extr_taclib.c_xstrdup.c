
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tac_handle {int dummy; } ;


 int generr (struct tac_handle*,char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static char *
xstrdup(struct tac_handle *h, const char *s)
{
 char *r;

 if ((r = strdup(s)) == ((void*)0))
  generr(h, "Out of memory");
 return r;
}
