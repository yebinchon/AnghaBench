
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LZ4_versionNumber () ;

int
svn_lz4__runtime_version(void)
{
  return LZ4_versionNumber();
}
