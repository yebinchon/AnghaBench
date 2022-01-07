
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
struct TYPE_5__ {void* in_aliases; void* in_groups; int * current_acl; int * section; } ;
typedef TYPE_2__ ctor_baton_t ;


 void* FALSE ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 scalar_t__ strcmp (int *,int ) ;

__attribute__((used)) static svn_error_t *
close_section(void *baton, svn_stringbuf_t *section)
{
  ctor_baton_t *const cb = baton;

  SVN_ERR_ASSERT(0 == strcmp(cb->section, section->data));
  cb->section = ((void*)0);
  cb->current_acl = ((void*)0);
  cb->in_groups = FALSE;
  cb->in_aliases = FALSE;
  return SVN_NO_ERROR;
}
