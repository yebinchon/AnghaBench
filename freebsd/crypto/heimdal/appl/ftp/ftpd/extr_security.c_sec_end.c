
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum protection_level { ____Placeholder_protection_level } protection_level ;
struct TYPE_2__ {int size; int (* end ) (int *) ;} ;


 int * app_data ;
 int data_prot ;
 int free (int *) ;
 TYPE_1__* mech ;
 int memset (int *,int ,int ) ;
 scalar_t__ sec_complete ;
 int stub1 (int *) ;

void
sec_end(void)
{
    if (mech != ((void*)0)) {
 if(mech->end)
     (*mech->end)(app_data);
 if (app_data != ((void*)0)) {
     memset(app_data, 0, mech->size);
     free(app_data);
     app_data = ((void*)0);
 }
    }
    sec_complete = 0;
    data_prot = (enum protection_level)0;
}
