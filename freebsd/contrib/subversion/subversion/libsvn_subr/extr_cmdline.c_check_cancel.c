
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;


 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_CANCELLED ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ cancelled ;
 int * svn_error_create (int ,int *,int ) ;

__attribute__((used)) static svn_error_t *
check_cancel(void *baton)
{

  SVN_ERR_ASSERT(baton == ((void*)0));
  if (cancelled)
    return svn_error_create(SVN_ERR_CANCELLED, ((void*)0), _("Caught signal"));
  else
    return SVN_NO_ERROR;
}
