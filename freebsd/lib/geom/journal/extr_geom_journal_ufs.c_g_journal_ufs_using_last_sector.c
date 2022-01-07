
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs {int fs_size; } ;
typedef int off_t ;


 int DEV_BSIZE ;
 int fsbtodb (struct fs*,int ) ;
 int g_get_mediasize (char const*) ;
 struct fs* read_superblock (char const*) ;

int
g_journal_ufs_using_last_sector(const char *prov)
{
 struct fs *fs;
 off_t psize, fssize;

 fs = read_superblock(prov);
 if (fs == ((void*)0))
  return (0);

 psize = g_get_mediasize(prov) / DEV_BSIZE;

 fssize = fsbtodb(fs, fs->fs_size);
 return (psize <= fssize);
}
