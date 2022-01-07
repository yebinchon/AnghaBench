
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
struct TYPE_3__ {scalar_t__ creation_date; scalar_t__ expiration_date; int comment; int owner; int token; } ;
typedef TYPE_1__ svn_lock_t ;
typedef int apr_pool_t ;


 int SVN_VA_NULL ;
 int svn_cl__xml_tagged_cdata (int **,int *,char*,int ) ;
 int svn_time_to_cstring (scalar_t__,int *) ;
 int svn_xml_make_close_tag (int **,int *,char*) ;
 int svn_xml_make_open_tag (int **,int *,int ,char*,int ) ;
 int svn_xml_normal ;

void
svn_cl__print_xml_lock(svn_stringbuf_t **sb,
                       const svn_lock_t *lock,
                       apr_pool_t *pool)
{

  svn_xml_make_open_tag(sb, pool, svn_xml_normal, "lock", SVN_VA_NULL);


  svn_cl__xml_tagged_cdata(sb, pool, "token", lock->token);


  svn_cl__xml_tagged_cdata(sb, pool, "owner", lock->owner);


  svn_cl__xml_tagged_cdata(sb, pool, "comment", lock->comment);


  svn_cl__xml_tagged_cdata(sb, pool, "created",
                           svn_time_to_cstring(lock->creation_date, pool));


  if (lock->expiration_date != 0)
    svn_cl__xml_tagged_cdata(sb, pool, "expires",
                             svn_time_to_cstring(lock->expiration_date, pool));


  svn_xml_make_close_tag(sb, pool, "lock");
}
