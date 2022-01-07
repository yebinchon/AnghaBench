
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bytes_transferred; } ;
typedef TYPE_1__ ra_progress_baton_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;



__attribute__((used)) static void
ra_progress_func(apr_off_t progress,
                 apr_off_t total,
                 void *baton,
                 apr_pool_t *pool)
{
  ra_progress_baton_t *b = baton;
  b->bytes_transferred = progress;
}
