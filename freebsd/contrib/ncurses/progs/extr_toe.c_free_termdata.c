
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* description; struct TYPE_3__* term_name; } ;


 int free (TYPE_1__*) ;
 scalar_t__ len_termdata ;
 TYPE_1__* ptr_termdata ;
 size_t use_termdata ;

__attribute__((used)) static void
free_termdata(void)
{
    if (ptr_termdata != 0) {
 while (use_termdata != 0) {
     --use_termdata;
     free(ptr_termdata[use_termdata].term_name);
     free(ptr_termdata[use_termdata].description);
 }
 free(ptr_termdata);
 ptr_termdata = 0;
    }
    use_termdata = 0;
    len_termdata = 0;
}
