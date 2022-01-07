
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; int len; } ;
typedef TYPE_1__ svn_string_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 void* apr_palloc (int *,int) ;
 int memcpy (char*,char const*,int) ;

svn_string_t *
svn_string_ncreate(const char *bytes, apr_size_t size, apr_pool_t *pool)
{
  void *mem;
  char *data;
  svn_string_t *new_string;


  mem = apr_palloc(pool, sizeof(*new_string) + size + 1);
  data = (char*)mem + sizeof(*new_string);

  new_string = mem;
  new_string->data = data;
  new_string->len = size;


  if (size)
    memcpy(data, bytes, size);




  data[size] = '\0';

  return new_string;
}
