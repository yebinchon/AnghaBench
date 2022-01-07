
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ln {char const* ascii; } ;


 int mchars ;
 struct ln* ohash_find (int *,int ) ;
 int ohash_qlookupi (int *,char const*,char const**) ;
 size_t strlen (char const*) ;

const char *
mchars_spec2str(const char *p, size_t sz, size_t *rsz)
{
 const struct ln *ln;
 const char *end;

 end = p + sz;
 ln = ohash_find(&mchars, ohash_qlookupi(&mchars, p, &end));
 if (ln == ((void*)0))
  return ((void*)0);

 *rsz = strlen(ln->ascii);
 return ln->ascii;
}
