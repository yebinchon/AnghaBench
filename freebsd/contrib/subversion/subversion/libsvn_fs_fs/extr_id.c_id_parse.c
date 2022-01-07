
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_11__ {scalar_t__ number; void* revision; } ;
struct TYPE_8__ {scalar_t__ number; void* revision; } ;
struct TYPE_9__ {TYPE_5__ txn_id; TYPE_2__ rev_item; int copy_id; int node_id; } ;
struct TYPE_7__ {TYPE_4__* fsap_data; int * vtable; } ;
struct TYPE_10__ {TYPE_3__ private_id; TYPE_1__ generic_id; } ;
typedef TYPE_4__ fs_fs__id_t ;
typedef scalar_t__ apr_uint64_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;


 void* SVN_INVALID_REVNUM ;
 TYPE_4__* apr_pcalloc (int *,int) ;
 int id_vtable ;
 int locale_independent_strtol (void**,char*,char const**) ;
 int part_parse (int *,char*) ;
 int * svn_cstring_atoi64 (scalar_t__*,char*) ;
 char* svn_cstring_tokenize (char*,char**) ;
 int svn_error_clear (int *) ;
 int txn_id_parse (TYPE_5__*,char*) ;

__attribute__((used)) static svn_fs_id_t *
id_parse(char *data,
         apr_pool_t *pool)
{
  fs_fs__id_t *id;
  char *str;


  id = apr_pcalloc(pool, sizeof(*id));
  id->generic_id.vtable = &id_vtable;
  id->generic_id.fsap_data = id;
  str = svn_cstring_tokenize(".", &data);
  if (str == ((void*)0))
    return ((void*)0);
  if (! part_parse(&id->private_id.node_id, str))
    return ((void*)0);


  str = svn_cstring_tokenize(".", &data);
  if (str == ((void*)0))
    return ((void*)0);
  if (! part_parse(&id->private_id.copy_id, str))
    return ((void*)0);


  str = svn_cstring_tokenize(".", &data);
  if (str == ((void*)0))
    return ((void*)0);

  if (str[0] == 'r')
    {
      apr_int64_t val;
      const char *tmp;
      svn_error_t *err;


      id->private_id.txn_id.revision = SVN_INVALID_REVNUM;
      id->private_id.txn_id.number = 0;

      data = str + 1;
      str = svn_cstring_tokenize("/", &data);
      if (str == ((void*)0))
        return ((void*)0);
      if (!locale_independent_strtol(&id->private_id.rev_item.revision,
                                     str, &tmp))
        return ((void*)0);

      err = svn_cstring_atoi64(&val, data);
      if (err)
        {
          svn_error_clear(err);
          return ((void*)0);
        }
      id->private_id.rev_item.number = (apr_uint64_t)val;
    }
  else if (str[0] == 't')
    {

      id->private_id.rev_item.revision = SVN_INVALID_REVNUM;
      id->private_id.rev_item.number = 0;

      if (! txn_id_parse(&id->private_id.txn_id, str + 1))
        return ((void*)0);
    }
  else
    return ((void*)0);

  return (svn_fs_id_t *)id;
}
