
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ g_journal_otherfs_exists (char const*) ;
 scalar_t__ g_journal_ufs_exists (char const*) ;

__attribute__((used)) static int
g_journal_fs_exists(const char *prov)
{

 if (g_journal_ufs_exists(prov))
  return (1);




 return (0);
}
