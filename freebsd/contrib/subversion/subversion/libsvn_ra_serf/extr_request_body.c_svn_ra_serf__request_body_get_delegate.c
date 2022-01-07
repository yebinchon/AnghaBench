
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_serf__request_body_t ;
typedef int svn_ra_serf__request_body_delegate_t ;


 int request_body_delegate ;

void
svn_ra_serf__request_body_get_delegate(svn_ra_serf__request_body_delegate_t *del,
                                       void **baton,
                                       svn_ra_serf__request_body_t *body)
{
  *del = request_body_delegate;
  *baton = body;
}
