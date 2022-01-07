
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_request ;
typedef int hx509_context ;
struct TYPE_3__ {scalar_t__ name; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 int free (char*) ;
 int hx509_name_to_string (scalar_t__,char**) ;
 int hx509_set_error_string (int ,int ,int,char*) ;

int
_hx509_request_print(hx509_context context, hx509_request req, FILE *f)
{
    int ret;

    if (req->name) {
 char *subject;
 ret = hx509_name_to_string(req->name, &subject);
 if (ret) {
     hx509_set_error_string(context, 0, ret, "Failed to print name");
     return ret;
 }
        fprintf(f, "name: %s\n", subject);
 free(subject);
    }

    return 0;
}
