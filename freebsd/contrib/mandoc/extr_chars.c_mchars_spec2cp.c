
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ln {int unicode; } ;


 int mchars ;
 struct ln* ohash_find (int *,int ) ;
 int ohash_qlookupi (int *,char const*,char const**) ;

int
mchars_spec2cp(const char *p, size_t sz)
{
 const struct ln *ln;
 const char *end;

 end = p + sz;
 ln = ohash_find(&mchars, ohash_qlookupi(&mchars, p, &end));
 return ln != ((void*)0) ? ln->unicode : -1;
}
