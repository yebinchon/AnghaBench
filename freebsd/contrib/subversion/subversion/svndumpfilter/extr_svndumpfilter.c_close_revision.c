
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct revision_baton_t {int writing_begun; } ;


 int * SVN_NO_ERROR ;
 int * output_revision (struct revision_baton_t*) ;

__attribute__((used)) static svn_error_t *
close_revision(void *revision_baton)
{
  struct revision_baton_t *rb = revision_baton;


  if (! rb->writing_begun)
    return output_revision(rb);
  else
    return SVN_NO_ERROR;
}
