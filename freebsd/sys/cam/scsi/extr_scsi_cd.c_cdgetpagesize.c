
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_3__ {int page; int page_size; } ;


 TYPE_1__* cd_page_size_table ;
 size_t nitems (TYPE_1__*) ;

__attribute__((used)) static int
cdgetpagesize(int page_num)
{
 u_int i;

 for (i = 0; i < nitems(cd_page_size_table); i++) {
  if (cd_page_size_table[i].page == page_num)
   return (cd_page_size_table[i].page_size);
 }

 return (-1);
}
