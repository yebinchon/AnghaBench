
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct directory {scalar_t__ di_count; struct directory* di_name; scalar_t__ di_prev; scalar_t__ di_next; } ;


 int xfree (struct directory*) ;

void
dfree(struct directory *dp)
{

    if (dp->di_count != 0) {
 dp->di_next = dp->di_prev = 0;
    }
    else {
 xfree(dp->di_name);
 xfree(dp);
    }
}
