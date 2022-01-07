
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int apr_pool_t ;


 char const* apr_psprintf (int *,char*,int ,int ,int ,int ) ;
 int svn_path_uri_encode (char const*,int *) ;

const char *
svn_log__get_location_segments(const char *path, svn_revnum_t peg_revision,
                               svn_revnum_t start, svn_revnum_t end,
                               apr_pool_t *pool)
{
  return apr_psprintf(pool, "get-location-segments %s@%ld r%ld:%ld",
                      svn_path_uri_encode(path, pool),
                      peg_revision, start, end);
}
