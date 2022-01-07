
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_membuf_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_4__ {int bytes_max; int bytes_used; int mutex; scalar_t__ values_used; scalar_t__ values_max; struct TYPE_4__* values; int map; } ;
typedef TYPE_1__ prefix_pool_t ;
typedef scalar_t__ apr_uint32_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int APR_UINT32_MAX ;
 int MIN (int ,int) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int svn_hash__make (int *) ;
 int svn_mutex__init (int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
prefix_pool_create(prefix_pool_t **prefix_pool,
                   apr_size_t bytes_max,
                   svn_boolean_t mutex_required,
                   apr_pool_t *result_pool)
{
  enum
    {




      ESTIMATED_BYTES_PER_ENTRY = 120
    };


  apr_size_t capacity = MIN(APR_UINT32_MAX,
                            bytes_max / ESTIMATED_BYTES_PER_ENTRY);


  prefix_pool_t *result = apr_pcalloc(result_pool, sizeof(*result));
  result->map = svn_hash__make(result_pool);

  result->values = capacity
                 ? apr_pcalloc(result_pool, capacity * sizeof(const char *))
                 : ((void*)0);
  result->values_max = (apr_uint32_t)capacity;
  result->values_used = 0;

  result->bytes_max = bytes_max;
  result->bytes_used = capacity * sizeof(svn_membuf_t);

  SVN_ERR(svn_mutex__init(&result->mutex, mutex_required, result_pool));


  *prefix_pool = result;
  return SVN_NO_ERROR;
}
