
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ using_compression; } ;
typedef TYPE_1__ svn_ra_serf__session_t ;
typedef int serf_bucket_t ;


 int serf_bucket_headers_setn (int *,char*,char*) ;
 scalar_t__ svn_ra_serf__is_low_latency_connection (TYPE_1__*) ;
 scalar_t__ svn_tristate_false ;
 scalar_t__ svn_tristate_unknown ;

void
svn_ra_serf__setup_svndiff_accept_encoding(serf_bucket_t *headers,
                                           svn_ra_serf__session_t *session)
{
  if (session->using_compression == svn_tristate_false)
    {


      serf_bucket_headers_setn(
        headers, "Accept-Encoding", "svndiff");
    }
  else if (session->using_compression == svn_tristate_unknown &&
           svn_ra_serf__is_low_latency_connection(session))
    {




      serf_bucket_headers_setn(
        headers, "Accept-Encoding",
        "gzip,svndiff2;q=0.9,svndiff1;q=0.8,svndiff;q=0.7");
    }
  else
    {





      serf_bucket_headers_setn(
        headers, "Accept-Encoding",
        "gzip,svndiff1;q=0.9,svndiff2;q=0.8,svndiff;q=0.7");
    }
}
