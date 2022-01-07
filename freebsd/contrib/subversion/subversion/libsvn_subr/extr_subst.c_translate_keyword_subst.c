
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_boolean_t ;
typedef int apr_size_t ;


 int FALSE ;
 int SVN_KEYWORD_MAX_LEN ;
 int TRUE ;
 int assert (int) ;
 scalar_t__ strncmp (char*,char const*,int) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static svn_boolean_t
translate_keyword_subst(char *buf,
                        apr_size_t *len,
                        const char *keyword,
                        apr_size_t keyword_len,
                        const svn_string_t *value)
{
  char *buf_ptr;


  assert(*len <= SVN_KEYWORD_MAX_LEN);
  assert((buf[0] == '$') && (buf[*len - 1] == '$'));


  if (*len < keyword_len + 2)
    return FALSE;



  if (keyword_len > SVN_KEYWORD_MAX_LEN - 5)
    return FALSE;


  if (strncmp(buf + 1, keyword, keyword_len))
    return FALSE;

  buf_ptr = buf + 1 + keyword_len;
  if ((buf_ptr[0] == ':')
      && (buf_ptr[1] == ':')
      && (buf_ptr[2] == ' ')
      && ((buf[*len - 2] == ' ')
          || (buf[*len - 2] == '#'))

      && ((6 + keyword_len) < *len))
    {

      apr_size_t max_value_len = *len - (6 + keyword_len);

      if (! value)
        {

          buf_ptr += 2;
          while (*buf_ptr != '$')
            *(buf_ptr++) = ' ';
        }
      else
        {
          if (value->len <= max_value_len)
            {
              strncpy(buf_ptr + 3, value->data, value->len);
              buf_ptr += 3 + value->len;
              while (*buf_ptr != '$')
                *(buf_ptr++) = ' ';
            }
          else
            {

              strncpy(buf_ptr + 3, value->data, max_value_len);
              buf[*len - 2] = '#';
              buf[*len - 1] = '$';
            }
        }
      return TRUE;
    }


  else if (buf_ptr[0] == '$')
    {

      if (value)
        {

          buf_ptr[0] = ':';
          buf_ptr[1] = ' ';
          if (value->len)
            {
              apr_size_t vallen = value->len;


              if (vallen > (SVN_KEYWORD_MAX_LEN - 5 - keyword_len))
                vallen = SVN_KEYWORD_MAX_LEN - 5 - keyword_len;
              strncpy(buf_ptr + 2, value->data, vallen);
              buf_ptr[2 + vallen] = ' ';
              buf_ptr[2 + vallen + 1] = '$';
              *len = 5 + keyword_len + vallen;
            }
          else
            {

              buf_ptr[2] = '$';
              *len = 4 + keyword_len;
            }
        }
      else
        {

        }
      return TRUE;
    }


  else if (((*len >= 4 + keyword_len )
           && (buf_ptr[0] == ':')
           && (buf_ptr[1] == ' ')
           && (buf[*len - 2] == ' '))
        || ((*len >= 3 + keyword_len )
           && (buf_ptr[0] == ':')
           && (buf_ptr[1] == '$')))
    {

      if (! value)
        {

          buf_ptr[0] = '$';
          *len = 2 + keyword_len;
        }
      else
        {

          buf_ptr[0] = ':';
          buf_ptr[1] = ' ';
          if (value->len)
            {
              apr_size_t vallen = value->len;


              if (vallen > (SVN_KEYWORD_MAX_LEN - 5 - keyword_len))
                vallen = SVN_KEYWORD_MAX_LEN - 5 - keyword_len;
              strncpy(buf_ptr + 2, value->data, vallen);
              buf_ptr[2 + vallen] = ' ';
              buf_ptr[2 + vallen + 1] = '$';
              *len = 5 + keyword_len + vallen;
            }
          else
            {

              buf_ptr[2] = '$';
              *len = 4 + keyword_len;
            }
        }
      return TRUE;
    }

  return FALSE;
}
