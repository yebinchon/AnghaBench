
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;


 int SVN_ERR_COMPOSED_ERROR ;
 int svn_error_compose (int *,int ) ;
 int svn_error_create (int ,int *,int *) ;

svn_error_t *
svn_error_compose_create(svn_error_t *err1,
                         svn_error_t *err2)
{
  if (err1 && err2)
    {
      svn_error_compose(err1,
                        svn_error_create(SVN_ERR_COMPOSED_ERROR, err2, ((void*)0)));
      return err1;
    }
  return err1 ? err1 : err2;
}
