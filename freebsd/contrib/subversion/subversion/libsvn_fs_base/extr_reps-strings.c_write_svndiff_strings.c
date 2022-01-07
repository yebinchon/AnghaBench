
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct write_svndiff_strings_baton {int header_read; char version; int size; int * key; TYPE_1__* trail; int fs; } ;
typedef int apr_size_t ;
struct TYPE_2__ {int pool; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_GENERAL ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_bdb__string_append (int ,int **,int,char const*,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
write_svndiff_strings(void *baton, const char *data, apr_size_t *len)
{
  struct write_svndiff_strings_baton *wb = baton;
  const char *buf = data;
  apr_size_t nheader = 0;






  if (wb->header_read < 4)
    {
      nheader = 4 - wb->header_read;
      *len -= nheader;
      buf += nheader;
      wb->header_read += nheader;



      if (wb->header_read == 4)
        wb->version = *(buf - 1);
    }



  SVN_ERR(svn_fs_bdb__string_append(wb->fs, &(wb->key), *len,
                                    buf, wb->trail, wb->trail->pool));


  if (wb->key == ((void*)0))
    return svn_error_create(SVN_ERR_FS_GENERAL, ((void*)0),
                            _("Failed to get new string key"));



  *len += nheader;


  wb->size += *len;

  return SVN_NO_ERROR;
}
