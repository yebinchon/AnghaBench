
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_off_t ;
typedef scalar_t__ apr_int64_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_cstring_atoi64 (scalar_t__*,char const*) ;
 int * svn_error_createf (int ,int *,int ,int ) ;

svn_error_t *
svn_fs_fs__parse_revision_trailer(apr_off_t *root_offset,
                                  apr_off_t *changes_offset,
                                  svn_stringbuf_t *trailer,
                                  svn_revnum_t rev)
{
  int i, num_bytes;
  const char *str;



  num_bytes = (int) trailer->len;


  if (trailer->len == 0 || trailer->data[trailer->len - 1] != '\n')
    {
      return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                               _("Revision file (r%ld) lacks trailing newline"),
                               rev);
    }


  for (i = num_bytes - 2; i >= 0; i--)
    {
      if (trailer->data[i] == '\n')
        break;
    }

  if (i < 0)
    {
      return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                               _("Final line in revision file (r%ld) longer "
                                 "than 64 characters"),
                               rev);
    }

  i++;
  str = &trailer->data[i];


  for ( ; i < (num_bytes - 2) ; i++)
    if (trailer->data[i] == ' ')
      break;

  if (i == (num_bytes - 2))
    return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                             _("Final line in revision file r%ld missing space"),
                             rev);

  if (root_offset)
    {
      apr_int64_t val;

      trailer->data[i] = '\0';
      SVN_ERR(svn_cstring_atoi64(&val, str));
      *root_offset = (apr_off_t)val;
    }

  i++;
  str = &trailer->data[i];


  for ( ; i < num_bytes; i++)
    if (trailer->data[i] == '\n')
      break;

  if (changes_offset)
    {
      apr_int64_t val;

      trailer->data[i] = '\0';
      SVN_ERR(svn_cstring_atoi64(&val, str));
      *changes_offset = (apr_off_t)val;
    }

  return SVN_NO_ERROR;
}
