
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct write_rep_args {char const* buf; int len; struct rep_write_baton* wb; } ;
struct rep_write_baton {int pool; int fs; scalar_t__ trail; } ;
typedef int apr_size_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_fs_base__retry_txn (int ,int (*) (struct write_rep_args*,scalar_t__),struct write_rep_args*,int ,int ) ;
 int txn_body_write_rep (struct write_rep_args*,scalar_t__) ;

__attribute__((used)) static svn_error_t *
rep_write_contents(void *baton,
                   const char *buf,
                   apr_size_t *len)
{
  struct rep_write_baton *wb = baton;
  struct write_rep_args args;




  args.wb = wb;
  args.buf = buf;
  args.len = *len;


  if (wb->trail)
    SVN_ERR(txn_body_write_rep(&args, wb->trail));
  else
    {






      SVN_ERR(svn_fs_base__retry_txn(wb->fs,
                                     txn_body_write_rep,
                                     &args,
                                     TRUE,
                                     wb->pool));
    }

  return SVN_NO_ERROR;
}
