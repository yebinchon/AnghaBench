
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__* data; } ;
typedef TYPE_2__ svn_stringbuf_t ;
typedef int svn_error_t ;
struct TYPE_12__ {scalar_t__ current; TYPE_9__* sfile; scalar_t__ start; } ;
typedef TYPE_3__ rep_state_t ;
typedef size_t apr_size_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;
struct TYPE_13__ {TYPE_1__* rfile; } ;
struct TYPE_10__ {int file; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int auto_open_shared_file (TYPE_9__*) ;
 int auto_set_start_offset (TYPE_3__*,int *) ;
 int rs_aligned_seek (TYPE_3__*,int *,scalar_t__,int *) ;
 int svn_io_file_read_full2 (int ,scalar_t__*,size_t,int *,int *,int *) ;
 TYPE_2__* svn_stringbuf_create_ensure (size_t,int *) ;

__attribute__((used)) static svn_error_t *
read_plain_window(svn_stringbuf_t **nwin, rep_state_t *rs,
                  apr_size_t size, apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  apr_off_t offset;



  SVN_ERR(auto_open_shared_file(rs->sfile));
  SVN_ERR(auto_set_start_offset(rs, scratch_pool));

  offset = rs->start + rs->current;
  SVN_ERR(rs_aligned_seek(rs, ((void*)0), offset, scratch_pool));


  *nwin = svn_stringbuf_create_ensure(size, result_pool);
  SVN_ERR(svn_io_file_read_full2(rs->sfile->rfile->file, (*nwin)->data, size,
                                 ((void*)0), ((void*)0), result_pool));
  (*nwin)->data[size] = 0;


  rs->current += (apr_off_t)size;

  return SVN_NO_ERROR;
}
