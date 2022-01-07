
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hx509_lock ;
struct TYPE_3__ {int num_strings; int * strings; } ;
typedef TYPE_1__ getarg_strings ;


 int errx (int,char*,int ,int) ;
 int hx509_lock_command_string (int ,int ) ;

__attribute__((used)) static void
lock_strings(hx509_lock lock, getarg_strings *pass)
{
    int i;
    for (i = 0; i < pass->num_strings; i++) {
 int ret = hx509_lock_command_string(lock, pass->strings[i]);
 if (ret)
     errx(1, "hx509_lock_command_string: %s: %d",
   pass->strings[i], ret);
    }
}
