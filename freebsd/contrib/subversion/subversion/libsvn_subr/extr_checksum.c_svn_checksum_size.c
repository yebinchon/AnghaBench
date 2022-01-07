
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kind; } ;
typedef TYPE_1__ svn_checksum_t ;
typedef int apr_size_t ;


 int DIGESTSIZE (int ) ;

apr_size_t
svn_checksum_size(const svn_checksum_t *checksum)
{
  return DIGESTSIZE(checksum->kind);
}
