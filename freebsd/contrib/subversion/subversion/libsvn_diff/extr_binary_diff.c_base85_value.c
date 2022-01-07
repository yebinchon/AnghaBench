
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;


 int SVN_ERR_DIFF_UNEXPECTED_DATA ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char const* b85str ;
 char* strchr (char const*,char) ;
 int * svn_error_create (int ,int *,int ) ;

__attribute__((used)) static svn_error_t *
base85_value(int *value, char c)
{
  const char *p = strchr(b85str, c);
  if (!p)
    return svn_error_create(SVN_ERR_DIFF_UNEXPECTED_DATA, ((void*)0),
                            _("Invalid base85 value"));



  *value = (int)(p - b85str);
  return SVN_NO_ERROR;
}
