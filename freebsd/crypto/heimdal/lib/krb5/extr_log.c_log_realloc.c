
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct facility {int dummy; } ;
struct TYPE_3__ {int len; struct facility* val; } ;
typedef TYPE_1__ krb5_log_facility ;


 struct facility* realloc (struct facility*,int) ;

__attribute__((used)) static struct facility*
log_realloc(krb5_log_facility *f)
{
    struct facility *fp;
    fp = realloc(f->val, (f->len + 1) * sizeof(*f->val));
    if(fp == ((void*)0))
 return ((void*)0);
    f->len++;
    f->val = fp;
    fp += f->len - 1;
    return fp;
}
