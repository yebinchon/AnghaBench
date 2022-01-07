
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rckey {struct rckey* rk_name; struct rckey* rk_value; } ;


 int free (struct rckey*) ;

__attribute__((used)) static void
rc_key_free(struct rckey *p)
{
 free(p->rk_value);
 free(p->rk_name);
 free(p);
}
