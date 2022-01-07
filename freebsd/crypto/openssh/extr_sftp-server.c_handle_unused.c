
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int next_unused; int use; } ;


 int HANDLE_UNUSED ;
 int first_unused_handle ;
 TYPE_1__* handles ;

__attribute__((used)) static void handle_unused(int i)
{
 handles[i].use = HANDLE_UNUSED;
 handles[i].next_unused = first_unused_handle;
 first_unused_handle = i;
}
