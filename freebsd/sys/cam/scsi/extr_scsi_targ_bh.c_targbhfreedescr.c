
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct targbh_cmd_desc {struct targbh_cmd_desc* backing_store; } ;


 int M_SCSIBH ;
 int free (struct targbh_cmd_desc*,int ) ;

__attribute__((used)) static void
targbhfreedescr(struct targbh_cmd_desc *descr)
{
 free(descr->backing_store, M_SCSIBH);
 free(descr, M_SCSIBH);
}
