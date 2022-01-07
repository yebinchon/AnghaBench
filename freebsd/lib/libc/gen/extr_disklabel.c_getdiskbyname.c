
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct partition {long p_size; long p_offset; int p_fsize; long p_frag; int p_fstype; } ;
struct disklabel {char* d_typename; int d_secsize; int d_ntracks; int d_nsectors; int d_ncylinders; int d_type; int d_secpercyl; int d_secperunit; int d_rpm; int d_interleave; int d_trackskew; int d_cylskew; int d_headswitch; int d_trkseek; int d_bbsize; int d_sbsize; char d_npartitions; int* d_drivedata; void* d_magic2; void* d_magic; struct partition* d_partitions; int d_flags; } ;
typedef int disk ;


 int BBSIZE ;
 int DEV_BSIZE ;
 void* DISKMAGIC ;
 int D_BADSECT ;
 int D_RAMDISK ;
 int D_REMOVABLE ;
 char MAXPARTITIONS ;
 char NDDATA ;
 char* _PATH_DISKTAB ;
 int bzero (char*,int) ;
 int * cgetcap (char*,char*,char) ;
 scalar_t__ cgetent (char**,char**,char*) ;
 scalar_t__ cgetnum (char*,char*,long*) ;
 scalar_t__ cgetstr (char*,char*,char**) ;
 int dktypenames ;
 int free (char*) ;
 int fstypenames ;
 int getnumdflt (int,char*,int) ;
 void* gettype (char*,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;

struct disklabel *
getdiskbyname(const char *name)
{
 static struct disklabel disk;
 struct disklabel *dp = &disk;
 struct partition *pp;
 char *buf;
 char *db_array[2] = { _PATH_DISKTAB, 0 };
 char *cp, *cq;
 char p, max, psize[3], pbsize[3],
  pfsize[3], poffset[3], ptype[3];
 u_int32_t *dx;

 if (cgetent(&buf, db_array, (char *) name) < 0)
  return ((void*)0);

 bzero((char *)&disk, sizeof(disk));



 cq = dp->d_typename;
 cp = buf;
 while (cq < dp->d_typename + sizeof(dp->d_typename) - 1 &&
     (*cq = *cp) && *cq != '|' && *cq != ':')
  cq++, cp++;
 *cq = '\0';

 if (cgetstr(buf, "ty", &cq) > 0) {
  if (strcmp(cq, "removable") == 0)
   dp->d_flags |= D_REMOVABLE;
  else if (cq && strcmp(cq, "simulated") == 0)
   dp->d_flags |= D_RAMDISK;
  free(cq);
 }
 if (cgetcap(buf, "sf", ':') != ((void*)0))
  dp->d_flags |= D_BADSECT;




 { long f; (dp->d_secsize) = (cgetnum(buf, "se", &f) == -1) ? (DEV_BSIZE) : f; };
 { long f; (dp->d_ntracks) = (cgetnum(buf, "nt", &f) == -1) ? (0) : f; };
 { long f; (dp->d_nsectors) = (cgetnum(buf, "ns", &f) == -1) ? (0) : f; };
 { long f; (dp->d_ncylinders) = (cgetnum(buf, "nc", &f) == -1) ? (0) : f; };

 if (cgetstr(buf, "dt", &cq) > 0) {
  dp->d_type = gettype(cq, dktypenames);
  free(cq);
 } else
  { long f; (dp->d_type) = (cgetnum(buf, "dt", &f) == -1) ? (0) : f; };
 { long f; (dp->d_secpercyl) = (cgetnum(buf, "sc", &f) == -1) ? (dp->d_nsectors * dp->d_ntracks) : f; };
 { long f; (dp->d_secperunit) = (cgetnum(buf, "su", &f) == -1) ? (dp->d_secpercyl * dp->d_ncylinders) : f; };
 { long f; (dp->d_rpm) = (cgetnum(buf, "rm", &f) == -1) ? (3600) : f; };
 { long f; (dp->d_interleave) = (cgetnum(buf, "il", &f) == -1) ? (1) : f; };
 { long f; (dp->d_trackskew) = (cgetnum(buf, "sk", &f) == -1) ? (0) : f; };
 { long f; (dp->d_cylskew) = (cgetnum(buf, "cs", &f) == -1) ? (0) : f; };
 { long f; (dp->d_headswitch) = (cgetnum(buf, "hs", &f) == -1) ? (0) : f; };
 { long f; (dp->d_trkseek) = (cgetnum(buf, "ts", &f) == -1) ? (0) : f; };
 { long f; (dp->d_bbsize) = (cgetnum(buf, "bs", &f) == -1) ? (BBSIZE) : f; };
 { long f; (dp->d_sbsize) = (cgetnum(buf, "sb", &f) == -1) ? (0) : f; };
 strcpy(psize, "px");
 strcpy(pbsize, "bx");
 strcpy(pfsize, "fx");
 strcpy(poffset, "ox");
 strcpy(ptype, "tx");
 max = 'a' - 1;
 pp = &dp->d_partitions[0];
 for (p = 'a'; p < 'a' + MAXPARTITIONS; p++, pp++) {
  long l;
  psize[1] = pbsize[1] = pfsize[1] = poffset[1] = ptype[1] = p;
  if (cgetnum(buf, psize, &l) == -1)
   pp->p_size = 0;
  else {
   pp->p_size = l;
   cgetnum(buf, poffset, &l);
   pp->p_offset = l;
   { long f; (pp->p_fsize) = (cgetnum(buf, pfsize, &f) == -1) ? (0) : f; };
   if (pp->p_fsize) {
    long bsize;

    if (cgetnum(buf, pbsize, &bsize) == 0)
     pp->p_frag = bsize / pp->p_fsize;
    else
     pp->p_frag = 8;
   }
   { long f; (pp->p_fstype) = (cgetnum(buf, ptype, &f) == -1) ? (0) : f; };
   if (pp->p_fstype == 0)
    if (cgetstr(buf, ptype, &cq) >= 0) {
     pp->p_fstype = gettype(cq, fstypenames);
     free(cq);
    }
   max = p;
  }
 }
 dp->d_npartitions = max + 1 - 'a';
 (void)strcpy(psize, "dx");
 dx = dp->d_drivedata;
 for (p = '0'; p < '0' + NDDATA; p++, dx++) {
  psize[1] = p;
  { long f; (*dx) = (cgetnum(buf, psize, &f) == -1) ? (0) : f; };
 }
 dp->d_magic = DISKMAGIC;
 dp->d_magic2 = DISKMAGIC;
 free(buf);
 return (dp);
}
