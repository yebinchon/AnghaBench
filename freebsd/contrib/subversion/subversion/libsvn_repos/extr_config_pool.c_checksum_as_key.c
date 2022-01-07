
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int data; int size; } ;
typedef TYPE_1__ svn_membuf_t ;
struct TYPE_9__ {int digest; } ;
typedef TYPE_2__ svn_checksum_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;
 int memcpy (int ,int ,int ) ;
 int svn_checksum_size (TYPE_2__*) ;
 int svn_membuf__create (TYPE_1__*,int ,int *) ;

__attribute__((used)) static svn_membuf_t *
checksum_as_key(svn_checksum_t *checksum,
                apr_pool_t *pool)
{
  svn_membuf_t *result = apr_pcalloc(pool, sizeof(*result));
  apr_size_t size = svn_checksum_size(checksum);

  svn_membuf__create(result, size, pool);
  result->size = size;
  memcpy(result->data, checksum->digest, size);

  return result;
}
