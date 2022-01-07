
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * read_superblock (char const*) ;

int
g_journal_ufs_exists(const char *prov)
{

 return (read_superblock(prov) != ((void*)0));
}
