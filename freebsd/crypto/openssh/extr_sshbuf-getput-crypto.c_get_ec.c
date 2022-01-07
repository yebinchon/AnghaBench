
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
typedef int EC_POINT ;
typedef int EC_GROUP ;


 int EC_POINT_oct2point (int const*,int *,scalar_t__ const*,size_t,int *) ;
 scalar_t__ const POINT_CONVERSION_UNCOMPRESSED ;
 size_t SSHBUF_MAX_ECPOINT ;
 int SSH_ERR_ECPOINT_TOO_LARGE ;
 int SSH_ERR_INVALID_FORMAT ;

__attribute__((used)) static int
get_ec(const u_char *d, size_t len, EC_POINT *v, const EC_GROUP *g)
{

 if (len == 0 || len > SSHBUF_MAX_ECPOINT)
  return SSH_ERR_ECPOINT_TOO_LARGE;

 if (*d != POINT_CONVERSION_UNCOMPRESSED)
  return SSH_ERR_INVALID_FORMAT;
 if (v != ((void*)0) && EC_POINT_oct2point(g, v, d, len, ((void*)0)) != 1)
  return SSH_ERR_INVALID_FORMAT;
 return 0;
}
