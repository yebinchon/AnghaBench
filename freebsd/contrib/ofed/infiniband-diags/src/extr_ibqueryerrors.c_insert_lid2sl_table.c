
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sa_query_result {unsigned int result_cnt; int p_result_madw; } ;
struct TYPE_3__ {int dlid; } ;
typedef TYPE_1__ ib_path_rec_t ;


 size_t cl_ntoh16 (int ) ;
 int ib_path_rec_sl (TYPE_1__*) ;
 int * lid2sl_table ;
 scalar_t__ sa_get_query_rec (int ,unsigned int) ;

__attribute__((used)) static void insert_lid2sl_table(struct sa_query_result *r)
{
    unsigned int i;
    for (i = 0; i < r->result_cnt; i++) {
     ib_path_rec_t *p_pr = (ib_path_rec_t *)sa_get_query_rec(r->p_result_madw, i);
     lid2sl_table[cl_ntoh16(p_pr->dlid)] = ib_path_rec_sl(p_pr);
    }
}
