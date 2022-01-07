
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
struct TYPE_4__ {int principal; int time; } ;
typedef TYPE_1__ Event ;


 int context ;
 scalar_t__ krb5_parse_name (int ,char*,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int parse_time_string (int *,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
parse_event(Event *ev, char *s)
{
    krb5_error_code ret;
    char *p;

    if(strcmp(s, "-") == 0)
 return 0;
    memset(ev, 0, sizeof(*ev));
    p = strsep(&s, ":");
    if(parse_time_string(&ev->time, p) != 1)
 return -1;
    p = strsep(&s, ":");
    ret = krb5_parse_name(context, p, &ev->principal);
    if (ret)
 return -1;
    return 1;
}
