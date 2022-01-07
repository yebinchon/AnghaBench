
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_status_t ;


 int APR_ENOMEM ;
 int SVN_ERR_STREAM_MALFORMED_DATA ;
 int SVN_ERR_STREAM_UNRECOGNIZED_DATA ;
 int * SVN_NO_ERROR ;



 int Z_OK ;


 char* _ (char*) ;
 int * svn_error_createf (int ,int *,char*,char const*,char const*,...) ;

svn_error_t *
svn_error__wrap_zlib(int zerr, const char *function, const char *message)
{
  apr_status_t status;
  const char *zmsg;

  if (zerr == Z_OK)
    return SVN_NO_ERROR;

  switch (zerr)
    {
    case 129:
      status = SVN_ERR_STREAM_MALFORMED_DATA;
      zmsg = _("stream error");
      break;

    case 130:
      status = APR_ENOMEM;
      zmsg = _("out of memory");
      break;

    case 132:
      status = APR_ENOMEM;
      zmsg = _("buffer error");
      break;

    case 128:
      status = SVN_ERR_STREAM_UNRECOGNIZED_DATA;
      zmsg = _("version error");
      break;

    case 131:
      status = SVN_ERR_STREAM_MALFORMED_DATA;
      zmsg = _("corrupt data");
      break;

    default:
      status = SVN_ERR_STREAM_UNRECOGNIZED_DATA;
      zmsg = _("unknown error");
      break;
    }

  if (message != ((void*)0))
    return svn_error_createf(status, ((void*)0), "zlib (%s): %s: %s", function,
                             zmsg, message);
  else
    return svn_error_createf(status, ((void*)0), "zlib (%s): %s", function, zmsg);
}
