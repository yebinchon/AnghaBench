
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int compression_type_t ;


 int FALSE ;
 int SVN_DELTA_COMPRESSION_LEVEL_DEFAULT ;
 int SVN_DELTA_COMPRESSION_LEVEL_NONE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_BAD_CONFIG_VALUE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int compression_type_lz4 ;
 int compression_type_none ;
 int compression_type_zlib ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int svn_cstring_atoi (int*,char const*) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;

__attribute__((used)) static svn_error_t *
parse_compression_option(compression_type_t *compression_type_p,
                         int *compression_level_p,
                         const char *value)
{
  compression_type_t type;
  int level;
  svn_boolean_t is_valid = TRUE;


  if (strcmp(value, "none") == 0)
    {
      type = compression_type_none;
      level = SVN_DELTA_COMPRESSION_LEVEL_NONE;
    }
  else if (strcmp(value, "lz4") == 0)
    {
      type = compression_type_lz4;
      level = SVN_DELTA_COMPRESSION_LEVEL_DEFAULT;
    }
  else if (strncmp(value, "zlib", 4) == 0)
    {
      const char *p = value + 4;

      type = compression_type_zlib;
      if (*p == 0)
        {
          level = SVN_DELTA_COMPRESSION_LEVEL_DEFAULT;
        }
      else if (*p == '-')
        {
          p++;
          SVN_ERR(svn_cstring_atoi(&level, p));
          if (level < 1 || level > 9)
            is_valid = FALSE;
        }
      else
        is_valid = FALSE;
    }
  else
    {
      is_valid = FALSE;
    }

  if (!is_valid)
    return svn_error_createf(SVN_ERR_BAD_CONFIG_VALUE, ((void*)0),
                           _("Invalid 'compression' value '%s' in the config"),
                             value);

  *compression_type_p = type;
  *compression_level_p = level;
  return SVN_NO_ERROR;
}
