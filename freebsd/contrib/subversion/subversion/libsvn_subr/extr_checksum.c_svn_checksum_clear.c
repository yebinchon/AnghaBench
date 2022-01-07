
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int kind; scalar_t__ digest; } ;
typedef TYPE_1__ svn_checksum_t ;


 int DIGESTSIZE (int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int memset (unsigned char*,int ,int ) ;
 int validate_kind (int ) ;

svn_error_t *
svn_checksum_clear(svn_checksum_t *checksum)
{
  SVN_ERR(validate_kind(checksum->kind));

  memset((unsigned char *) checksum->digest, 0, DIGESTSIZE(checksum->kind));
  return SVN_NO_ERROR;
}
