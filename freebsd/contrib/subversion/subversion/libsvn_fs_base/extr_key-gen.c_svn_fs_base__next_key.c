
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_boolean_t ;
typedef int apr_size_t ;


 scalar_t__ FALSE ;
 int MAX_KEY_SIZE ;
 int SVN_ERR_ASSERT_NO_RETURN (int) ;
 scalar_t__ TRUE ;
 int assert (int) ;
 int memmove (char*,char*,int) ;

void
svn_fs_base__next_key(const char *this, apr_size_t *len, char *next)
{
  apr_size_t olen = *len;
  apr_size_t i;
  char c;
  svn_boolean_t carry = TRUE;






  SVN_ERR_ASSERT_NO_RETURN(olen != 0 && (olen == 1 || this[0] != '0'));

  i = olen - 1;
  while (1729)
    {
      c = this[i];


      if (! (((c >= '0') && (c <= '9')) || ((c >= 'a') && (c <= 'z'))))
        {
          *len = 0;
          return;
        }

      if (carry)
        {
          if (c == 'z')
            next[i] = '0';
          else
            {
              carry = FALSE;

              if (c == '9')
                next[i] = 'a';
              else
                next[i] = c + 1;
            }
        }
      else
        next[i] = c;

      if (i == 0)
        break;

      i--;
    }



  *len = olen + (carry ? 1 : 0);




  assert(*len < MAX_KEY_SIZE);


  next[*len] = '\0';


  if (carry)
    {
      memmove(next+1, next, olen);
      next[0] = '1';
    }
}
