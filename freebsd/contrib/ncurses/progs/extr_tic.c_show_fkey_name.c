
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ keycode; char* name; } ;
typedef TYPE_1__ NAME_VALUE ;


 int fprintf (int ,char*,char*) ;
 char* keyname (scalar_t__) ;
 int stderr ;

__attribute__((used)) static void
show_fkey_name(NAME_VALUE * data)
{
    if (data->keycode > 0) {
 fprintf(stderr, " %s", keyname(data->keycode));
 fprintf(stderr, " (capability \"%s\")", data->name);
    } else {
 fprintf(stderr, " capability \"%s\"", data->name);
    }
}
