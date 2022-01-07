
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uchar_t ;
struct TYPE_3__ {int data_type; int name; } ;
typedef TYPE_1__ kstat_named_t ;


 int kstat_set_string (int ,char const*) ;

void
kstat_named_init(kstat_named_t *knp, const char *name, uchar_t data_type)
{

 kstat_set_string(knp->name, name);
 knp->data_type = data_type;
}
