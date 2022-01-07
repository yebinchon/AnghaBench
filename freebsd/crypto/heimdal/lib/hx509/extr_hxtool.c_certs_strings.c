
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hx509_lock ;
typedef int hx509_context ;
typedef int hx509_certs ;
struct TYPE_3__ {int num_strings; int * strings; } ;
typedef TYPE_1__ getarg_strings ;


 int hx509_certs_append (int ,int ,int ,int ) ;
 int hx509_err (int ,int,int,char*,char const*,int ) ;

__attribute__((used)) static void
certs_strings(hx509_context contextp, const char *type, hx509_certs certs,
       hx509_lock lock, const getarg_strings *s)
{
    int i, ret;

    for (i = 0; i < s->num_strings; i++) {
 ret = hx509_certs_append(contextp, certs, lock, s->strings[i]);
 if (ret)
     hx509_err(contextp, 1, ret,
        "hx509_certs_append: %s %s", type, s->strings[i]);
    }
}
