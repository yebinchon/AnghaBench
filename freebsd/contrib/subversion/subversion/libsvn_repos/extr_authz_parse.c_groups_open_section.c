
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
struct TYPE_7__ {scalar_t__ parsing_groups; int in_groups; } ;
typedef TYPE_2__ ctor_baton_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_AUTHZ_INVALID_CONFIG ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int check_open_section (TYPE_2__* const,TYPE_1__*) ;
 int groups_section ;
 scalar_t__ strcmp (int ,int ) ;
 int * svn_error_createf (int ,int *,int ,int ) ;

__attribute__((used)) static svn_error_t *
groups_open_section(void *baton, svn_stringbuf_t *section)
{
  ctor_baton_t *const cb = baton;

  if (cb->parsing_groups)
    SVN_ERR(check_open_section(cb, section));

  if (0 == strcmp(section->data, groups_section))
    {
      cb->in_groups = TRUE;
      return SVN_NO_ERROR;
    }

  return svn_error_createf(
      SVN_ERR_AUTHZ_INVALID_CONFIG, ((void*)0),
      (cb->parsing_groups
       ? _("Section is not valid in the global group file: [%s]")
       : _("Section is not valid in the authz file: [%s]")),
      section->data);
}
