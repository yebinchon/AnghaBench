
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int apr_hash_t ;


 int svn_compat_log_revprops_out_string (TYPE_1__ const**,TYPE_1__ const**,TYPE_1__ const**,int *) ;

void
svn_compat_log_revprops_out(const char **author, const char **date,
                            const char **message, apr_hash_t *revprops)
{
  const svn_string_t *author_s, *date_s, *message_s;
  svn_compat_log_revprops_out_string(&author_s, &date_s, &message_s,
                                     revprops);

  *author = author_s ? author_s->data : ((void*)0);
  *date = date_s ? date_s->data : ((void*)0);
  *message = message_s ? message_s->data : ((void*)0);
}
