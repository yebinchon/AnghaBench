#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ svn_boolean_t ;
typedef  scalar_t__ path_type_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ TRUE ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (char) ; 
 char FUNC6 (char const) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 
 scalar_t__ FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (char const) ; 
 int /*<<< orphan*/ * svn_uri__char_validity ; 
 scalar_t__ type_dirent ; 
 scalar_t__ type_relpath ; 
 scalar_t__ type_uri ; 

__attribute__((used)) static const char *
FUNC12(path_type_t type, const char *path, apr_pool_t *pool)
{
  char *canon, *dst;
  const char *src;
  apr_size_t seglen;
  apr_size_t schemelen = 0;
  apr_size_t canon_segments = 0;
  svn_boolean_t url = FALSE;
  char *schema_data = NULL;

  /* "" is already canonical, so just return it; note that later code
     depends on path not being zero-length.  */
  if (FUNC0(path))
    {
      FUNC4(type != type_uri);
      return "";
    }

  dst = canon = FUNC2(pool, FUNC8(path) + 1);

  /* If this is supposed to be an URI, it should start with
     "scheme://".  We'll copy the scheme, host name, etc. to DST and
     set URL = TRUE. */
  src = path;
  if (type == type_uri)
    {
      FUNC4(*src != '/');

      while (*src && (*src != '/') && (*src != ':'))
        src++;

      if (*src == ':' && *(src+1) == '/' && *(src+2) == '/')
        {
          const char *seg;

          url = TRUE;

          /* Found a scheme, convert to lowercase and copy to dst. */
          src = path;
          while (*src != ':')
            {
              *(dst++) = FUNC5((*src++));
              schemelen++;
            }
          *(dst++) = ':';
          *(dst++) = '/';
          *(dst++) = '/';
          src += 3;
          schemelen += 3;

          /* This might be the hostname */
          seg = src;
          while (*src && (*src != '/') && (*src != '@'))
            src++;

          if (*src == '@')
            {
              /* Copy the username & password. */
              seglen = src - seg + 1;
              FUNC7(dst, seg, seglen);
              dst += seglen;
              src++;
            }
          else
            src = seg;

          /* Found a hostname, convert to lowercase and copy to dst. */
          if (*src == '[')
            {
             *(dst++) = *(src++); /* Copy '[' */

              while (*src == ':'
                     || (*src >= '0' && (*src <= '9'))
                     || (*src >= 'a' && (*src <= 'f'))
                     || (*src >= 'A' && (*src <= 'F')))
                {
                  *(dst++) = FUNC5((*src++));
                }

              if (*src == ']')
                *(dst++) = *(src++); /* Copy ']' */
            }
          else
            while (*src && (*src != '/') && (*src != ':'))
              *(dst++) = FUNC5((*src++));

          if (*src == ':')
            {
              /* We probably have a port number: Is it a default portnumber
                 which doesn't belong in a canonical url? */
              if (src[1] == '8' && src[2] == '0'
                  && (src[3]== '/'|| !src[3])
                  && !FUNC9(canon, "http:", 5))
                {
                  src += 3;
                }
              else if (src[1] == '4' && src[2] == '4' && src[3] == '3'
                       && (src[4]== '/'|| !src[4])
                       && !FUNC9(canon, "https:", 6))
                {
                  src += 4;
                }
              else if (src[1] == '3' && src[2] == '6'
                       && src[3] == '9' && src[4] == '0'
                       && (src[5]== '/'|| !src[5])
                       && !FUNC9(canon, "svn:", 4))
                {
                  src += 5;
                }
              else if (src[1] == '/' || !src[1])
                {
                  src += 1;
                }

              while (*src && (*src != '/'))
                *(dst++) = FUNC5((*src++));
            }

          /* Copy trailing slash, or null-terminator. */
          *(dst) = *(src);

          /* Move src and dst forward only if we are not
           * at null-terminator yet. */
          if (*src)
            {
              src++;
              dst++;
              schema_data = dst;
            }

          canon_segments = 1;
        }
    }

  /* Copy to DST any separator or drive letter that must come before the
     first regular path segment. */
  if (! url && type != type_relpath)
    {
      src = path;
      /* If this is an absolute path, then just copy over the initial
         separator character. */
      if (*src == '/')
        {
          *(dst++) = *(src++);

#ifdef SVN_USE_DOS_PATHS
          /* On Windows permit two leading separator characters which means an
           * UNC path. */
          if ((type == type_dirent) && *src == '/')
            *(dst++) = *(src++);
#endif /* SVN_USE_DOS_PATHS */
        }
#ifdef SVN_USE_DOS_PATHS
      /* On Windows the first segment can be a drive letter, which we normalize
         to upper case. */
      else if (type == type_dirent &&
               ((*src >= 'a' && *src <= 'z') ||
                (*src >= 'A' && *src <= 'Z')) &&
               (src[1] == ':'))
        {
          *(dst++) = canonicalize_to_upper(*(src++));
          /* Leave the ':' to be processed as (or as part of) a path segment
             by the following code block, so we need not care whether it has
             a slash after it. */
        }
#endif /* SVN_USE_DOS_PATHS */
    }

  while (*src)
    {
      /* Parse each segment, finding the closing '/' (which might look
         like '%2F' for URIs).  */
      const char *next = src;
      apr_size_t slash_len = 0;

      while (*next
             && (next[0] != '/')
             && (! (type == type_uri && next[0] == '%' && next[1] == '2' &&
                    FUNC6(next[2]) == 'F')))
        {
          ++next;
        }

      /* Record how long our "slash" is. */
      if (next[0] == '/')
        slash_len = 1;
      else if (type == type_uri && next[0] == '%')
        slash_len = 3;

      seglen = next - src;

      if (seglen == 0
          || (seglen == 1 && src[0] == '.')
          || (type == type_uri && seglen == 3 && src[0] == '%' && src[1] == '2'
              && FUNC6(src[2]) == 'E'))
        {
          /* Empty or noop segment, so do nothing.  (For URIs, '%2E'
             is equivalent to '.').  */
        }
#ifdef SVN_USE_DOS_PATHS
      /* If this is the first path segment of a file:// URI and it contains a
         windows drive letter, convert the drive letter to upper case. */
      else if (url && canon_segments == 1 && seglen >= 2 &&
               (strncmp(canon, "file:", 5) == 0) &&
               src[0] >= 'a' && src[0] <= 'z' && src[1] == ':')
        {
          *(dst++) = canonicalize_to_upper(src[0]);
          *(dst++) = ':';
          if (seglen > 2) /* drive relative path */
            {
              memcpy(dst, src + 2, seglen - 2);
              dst += seglen - 2;
            }

          if (slash_len)
            *(dst++) = '/';
          canon_segments++;
        }
#endif /* SVN_USE_DOS_PATHS */
      else
        {
          /* An actual segment, append it to the destination path */
          FUNC7(dst, src, seglen);
          dst += seglen;
          if (slash_len)
            *(dst++) = '/';
          canon_segments++;
        }

      /* Skip over trailing slash to the next segment. */
      src = next + slash_len;
    }

  /* Remove the trailing slash if there was at least one
   * canonical segment and the last segment ends with a slash.
   *
   * But keep in mind that, for URLs, the scheme counts as a
   * canonical segment -- so if path is ONLY a scheme (such
   * as "https://") we should NOT remove the trailing slash. */
  if ((canon_segments > 0 && *(dst - 1) == '/')
      && ! (url && path[schemelen] == '\0'))
    {
      dst --;
    }

  *dst = '\0';

#ifdef SVN_USE_DOS_PATHS
  /* Skip leading double slashes when there are less than 2
   * canon segments. UNC paths *MUST* have two segments. */
  if ((type == type_dirent) && canon[0] == '/' && canon[1] == '/')
    {
      if (canon_segments < 2)
        return canon + 1;
      else
        {
          /* Now we're sure this is a valid UNC path, convert the server name
             (the first path segment) to lowercase as Windows treats it as case
             insensitive.
             Note: normally the share name is treated as case insensitive too,
             but it seems to be possible to configure Samba to treat those as
             case sensitive, so better leave that alone. */
          for (dst = canon + 2; *dst && *dst != '/'; dst++)
            *dst = canonicalize_to_lower(*dst);
        }
    }
#endif /* SVN_USE_DOS_PATHS */

  /* Check the normalization of characters in a uri */
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
                if (!FUNC11(*(src+1)) ||
                    !FUNC11(*(src+2)))
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

          dst = FUNC1(pool, (apr_size_t)(src - canon) + need_extra + 1);
          FUNC7(dst, canon, pre_schema_size);
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
                if (!FUNC11(*(src+1)) ||
                    !FUNC11(*(src+2)))
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

                    val = (int)FUNC10(digitz, NULL, 16);

                    if (svn_uri__char_validity[(unsigned char)val])
                      *(dst++) = (char)val;
                    else
                      {
                        *(dst++) = '%';
                        *(dst++) = FUNC6(digitz[0]);
                        *(dst++) = FUNC6(digitz[1]);
                      }
                  }
                break;
              default:
                if (!svn_uri__char_validity[(unsigned char)*src])
                  {
                    FUNC3(dst, 4, "%%%02X", (unsigned char)*src);
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