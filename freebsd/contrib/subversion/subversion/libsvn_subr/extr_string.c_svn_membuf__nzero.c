
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_membuf_t ;
typedef int apr_size_t ;


 int SVN_MEMBUF__NZERO (int *,int ) ;

void
svn_membuf__nzero(svn_membuf_t *membuf, apr_size_t size)
{
  SVN_MEMBUF__NZERO(membuf, size);
}
