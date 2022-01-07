
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ svn_errno_t ;
struct TYPE_3__ {scalar_t__ errcode; int * errdesc; } ;
typedef TYPE_1__ err_defn ;
typedef scalar_t__ apr_status_t ;
typedef int apr_size_t ;


 int _ (int *) ;
 int apr_cpystrn (char*,int ,int ) ;
 char* apr_strerror (scalar_t__,char*,int ) ;
 TYPE_1__* error_table ;

char *
svn_strerror(apr_status_t statcode, char *buf, apr_size_t bufsize)
{
  const err_defn *defn;

  for (defn = error_table; defn->errdesc != ((void*)0); ++defn)
    if (defn->errcode == (svn_errno_t)statcode)
      {
        apr_cpystrn(buf, _(defn->errdesc), bufsize);
        return buf;
      }

  return apr_strerror(statcode, buf, bufsize);
}
