
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_stream_t ;
typedef int svn_skel_t ;
typedef int svn_lock_t ;
typedef int svn_fs_t ;
typedef int (* svn_fs_get_locks_callback_t ) (void*,int *,int *) ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef scalar_t__ svn_boolean_t ;
struct locks_get_args {int * stream; int depth; int path; } ;
typedef scalar_t__ apr_uint64_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int APR_SIZE_MAX ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_MALFORMED_FILE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 char* apr_palloc (int *,int) ;
 int * svn_cstring_strtoui64 (scalar_t__*,int ,int ,int ,int) ;
 int * svn_error_create (int ,int *,int *) ;
 int svn_fs__canonicalize_abspath (char const*,int *) ;
 int svn_fs__check_fs (int *,int ) ;
 int svn_fs_base__parse_lock_skel (int **,int *,int *) ;
 int svn_fs_base__retry_txn (int *,int ,struct locks_get_args*,int ,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_skel__parse (char*,int,int *) ;
 int svn_spillbuf__create (int,int,int *) ;
 int * svn_stream__from_spillbuf (int ,int *) ;
 int svn_stream_close (int *) ;
 int svn_stream_read_full (int *,char*,int*) ;
 int svn_stream_readline (int *,TYPE_1__**,char*,scalar_t__*,int *) ;
 int txn_body_get_locks ;

svn_error_t *
svn_fs_base__get_locks(svn_fs_t *fs,
                       const char *path,
                       svn_depth_t depth,
                       svn_fs_get_locks_callback_t get_locks_func,
                       void *get_locks_baton,
                       apr_pool_t *pool)
{
  struct locks_get_args args;
  svn_stream_t *stream;
  svn_stringbuf_t *buf;
  svn_boolean_t eof;
  apr_pool_t *iterpool = svn_pool_create(pool);

  SVN_ERR(svn_fs__check_fs(fs, TRUE));

  args.path = svn_fs__canonicalize_abspath(path, pool);
  args.depth = depth;

  args.stream = svn_stream__from_spillbuf(svn_spillbuf__create(4 * 1024 ,
                                                               64 * 1024 ,
                                                               pool),
                                          pool);
  SVN_ERR(svn_fs_base__retry_txn(fs, txn_body_get_locks, &args, FALSE, pool));


  stream = args.stream;

  while (1)
    {
      apr_size_t len, skel_len;
      char c, *skel_buf;
      svn_skel_t *lock_skel;
      svn_lock_t *lock;
      apr_uint64_t ui64;
      svn_error_t *err;

      svn_pool_clear(iterpool);


      SVN_ERR(svn_stream_readline(stream, &buf, "\n", &eof, iterpool));
      if (eof)
        break;
      err = svn_cstring_strtoui64(&ui64, buf->data, 0, APR_SIZE_MAX, 10);
      if (err)
        return svn_error_create(SVN_ERR_MALFORMED_FILE, err, ((void*)0));
      skel_len = (apr_size_t)ui64;


      skel_buf = apr_palloc(pool, skel_len + 1);
      SVN_ERR(svn_stream_read_full(stream, skel_buf, &skel_len));
      skel_buf[skel_len] = '\0';


      len = 1;
      SVN_ERR(svn_stream_read_full(stream, &c, &len));
      if (c != '\n')
        return svn_error_create(SVN_ERR_MALFORMED_FILE, ((void*)0), ((void*)0));


      lock_skel = svn_skel__parse(skel_buf, skel_len, iterpool);
      SVN_ERR(svn_fs_base__parse_lock_skel(&lock, lock_skel, iterpool));
      SVN_ERR(get_locks_func(get_locks_baton, lock, iterpool));
    }

  SVN_ERR(svn_stream_close(stream));
  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
