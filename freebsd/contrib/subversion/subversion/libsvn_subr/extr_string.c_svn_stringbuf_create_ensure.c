
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; int * pool; scalar_t__ blocksize; scalar_t__ len; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 int membuf_create (void**,scalar_t__*,scalar_t__,int *) ;

svn_stringbuf_t *
svn_stringbuf_create_ensure(apr_size_t blocksize, apr_pool_t *pool)
{
  void *mem;
  svn_stringbuf_t *new_string;

  ++blocksize;


  membuf_create(&mem, &blocksize, blocksize + sizeof(*new_string), pool);


  new_string = mem;
  new_string->data = (char*)mem + sizeof(*new_string);
  new_string->data[0] = '\0';
  new_string->len = 0;
  new_string->blocksize = blocksize - sizeof(*new_string);
  new_string->pool = pool;

  return new_string;
}
