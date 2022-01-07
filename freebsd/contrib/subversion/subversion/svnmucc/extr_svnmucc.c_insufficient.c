
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;


 int SVN_ERR_INCORRECT_PARAMS ;
 int * svn_error_create (int ,int *,char*) ;

__attribute__((used)) static svn_error_t *
insufficient(void)
{
  return svn_error_create(SVN_ERR_INCORRECT_PARAMS, ((void*)0),
                          "insufficient arguments");
}
