
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ strncmp (char const*,char*,int) ;
 scalar_t__ strtol (char*,int *,int) ;
 int svn_path_is_url (char const*) ;
 scalar_t__* svn_uri__char_validity ;

svn_boolean_t
svn_uri_is_canonical(const char *uri, apr_pool_t *scratch_pool)
{
  const char *ptr = uri, *seg = uri;
  const char *schema_data = ((void*)0);
  if (*uri == '\0')
    return FALSE;

  if (! svn_path_is_url(uri))
    return FALSE;


  while (*ptr && (*ptr != '/') && (*ptr != ':'))
    ptr++;


  if (! (*ptr == ':' && *(ptr+1) == '/' && *(ptr+2) == '/'))
    return FALSE;


  ptr = uri;
  while (*ptr != ':')
    {
      if (*ptr >= 'A' && *ptr <= 'Z')
        return FALSE;
      ptr++;
    }

  ptr += 3;


  if (! *ptr)
    return TRUE;


  seg = ptr;
  while (*ptr && (*ptr != '/') && (*ptr != '@'))
    ptr++;

  if (*ptr == '@')
    seg = ptr + 1;


  ptr = seg;

  if (*ptr == '[')
    {
      ptr++;
      while (*ptr == ':'
             || (*ptr >= '0' && *ptr <= '9')
             || (*ptr >= 'a' && *ptr <= 'f'))
        {
          ptr++;
        }

      if (*ptr != ']')
        return FALSE;
      ptr++;
    }
  else
    while (*ptr && *ptr != '/' && *ptr != ':')
      {
        if (*ptr >= 'A' && *ptr <= 'Z')
          return FALSE;
        ptr++;
      }


  if (*ptr == ':')
    {
      apr_int64_t port = 0;

      ptr++;
      schema_data = ptr;

      while (*ptr >= '0' && *ptr <= '9')
        {
          port = 10 * port + (*ptr - '0');
          ptr++;
        }

      if (ptr == schema_data && (*ptr == '/' || *ptr == '\0'))
        return FALSE;

      if (port == 80 && strncmp(uri, "http:", 5) == 0)
        return FALSE;
      else if (port == 443 && strncmp(uri, "https:", 6) == 0)
        return FALSE;
      else if (port == 3690 && strncmp(uri, "svn:", 4) == 0)
        return FALSE;

      while (*ptr && *ptr != '/')
        ++ptr;
    }

  schema_data = ptr;
  seg = ptr;
  while (*ptr && (*ptr != '/'))
    ptr++;
  while(1)
    {
      apr_size_t seglen = ptr - seg;

      if (seglen == 1 && *seg == '.')
        return FALSE;

      if (*ptr == '/' && *(ptr+1) == '/')
        return FALSE;

      if (! *ptr && *(ptr - 1) == '/' && ptr - 1 != uri)
        return FALSE;

      if (! *ptr)
        break;

      if (*ptr == '/')
        ptr++;

      seg = ptr;
      while (*ptr && (*ptr != '/'))
        ptr++;
    }

  ptr = schema_data;

  while (*ptr)
    {
      if (*ptr == '%')
        {
          char digitz[3];
          int val;



          if (((*(ptr+1) < '0' || *(ptr+1) > '9'))
              && (*(ptr+1) < 'A' || *(ptr+1) > 'F'))
            return FALSE;
          else if (((*(ptr+2) < '0' || *(ptr+2) > '9'))
                   && (*(ptr+2) < 'A' || *(ptr+2) > 'F'))
            return FALSE;

          digitz[0] = *(++ptr);
          digitz[1] = *(++ptr);
          digitz[2] = '\0';
          val = (int)strtol(digitz, ((void*)0), 16);

          if (svn_uri__char_validity[val])
            return FALSE;
        }
      else if (*ptr != '/' && !svn_uri__char_validity[(unsigned char)*ptr])
        return FALSE;
      ptr++;
    }

  return TRUE;
}
