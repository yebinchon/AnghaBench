
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_size_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_SVNDIFF_UNEXPECTED_END ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_stream_read_full (int *,char*,scalar_t__*) ;

__attribute__((used)) static svn_error_t *
read_one_byte(unsigned char *byte, svn_stream_t *stream)
{
  char c;
  apr_size_t len = 1;

  SVN_ERR(svn_stream_read_full(stream, &c, &len));
  if (len == 0)
    return svn_error_create(SVN_ERR_SVNDIFF_UNEXPECTED_END, ((void*)0),
                            _("Unexpected end of svndiff input"));
  *byte = (unsigned char) c;
  return SVN_NO_ERROR;
}
