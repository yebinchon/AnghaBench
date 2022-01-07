
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct bootblock {int ValidFat; int bpbBytesPerSec; int bpbSecPerClust; int bpbResSectors; int bpbFATs; int bpbRootDirEnts; int flags; int bpbSectors; int bpbMedia; int bpbFATsmall; int SecPerTrack; int bpbHeads; int bpbHiddenSecs; int bpbHugeSectors; int NumSectors; int FATsecs; int bpbRootClust; int bpbFSInfo; int bpbBackup; int FSFree; int FSNext; int FirstCluster; int NumClusters; int ClustMask; int NumFatEntries; int ClusterSize; int NumFiles; scalar_t__ NumFree; } ;


 int CLUST12_MASK ;


 scalar_t__ CLUST_FIRST ;
 int CLUST_RSRVD ;
 int DOSBOOTBLOCKSIZE ;
 int DOSBOOTBLOCKSIZE_REAL ;
 int FAT32 ;
 int FSBOOTMOD ;
 int FSFATAL ;
 int FSOK ;
 int SEEK_SET ;
 int UINT32_MAX ;
 scalar_t__ ask (int ,char*) ;
 int lseek (int,int,int ) ;
 scalar_t__ memcmp (int*,char*,int) ;
 int memcpy (int*,char*,int) ;
 int memset (struct bootblock*,int ,int) ;
 int perr (char*) ;
 int pfatal (char*,...) ;
 int powerof2 (int) ;
 int pwarn (char*) ;
 int read (int,int*,int) ;
 int write (int,int*,int) ;

int
readboot(int dosfs, struct bootblock *boot)
{
 u_char block[DOSBOOTBLOCKSIZE];
 u_char fsinfo[2 * DOSBOOTBLOCKSIZE];
 int ret = FSOK;

 if ((size_t)read(dosfs, block, sizeof block) != sizeof block) {
  perr("could not read boot block");
  return FSFATAL;
 }

 if (block[510] != 0x55 || block[511] != 0xaa) {
  pfatal("Invalid signature in boot block: %02x%02x",
      block[511], block[510]);
  return FSFATAL;
 }

 memset(boot, 0, sizeof *boot);
 boot->ValidFat = -1;




 boot->bpbBytesPerSec = block[11] + (block[12] << 8);
 if (boot->bpbBytesPerSec < DOSBOOTBLOCKSIZE_REAL ||
     boot->bpbBytesPerSec > DOSBOOTBLOCKSIZE ||
     !powerof2(boot->bpbBytesPerSec)) {
  pfatal("Invalid sector size: %u", boot->bpbBytesPerSec);
  return FSFATAL;
 }


 boot->bpbSecPerClust = block[13];
 if (boot->bpbSecPerClust == 0 || !powerof2(boot->bpbSecPerClust)) {
  pfatal("Invalid cluster size: %u", boot->bpbSecPerClust);
  return FSFATAL;
 }


 boot->bpbResSectors = block[14] + (block[15] << 8);
 if (boot->bpbResSectors < 1) {
  pfatal("Invalid reserved sectors: %u",
      boot->bpbResSectors);
  return FSFATAL;
 }


 boot->bpbFATs = block[16];
 if (boot->bpbFATs == 0) {
  pfatal("Invalid number of FATs: %u", boot->bpbFATs);
  return FSFATAL;
 }


 boot->bpbRootDirEnts = block[17] + (block[18] << 8);
 if (!boot->bpbRootDirEnts) {

  boot->flags |= FAT32;
 }


 boot->bpbSectors = block[19] + (block[20] << 8);
 if (boot->bpbSectors != 0 && (boot->flags & FAT32)) {
  pfatal("Invalid 16-bit total sector count on FAT32: %u",
      boot->bpbSectors);
  return FSFATAL;
 }


 boot->bpbMedia = block[21];


 boot->bpbFATsmall = block[22] + (block[23] << 8);
 if (boot->bpbFATsmall != 0 && (boot->flags & FAT32)) {
  pfatal("Invalid 16-bit FAT sector count on FAT32: %u",
      boot->bpbFATsmall);
  return FSFATAL;
 }


 boot->SecPerTrack = block[24] + (block[25] << 8);
 boot->bpbHeads = block[26] + (block[27] << 8);


 boot->bpbHiddenSecs = block[28] + (block[29] << 8) +
     (block[30] << 16) + (block[31] << 24);


 boot->bpbHugeSectors = block[32] + (block[33] << 8) +
     (block[34] << 16) + (block[35] << 24);
 if (boot->bpbHugeSectors == 0) {
  if (boot->flags & FAT32) {
   pfatal("FAT32 with sector count of zero");
   return FSFATAL;
  } else if (boot->bpbSectors == 0) {
   pfatal("FAT with sector count of zero");
   return FSFATAL;
  }
  boot->NumSectors = boot->bpbSectors;
 } else {
  if (boot->bpbSectors != 0) {
   pfatal("Invalid FAT sector count");
   return FSFATAL;
  }
  boot->NumSectors = boot->bpbHugeSectors;
 }




 if (boot->flags & FAT32) {

  if (!memcmp(&block[3], "EXFAT   ", 8)) {
   pfatal("exFAT filesystem is not supported.");
   return FSFATAL;
  }


  boot->FATsecs = block[36] + (block[37] << 8)
    + (block[38] << 16) + (block[39] << 24);

  if (block[40] & 0x80)
   boot->ValidFat = block[40] & 0x0f;


  if (block[42] || block[43]) {
   pfatal("Unknown file system version: %x.%x",
          block[43], block[42]);
   return FSFATAL;
  }






  boot->bpbRootClust = block[44] + (block[45] << 8)
          + (block[46] << 16) + (block[47] << 24);


  boot->bpbFSInfo = block[48] + (block[49] << 8);


  boot->bpbBackup = block[50] + (block[51] << 8);


  if (boot->bpbFSInfo == 0) {





   pfatal("Invalid FAT32 Extended BIOS Parameter Block");
   return FSFATAL;
  }


  if (lseek(dosfs, boot->bpbFSInfo * boot->bpbBytesPerSec,
      SEEK_SET) != boot->bpbFSInfo * boot->bpbBytesPerSec
      || read(dosfs, fsinfo, sizeof fsinfo) != sizeof fsinfo) {
   perr("could not read fsinfo block");
   return FSFATAL;
  }
  if (memcmp(fsinfo, "RRaA", 4)
      || memcmp(fsinfo + 0x1e4, "rrAa", 4)
      || fsinfo[0x1fc]
      || fsinfo[0x1fd]
      || fsinfo[0x1fe] != 0x55
      || fsinfo[0x1ff] != 0xaa
      || fsinfo[0x3fc]
      || fsinfo[0x3fd]
      || fsinfo[0x3fe] != 0x55
      || fsinfo[0x3ff] != 0xaa) {
   pwarn("Invalid signature in fsinfo block\n");
   if (ask(0, "Fix")) {
    memcpy(fsinfo, "RRaA", 4);
    memcpy(fsinfo + 0x1e4, "rrAa", 4);
    fsinfo[0x1fc] = fsinfo[0x1fd] = 0;
    fsinfo[0x1fe] = 0x55;
    fsinfo[0x1ff] = 0xaa;
    fsinfo[0x3fc] = fsinfo[0x3fd] = 0;
    fsinfo[0x3fe] = 0x55;
    fsinfo[0x3ff] = 0xaa;
    if (lseek(dosfs, boot->bpbFSInfo *
        boot->bpbBytesPerSec, SEEK_SET)
        != boot->bpbFSInfo * boot->bpbBytesPerSec
        || write(dosfs, fsinfo, sizeof fsinfo)
        != sizeof fsinfo) {
     perr("Unable to write bpbFSInfo");
     return FSFATAL;
    }
    ret = FSBOOTMOD;
   } else
    boot->bpbFSInfo = 0;
  } else {

   boot->FSFree = fsinfo[0x1e8] + (fsinfo[0x1e9] << 8)
           + (fsinfo[0x1ea] << 16)
           + (fsinfo[0x1eb] << 24);
   boot->FSNext = fsinfo[0x1ec] + (fsinfo[0x1ed] << 8)
           + (fsinfo[0x1ee] << 16)
           + (fsinfo[0x1ef] << 24);
  }
 } else {

  boot->FATsecs = boot->bpbFATsmall;
 }

 if (boot->FATsecs > UINT32_MAX / boot->bpbFATs) {
  pfatal("Invalid FATs(%u) with FATsecs(%zu)",
   boot->bpbFATs, (size_t)boot->FATsecs);
  return FSFATAL;
 }

 boot->FirstCluster = (boot->bpbRootDirEnts * 32 +
     boot->bpbBytesPerSec - 1) / boot->bpbBytesPerSec +
     boot->bpbResSectors + boot->bpbFATs * boot->FATsecs;

 if (boot->FirstCluster + boot->bpbSecPerClust > boot->NumSectors) {
  pfatal("Cluster offset too large (%u clusters)\n",
      boot->FirstCluster);
  return FSFATAL;
 }

 boot->NumClusters = (boot->NumSectors - boot->FirstCluster) / boot->bpbSecPerClust +
     CLUST_FIRST;

 if (boot->flags & FAT32)
  boot->ClustMask = 128;
 else if (boot->NumClusters < (CLUST_RSRVD&CLUST12_MASK))
  boot->ClustMask = CLUST12_MASK;
 else if (boot->NumClusters < (CLUST_RSRVD&129))
  boot->ClustMask = 129;
 else {
  pfatal("Filesystem too big (%u clusters) for non-FAT32 partition",
         boot->NumClusters);
  return FSFATAL;
 }

 switch (boot->ClustMask) {
 case 128:
  boot->NumFatEntries = (boot->FATsecs * boot->bpbBytesPerSec) / 4;
  break;
 case 129:
  boot->NumFatEntries = (boot->FATsecs * boot->bpbBytesPerSec) / 2;
  break;
 default:
  boot->NumFatEntries = (boot->FATsecs * boot->bpbBytesPerSec * 2) / 3;
  break;
 }

 if (boot->NumFatEntries < boot->NumClusters - CLUST_FIRST) {
  pfatal("FAT size too small, %u entries won't fit into %u sectors\n",
         boot->NumClusters, boot->FATsecs);
  return FSFATAL;
 }
 boot->ClusterSize = boot->bpbBytesPerSec * boot->bpbSecPerClust;

 boot->NumFiles = 1;
 boot->NumFree = 0;

 return ret;
}
