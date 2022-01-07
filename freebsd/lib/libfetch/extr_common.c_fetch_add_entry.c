
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url_stat {int dummy; } ;
struct url_ent {scalar_t__* name; int stat; } ;


 int ENOMEM ;
 int PATH_MAX ;
 int errno ;
 int fetch_syserr () ;
 int memcpy (int *,struct url_stat*,int) ;
 struct url_ent* reallocarray (struct url_ent*,int,int) ;
 int snprintf (scalar_t__*,int ,char*,char const*) ;

int
fetch_add_entry(struct url_ent **p, int *size, int *len,
    const char *name, struct url_stat *us)
{
 struct url_ent *tmp;

 if (*p == ((void*)0)) {
  *size = 0;
  *len = 0;
 }

 if (*len >= *size - 1) {
  tmp = reallocarray(*p, *size * 2 + 1, sizeof(**p));
  if (tmp == ((void*)0)) {
   errno = ENOMEM;
   fetch_syserr();
   return (-1);
  }
  *size = (*size * 2 + 1);
  *p = tmp;
 }

 tmp = *p + *len;
 snprintf(tmp->name, PATH_MAX, "%s", name);
 memcpy(&tmp->stat, us, sizeof(*us));

 (*len)++;
 (++tmp)->name[0] = 0;

 return (0);
}
