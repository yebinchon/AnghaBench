
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char const* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 unsigned int UINT_MAX ;
 char* apr_psprintf (int *,char*,...) ;
 int svn_stringbuf_appendbyte (TYPE_1__*,char) ;
 int svn_stringbuf_appendcstr (TYPE_1__*,char const*) ;
 TYPE_1__* svn_stringbuf_create_empty (int *) ;
 scalar_t__ svn_stringbuf_isempty (TYPE_1__*) ;

const char *
svn_x509_oid_to_string(const unsigned char *oid, apr_size_t oid_len,
                       apr_pool_t *scratch_pool, apr_pool_t *result_pool)
{
  svn_stringbuf_t *out = svn_stringbuf_create_empty(result_pool);
  const unsigned char *p = oid;
  const unsigned char *end = p + oid_len;
  const char *temp;

  while (p != end) {
    if (p == oid)
      {






        temp = apr_psprintf(scratch_pool, "%d.%d", *p / 40, *p % 40);
        p++;
      }
    else if (*p < 128)
      {


        temp = apr_psprintf(scratch_pool, ".%d", *p);
        p++;
      }
    else
      {



        unsigned int collector = 0;
        svn_boolean_t dot = FALSE;

        do {
          if (collector == 0 && *p == 0x80)
            {



              if (!dot)
                {
                  svn_stringbuf_appendbyte(out, '.');
                  dot = TRUE;
                }
              svn_stringbuf_appendbyte(out, '0');
            }
          else if (collector > UINT_MAX >> 7)
            {

              return ((void*)0);
            }
          collector = collector << 7 | (*(p++) & 0x7f);
        } while (p != end && *p > 127);
        if (collector > UINT_MAX >> 7)
          return ((void*)0);
        collector = collector << 7 | *(p++);
        temp = apr_psprintf(scratch_pool, "%s%d", dot ? "" : ".", collector);
      }
    svn_stringbuf_appendcstr(out, temp);
  }

  if (svn_stringbuf_isempty(out))
    return ((void*)0);

  return out->data;
}
