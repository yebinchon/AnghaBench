
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ g_journal_otherfs_using_last_sector (char const*) ;
 scalar_t__ g_journal_ufs_using_last_sector (char const*) ;

__attribute__((used)) static int
g_journal_fs_using_last_sector(const char *prov)
{

 if (g_journal_ufs_using_last_sector(prov))
  return (1);




 return (0);
}
