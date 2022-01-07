
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff {int rentab; int strtab; } ;


 int roff_setstrn (int *,char const*,size_t,char const*,size_t,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void
roff_setstr(struct roff *r, const char *name, const char *string,
 int append)
{
 size_t namesz;

 namesz = strlen(name);
 roff_setstrn(&r->strtab, name, namesz, string,
     string ? strlen(string) : 0, append);
 roff_setstrn(&r->rentab, name, namesz, ((void*)0), 0, 0);
}
