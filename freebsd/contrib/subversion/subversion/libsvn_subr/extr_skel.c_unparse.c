
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ len; } ;
typedef TYPE_1__ svn_stringbuf_t ;
struct TYPE_11__ {char* data; scalar_t__ len; struct TYPE_11__* next; struct TYPE_11__* children; scalar_t__ is_atom; } ;
typedef TYPE_2__ svn_skel_t ;
typedef scalar_t__ apr_size_t ;


 int SVN_ERR_ASSERT_NO_RETURN (int) ;
 int SVN_INT64_BUFFER_SIZE ;
 scalar_t__ svn__ui64toa (char*,scalar_t__) ;
 int svn_stringbuf_appendbyte (TYPE_1__*,char) ;
 int svn_stringbuf_appendbytes (TYPE_1__*,char*,scalar_t__) ;
 int svn_stringbuf_ensure (TYPE_1__*,scalar_t__) ;
 scalar_t__ use_implicit (TYPE_2__ const*) ;

__attribute__((used)) static svn_stringbuf_t *
unparse(const svn_skel_t *skel, svn_stringbuf_t *str)
{
  if (skel->is_atom)
    {

      if (use_implicit(skel))
        svn_stringbuf_appendbytes(str, skel->data, skel->len);
      else
        {


          char buf[200 + SVN_INT64_BUFFER_SIZE];
          apr_size_t length_len;

          length_len = svn__ui64toa(buf, skel->len);

          SVN_ERR_ASSERT_NO_RETURN(length_len > 0);



          svn_stringbuf_ensure(str, str->len + length_len + 1 + skel->len);
          svn_stringbuf_appendbytes(str, buf, length_len);
          svn_stringbuf_appendbyte(str, ' ');
          svn_stringbuf_appendbytes(str, skel->data, skel->len);
        }
    }
  else
    {


      svn_skel_t *child;

      svn_stringbuf_appendbyte(str, '(');

      for (child = skel->children; child; child = child->next)
        {
          unparse(child, str);
          if (child->next)
            svn_stringbuf_appendbyte(str, ' ');
        }

      svn_stringbuf_appendbyte(str, ')');
    }

  return str;
}
