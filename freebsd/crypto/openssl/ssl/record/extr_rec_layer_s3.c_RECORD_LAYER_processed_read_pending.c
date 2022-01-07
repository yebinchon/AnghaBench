
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * rrec; } ;
typedef int SSL3_RECORD ;
typedef TYPE_1__ RECORD_LAYER ;


 size_t RECORD_LAYER_get_numrpipes (TYPE_1__ const*) ;
 scalar_t__ SSL3_RECORD_is_read (int const*) ;

int RECORD_LAYER_processed_read_pending(const RECORD_LAYER *rl)
{
    size_t curr_rec = 0, num_recs = RECORD_LAYER_get_numrpipes(rl);
    const SSL3_RECORD *rr = rl->rrec;

    while (curr_rec < num_recs && SSL3_RECORD_is_read(&rr[curr_rec]))
        curr_rec++;

    return curr_rec < num_recs;
}
