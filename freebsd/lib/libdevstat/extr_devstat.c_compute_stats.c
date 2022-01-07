
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct devstat {int dummy; } ;


 int DSM_BLOCKS_PER_SECOND ;
 int DSM_KB_PER_TRANSFER ;
 int DSM_MB_PER_SECOND ;
 int DSM_MS_PER_TRANSACTION ;
 int DSM_NONE ;
 int DSM_SKIP ;
 int DSM_TOTAL_BLOCKS ;
 int DSM_TOTAL_BYTES ;
 int DSM_TOTAL_TRANSFERS ;
 int DSM_TRANSFERS_PER_SECOND ;
 int devstat_compute_statistics (struct devstat*,struct devstat*,long double,int ,int *,int ,int *,int ,int *,int ,long double*,int ,long double*,int ,long double*,int ,long double*,int ,long double*,int ) ;

int
compute_stats(struct devstat *current, struct devstat *previous,
       long double etime, u_int64_t *total_bytes,
       u_int64_t *total_transfers, u_int64_t *total_blocks,
       long double *kb_per_transfer, long double *transfers_per_second,
       long double *mb_per_second, long double *blocks_per_second,
       long double *ms_per_transaction)
{
 return(devstat_compute_statistics(current, previous, etime,
        total_bytes ? DSM_TOTAL_BYTES : DSM_SKIP,
        total_bytes,
        total_transfers ? DSM_TOTAL_TRANSFERS : DSM_SKIP,
        total_transfers,
        total_blocks ? DSM_TOTAL_BLOCKS : DSM_SKIP,
        total_blocks,
        kb_per_transfer ? DSM_KB_PER_TRANSFER : DSM_SKIP,
        kb_per_transfer,
        transfers_per_second ? DSM_TRANSFERS_PER_SECOND : DSM_SKIP,
        transfers_per_second,
        mb_per_second ? DSM_MB_PER_SECOND : DSM_SKIP,
        mb_per_second,
        blocks_per_second ? DSM_BLOCKS_PER_SECOND : DSM_SKIP,
        blocks_per_second,
        ms_per_transaction ? DSM_MS_PER_TRANSACTION : DSM_SKIP,
        ms_per_transaction,
        DSM_NONE));
}
