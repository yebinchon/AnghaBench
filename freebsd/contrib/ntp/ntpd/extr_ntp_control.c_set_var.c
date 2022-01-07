
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_short ;
typedef int u_long ;
struct ctl_var {int flags; char* text; } ;


 int EOV ;
 char* add_var (struct ctl_var**,int ,void*) ;
 char* emalloc (int ) ;
 char* erealloc (void*,int ) ;
 int memcpy (char*,char const*,int ) ;

void
set_var(
 struct ctl_var **kv,
 const char *data,
 u_long size,
 u_short def
 )
{
 struct ctl_var *k;
 const char *s;
 const char *t;
 char *td;

 if (((void*)0) == data || !size)
  return;

 k = *kv;
 if (k != ((void*)0)) {
  while (!(EOV & k->flags)) {
   if (((void*)0) == k->text) {
    td = emalloc(size);
    memcpy(td, data, size);
    k->text = td;
    k->flags = def;
    return;
   } else {
    s = data;
    t = k->text;
    while (*t != '=' && *s == *t) {
     s++;
     t++;
    }
    if (*s == *t && ((*t == '=') || !*t)) {
     td = erealloc((void *)(intptr_t)k->text, size);
     memcpy(td, data, size);
     k->text = td;
     k->flags = def;
     return;
    }
   }
   k++;
  }
 }
 td = add_var(kv, size, def);
 memcpy(td, data, size);
}
