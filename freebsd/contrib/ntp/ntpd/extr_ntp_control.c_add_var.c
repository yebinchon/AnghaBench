
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_long ;
struct ctl_var {int code; char* text; int flags; } ;


 int EOV ;
 int count_var (struct ctl_var*) ;
 char* emalloc (int ) ;
 struct ctl_var* erealloc (struct ctl_var*,int) ;

char *
add_var(
 struct ctl_var **kv,
 u_long size,
 u_short def
 )
{
 u_short c;
 struct ctl_var *k;
 char * buf;

 c = count_var(*kv);
 *kv = erealloc(*kv, (c + 2) * sizeof(**kv));
 k = *kv;
 buf = emalloc(size);
 k[c].code = c;
 k[c].text = buf;
 k[c].flags = def;
 k[c + 1].code = 0;
 k[c + 1].text = ((void*)0);
 k[c + 1].flags = EOV;

 return buf;
}
