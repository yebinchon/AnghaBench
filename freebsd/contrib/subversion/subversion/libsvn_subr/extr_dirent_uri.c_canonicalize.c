
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_boolean_t ;
typedef scalar_t__ path_type_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 scalar_t__ SVN_PATH_IS_EMPTY (char const*) ;
 scalar_t__ TRUE ;
 char* apr_palloc (int *,int) ;
 char* apr_pcalloc (int *,scalar_t__) ;
 int apr_snprintf (char*,int,char*,unsigned char) ;
 int assert (int) ;
 void* canonicalize_to_lower (char) ;
 char canonicalize_to_upper (char const) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ strtol (char*,int *,int) ;
 int svn_ctype_isxdigit (char const) ;
 int * svn_uri__char_validity ;
 scalar_t__ type_dirent ;
 scalar_t__ type_relpath ;
 scalar_t__ type_uri ;

__attribute__((used)) static const char *
canonicalize(path_type_t type, const char *path, apr_pool_t *pool)
{
  char *canon, *dst;
  const char *src;
  apr_size_t seglen;
  apr_size_t schemelen = 0;
  apr_size_t canon_segments = 0;
  svn_boolean_t url = FALSE;
  char *schema_data = ((void*)0);



  if (SVN_PATH_IS_EMPTY(path))
    {
      assert(type != type_uri);
      return "";
    }

  dst = canon = apr_pcalloc(pool, strlen(path) + 1);




  src = path;
  if (type == type_uri)
    {
      assert(*src != '/');

      while (*src && (*src != '/') && (*src != ':'))
        src++;

      if (*src == ':' && *(src+1) == '/' && *(src+2) == '/')
        {
          const char *seg;

          url = TRUE;


          src = path;
          while (*src != ':')
            {
              *(dst++) = canonicalize_to_lower((*src++));
              schemelen++;
            }
          *(dst++) = ':';
          *(dst++) = '/';
          *(dst++) = '/';
          src += 3;
          schemelen += 3;


          seg = src;
          while (*src && (*src != '/') && (*src != '@'))
            src++;

          if (*src == '@')
            {

              seglen = src - seg + 1;
              memcpy(dst, seg, seglen);
              dst += seglen;
              src++;
            }
          else
            src = seg;


          if (*src == '[')
            {
             *(dst++) = *(src++);

              while (*src == ':'
                     || (*src >= '0' && (*src <= '9'))
                     || (*src >= 'a' && (*src <= 'f'))
                     || (*src >= 'A' && (*src <= 'F')))
                {
                  *(dst++) = canonicalize_to_lower((*src++));
                }

              if (*src == ']')
                *(dst++) = *(src++);
            }
          else
            while (*src && (*src != '/') && (*src != ':'))
              *(dst++) = canonicalize_to_lower((*src++));

          if (*src == ':')
            {


              if (src[1] == '8' && src[2] == '0'
                  && (src[3]== '/'|| !src[3])
                  && !strncmp(canon, "http:", 5))
                {
                  src += 3;
                }
              else if (src[1] == '4' && src[2] == '4' && src[3] == '3'
                       && (src[4]== '/'|| !src[4])
                       && !strncmp(canon, "https:", 6))
                {
                  src += 4;
                }
              else if (src[1] == '3' && src[2] == '6'
                       && src[3] == '9' && src[4] == '0'
                       && (src[5]== '/'|| !src[5])
                       && !strncmp(canon, "svn:", 4))
                {
                  src += 5;
                }
              else if (src[1] == '/' || !src[1])
                {
                  src += 1;
                }

              while (*src && (*src != '/'))
                *(dst++) = canonicalize_to_lower((*src++));
            }


          *(dst) = *(src);



          if (*src)
            {
              src++;
              dst++;
              schema_data = dst;
            }

          canon_segments = 1;
        }
    }



  if (! url && type != type_relpath)
    {
      src = path;


      if (*src == '/')
        {
          *(dst++) = *(src++);







        }
    }

  while (*src)
    {


      const char *next = src;
      apr_size_t slash_len = 0;

      while (*next
             && (next[0] != '/')
             && (! (type == type_uri && next[0] == '%' && next[1] == '2' &&
                    canonicalize_to_upper(next[2]) == 'F')))
        {
          ++next;
        }


      if (next[0] == '/')
        slash_len = 1;
      else if (type == type_uri && next[0] == '%')
        slash_len = 3;

      seglen = next - src;

      if (seglen == 0
          || (seglen == 1 && src[0] == '.')
          || (type == type_uri && seglen == 3 && src[0] == '%' && src[1] == '2'
              && canonicalize_to_upper(src[2]) == 'E'))
        {


        }
      else
        {

          memcpy(dst, src, seglen);
          dst += seglen;
          if (slash_len)
            *(dst++) = '/';
          canon_segments++;
        }


      src = next + slash_len;
    }







  if ((canon_segments > 0 && *(dst - 1) == '/')
      && ! (url && path[schemelen] == '\0'))
    {
      dst --;
    }

  *dst = '\0';
  if (schema_data)
    {
      int need_extra = 0;
      src = schema_data;

      while (*src)
        {
          switch (*src)
            {
              case '/':
                break;
              case '%':
                if (!svn_ctype_isxdigit(*(src+1)) ||
                    !svn_ctype_isxdigit(*(src+2)))
                  need_extra += 2;
                else
                  src += 2;
                break;
              default:
                if (!svn_uri__char_validity[(unsigned char)*src])
                  need_extra += 2;
                break;
            }
          src++;
        }

      if (need_extra > 0)
        {
          apr_size_t pre_schema_size = (apr_size_t)(schema_data - canon);

          dst = apr_palloc(pool, (apr_size_t)(src - canon) + need_extra + 1);
          memcpy(dst, canon, pre_schema_size);
          canon = dst;

          dst += pre_schema_size;
        }
      else
        dst = schema_data;

      src = schema_data;

      while (*src)
        {
          switch (*src)
            {
              case '/':
                *(dst++) = '/';
                break;
              case '%':
                if (!svn_ctype_isxdigit(*(src+1)) ||
                    !svn_ctype_isxdigit(*(src+2)))
                  {
                    *(dst++) = '%';
                    *(dst++) = '2';
                    *(dst++) = '5';
                  }
                else
                  {
                    char digitz[3];
                    int val;

                    digitz[0] = *(++src);
                    digitz[1] = *(++src);
                    digitz[2] = 0;

                    val = (int)strtol(digitz, ((void*)0), 16);

                    if (svn_uri__char_validity[(unsigned char)val])
                      *(dst++) = (char)val;
                    else
                      {
                        *(dst++) = '%';
                        *(dst++) = canonicalize_to_upper(digitz[0]);
                        *(dst++) = canonicalize_to_upper(digitz[1]);
                      }
                  }
                break;
              default:
                if (!svn_uri__char_validity[(unsigned char)*src])
                  {
                    apr_snprintf(dst, 4, "%%%02X", (unsigned char)*src);
                    dst += 3;
                  }
                else
                  *(dst++) = *src;
                break;
            }
          src++;
        }
      *dst = '\0';
    }

  return canon;
}
