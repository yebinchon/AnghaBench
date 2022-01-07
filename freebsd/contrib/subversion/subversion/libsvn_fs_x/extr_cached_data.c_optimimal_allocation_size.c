
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ apr_size_t ;


 int APR_SIZE_MAX ;
 scalar_t__ SVN__STREAM_CHUNK_SIZE ;

__attribute__((used)) static apr_size_t
optimimal_allocation_size(apr_size_t needed)
{


  const apr_size_t overhead = 0x400;
  apr_size_t optimal;



  if (needed <= SVN__STREAM_CHUNK_SIZE)
    return needed;




  if (needed >= APR_SIZE_MAX / 2 - overhead)
    return needed;
  optimal = SVN__STREAM_CHUNK_SIZE;
  while (optimal - overhead < needed)
    optimal *= 2;


  return optimal - overhead;
}
