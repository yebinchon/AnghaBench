
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct rep_read_baton {int scratch_pool; int fs; scalar_t__ trail; } ;
struct read_rep_args {char* buf; int * len; struct rep_read_baton* rb; } ;
typedef int apr_size_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_fs_base__retry_txn (int ,int (*) (struct read_rep_args*,scalar_t__),struct read_rep_args*,int ,int ) ;
 int svn_pool_clear (int ) ;
 int txn_body_read_rep (struct read_rep_args*,scalar_t__) ;

__attribute__((used)) static svn_error_t *
rep_read_contents(void *baton, char *buf, apr_size_t *len)
{
  struct rep_read_baton *rb = baton;
  struct read_rep_args args;


  svn_pool_clear(rb->scratch_pool);

  args.rb = rb;
  args.buf = buf;
  args.len = len;


  if (rb->trail)
    SVN_ERR(txn_body_read_rep(&args, rb->trail));
  else
    {





      SVN_ERR(svn_fs_base__retry_txn(rb->fs,
                                     txn_body_read_rep,
                                     &args,
                                     TRUE,
                                     rb->scratch_pool));
    }
  return SVN_NO_ERROR;
}
