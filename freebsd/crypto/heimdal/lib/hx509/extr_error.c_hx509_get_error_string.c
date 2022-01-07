
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rk_strpool {int dummy; } ;
typedef TYPE_1__* hx509_error ;
typedef TYPE_2__* hx509_context ;
struct TYPE_5__ {TYPE_1__* error; int et_list; } ;
struct TYPE_4__ {int code; struct TYPE_4__* next; int msg; } ;


 int asprintf (char**,char*,int) ;
 char* com_right (int ,int) ;
 char* rk_strpoolcollect (struct rk_strpool*) ;
 struct rk_strpool* rk_strpoolprintf (struct rk_strpool*,char*,int ,char*) ;
 char* strdup (char const*) ;
 char* strerror (int) ;

char *
hx509_get_error_string(hx509_context context, int error_code)
{
    struct rk_strpool *p = ((void*)0);
    hx509_error msg = context->error;

    if (msg == ((void*)0) || msg->code != error_code) {
 const char *cstr;
 char *str;

 cstr = com_right(context->et_list, error_code);
 if (cstr)
     return strdup(cstr);
 cstr = strerror(error_code);
 if (cstr)
     return strdup(cstr);
 if (asprintf(&str, "<unknown error: %d>", error_code) == -1)
     return ((void*)0);
 return str;
    }

    for (msg = context->error; msg; msg = msg->next)
 p = rk_strpoolprintf(p, "%s%s", msg->msg,
        msg->next != ((void*)0) ? "; " : "");

    return rk_strpoolcollect(p);
}
