
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int unlinkat (int,char*,int ) ;

__attribute__((used)) static void
symlinks_remove(int savedirfd)
{

 (void)unlinkat(savedirfd, "info.last", 0);
 (void)unlinkat(savedirfd, "key.last", 0);
 (void)unlinkat(savedirfd, "vmcore.last", 0);
 (void)unlinkat(savedirfd, "vmcore.last.gz", 0);
 (void)unlinkat(savedirfd, "vmcore.last.zst", 0);
 (void)unlinkat(savedirfd, "vmcore_encrypted.last", 0);
 (void)unlinkat(savedirfd, "vmcore_encrypted.last.gz", 0);
 (void)unlinkat(savedirfd, "textdump.tar.last", 0);
 (void)unlinkat(savedirfd, "textdump.tar.last.gz", 0);
}
