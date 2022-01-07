
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfs_probe_args {char* devname; int fd; int secsz; int pool_guid; } ;
struct ptable_entry {scalar_t__ type; scalar_t__ start; scalar_t__ end; } ;
struct ptable {int dummy; } ;


 int O_RDONLY ;
 scalar_t__ PART_FREEBSD ;
 scalar_t__ PART_FREEBSD_ZFS ;
 int close (int) ;
 int open (char*,int ) ;
 int ptable_close (struct ptable*) ;
 int ptable_iterate (struct ptable*,struct zfs_probe_args*,int (*) (void*,char const*,struct ptable_entry const*)) ;
 struct ptable* ptable_open (struct zfs_probe_args*,scalar_t__,int ,int ) ;
 int sprintf (char*,char*,char*,char const*) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;
 int zfs_diskread ;
 int zfs_probe (int,int ) ;

__attribute__((used)) static int
zfs_probe_partition(void *arg, const char *partname,
    const struct ptable_entry *part)
{
 struct zfs_probe_args *ppa, pa;
 struct ptable *table;
 char devname[32];
 int ret;


 if (part->type != PART_FREEBSD &&
     part->type != PART_FREEBSD_ZFS)
  return (0);

 ppa = (struct zfs_probe_args *)arg;
 strncpy(devname, ppa->devname, strlen(ppa->devname) - 1);
 devname[strlen(ppa->devname) - 1] = '\0';
 sprintf(devname, "%s%s:", devname, partname);
 pa.fd = open(devname, O_RDONLY);
 if (pa.fd == -1)
  return (0);
 ret = zfs_probe(pa.fd, ppa->pool_guid);
 if (ret == 0)
  return (0);

 if (part->type == PART_FREEBSD) {
  pa.devname = devname;
  pa.pool_guid = ppa->pool_guid;
  pa.secsz = ppa->secsz;
  table = ptable_open(&pa, part->end - part->start + 1,
      ppa->secsz, zfs_diskread);
  if (table != ((void*)0)) {
   ptable_iterate(table, &pa, zfs_probe_partition);
   ptable_close(table);
  }
 }
 close(pa.fd);
 return (0);
}
