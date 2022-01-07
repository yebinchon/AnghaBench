
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;


 int SVN_ERR_INCOMPLETE_DATA ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;

__attribute__((used)) static svn_error_t *
stream_ran_dry(void)
{
  return svn_error_create(SVN_ERR_INCOMPLETE_DATA, ((void*)0),
                          _("Premature end of content data in dumpstream"));
}
