
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct length_verify_baton_t {scalar_t__ remaining; int inner; } ;
typedef scalar_t__ apr_size_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_DIFF_UNEXPECTED_DATA ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_stream_read_full (int ,char*,scalar_t__*) ;

__attribute__((used)) static svn_error_t *
read_handler_length_verify(void *baton, char *buffer, apr_size_t *len)
{
  struct length_verify_baton_t *lvb = baton;
  apr_size_t requested_len = *len;

  SVN_ERR(svn_stream_read_full(lvb->inner, buffer, len));

  if (*len > lvb->remaining)
    return svn_error_create(SVN_ERR_DIFF_UNEXPECTED_DATA, ((void*)0),
                            _("Base85 data expands to longer than declared "
                              "filesize"));
  else if (requested_len > *len && *len != lvb->remaining)
    return svn_error_create(SVN_ERR_DIFF_UNEXPECTED_DATA, ((void*)0),
                            _("Base85 data expands to smaller than declared "
                              "filesize"));

  lvb->remaining -= *len;

  return SVN_NO_ERROR;
}
