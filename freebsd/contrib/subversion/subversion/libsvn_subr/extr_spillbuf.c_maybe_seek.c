
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * spill; int spill_start; int * head; } ;
typedef TYPE_1__ svn_spillbuf_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int APR_SET ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_io_file_seek (int *,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
maybe_seek(svn_boolean_t *seeked,
           const svn_spillbuf_t *buf,
           apr_pool_t *scratch_pool)
{
  if (buf->head == ((void*)0) && buf->spill != ((void*)0))
    {
      apr_off_t output_unused;


      output_unused = buf->spill_start;
      SVN_ERR(svn_io_file_seek(buf->spill,
                               APR_SET, &output_unused,
                               scratch_pool));
      if (seeked != ((void*)0))
        *seeked = TRUE;
    }
  else if (seeked != ((void*)0))
    {
      *seeked = FALSE;
    }

  return SVN_NO_ERROR;
}
