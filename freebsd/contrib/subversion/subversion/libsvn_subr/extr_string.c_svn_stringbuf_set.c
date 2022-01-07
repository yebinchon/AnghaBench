
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; int data; int pool; int blocksize; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef scalar_t__ apr_size_t ;


 int membuf_ensure (void**,int *,scalar_t__,int ) ;
 int memcpy (int ,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

void
svn_stringbuf_set(svn_stringbuf_t *str, const char *value)
{
  apr_size_t amt = strlen(value);

  membuf_ensure((void**) &str->data, &str->blocksize, amt + 1, str->pool);
  memcpy(str->data, value, amt + 1);
  str->len = amt;
}
