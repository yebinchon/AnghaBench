
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef size_t apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR_BAD_MIME_TYPE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* strchr (char const*,char const) ;
 size_t strcspn (char const*,char*) ;
 size_t strlen (char const*) ;
 int svn_ctype_isascii (char const) ;
 scalar_t__ svn_ctype_iscntrl (char const) ;
 scalar_t__ svn_ctype_isspace (char const) ;
 int * svn_error_createf (int ,int *,int ,char const*,...) ;

svn_error_t *
svn_mime_type_validate(const char *mime_type, apr_pool_t *pool)
{



  const apr_size_t len = strcspn(mime_type, "; ");
  const apr_size_t len2 = strlen(mime_type);
  const char *const slash_pos = strchr(mime_type, '/');
  apr_size_t i;
  const char *tspecials = "()<>@,;:\\\"/[]?=";

  if (len == 0)
    return svn_error_createf
      (SVN_ERR_BAD_MIME_TYPE, ((void*)0),
       _("MIME type '%s' has empty media type"), mime_type);

  if (slash_pos == ((void*)0) || slash_pos >= &mime_type[len])
    return svn_error_createf
      (SVN_ERR_BAD_MIME_TYPE, ((void*)0),
       _("MIME type '%s' does not contain '/'"), mime_type);


  for (i = 0; i < len; i++)
    {
      if (&mime_type[i] != slash_pos
         && (! svn_ctype_isascii(mime_type[i])
            || svn_ctype_iscntrl(mime_type[i])
            || svn_ctype_isspace(mime_type[i])
            || (strchr(tspecials, mime_type[i]) != ((void*)0))))
        return svn_error_createf
          (SVN_ERR_BAD_MIME_TYPE, ((void*)0),
           _("MIME type '%s' contains invalid character '%c' "
             "in media type"),
           mime_type, mime_type[i]);
    }


  for (i = 0; i < len2; i++)
    {
      if (svn_ctype_iscntrl(mime_type[i]) && mime_type[i] != '\t')
        return svn_error_createf(
           SVN_ERR_BAD_MIME_TYPE, ((void*)0),
           _("MIME type '%s' contains invalid character '0x%02x' "
             "in postfix"),
           mime_type, mime_type[i]);
    }

  return SVN_NO_ERROR;
}
