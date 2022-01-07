
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u_long ;
struct partition {scalar_t__ p_size; unsigned long long p_offset; scalar_t__ p_fstype; } ;
struct disklabel {int d_secsize; int d_nsectors; int d_ntracks; int d_ncylinders; scalar_t__ d_rpm; int d_secpercyl; int d_secperunit; int d_bbsize; int d_npartitions; struct partition* d_partitions; int d_interleave; } ;
typedef unsigned long long off_t ;


 unsigned long long BBSIZE ;
 int DEFPARTITIONS ;
 scalar_t__ FS_UNUSED ;
 scalar_t__ FS_VINUM ;
 int MAXPARTITIONS ;
 int RAW_PART ;
 scalar_t__ allfields ;
 int fprintf (int ,char*,...) ;
 struct disklabel* getvirginlabel () ;
 struct disklabel lab ;
 char* part_offset_type ;
 scalar_t__* part_set ;
 char* part_size_type ;
 unsigned long long secsize ;
 int stderr ;
 int warnx (char*,...) ;

__attribute__((used)) static int
checklabel(struct disklabel *lp)
{
 struct partition *pp;
 int i, errors = 0;
 char part;
 u_long base_offset, needed, total_size, total_percent, current_offset;
 long free_space;
 int seen_default_offset;
 int hog_part;
 int j;
 struct partition *pp2;

 if (lp == ((void*)0))
  lp = &lab;

 if (allfields) {

  if (lp->d_secsize == 0) {
   fprintf(stderr, "sector size 0\n");
   return (1);
  }
  if (lp->d_nsectors == 0) {
   fprintf(stderr, "sectors/track 0\n");
   return (1);
  }
  if (lp->d_ntracks == 0) {
   fprintf(stderr, "tracks/cylinder 0\n");
   return (1);
  }
  if (lp->d_ncylinders == 0) {
   fprintf(stderr, "cylinders/unit 0\n");
   errors++;
  }
  if (lp->d_rpm == 0)
   warnx("revolutions/minute 0");
  if (lp->d_secpercyl == 0)
   lp->d_secpercyl = lp->d_nsectors * lp->d_ntracks;
  if (lp->d_secperunit == 0)
   lp->d_secperunit = lp->d_secpercyl * lp->d_ncylinders;
  if (lp->d_bbsize == 0) {
   fprintf(stderr, "boot block size 0\n");
   errors++;
  } else if (lp->d_bbsize % lp->d_secsize)
   warnx("boot block size %% sector-size != 0");
  if (lp->d_npartitions > MAXPARTITIONS) {
   warnx("number of partitions (%lu) > MAXPARTITIONS (%d)",
       (u_long)lp->d_npartitions, MAXPARTITIONS);
   errors++;
  }
  if (lp->d_npartitions < DEFPARTITIONS) {
   warnx("number of partitions (%lu) < DEFPARTITIONS (%d)",
       (u_long)lp->d_npartitions, DEFPARTITIONS);
   errors++;
  }
 } else {
  struct disklabel *vl;

  vl = getvirginlabel();
  if (lp->d_secsize == 0)
   lp->d_secsize = vl->d_secsize;
  if (lp->d_nsectors == 0)
   lp->d_nsectors = vl->d_nsectors;
  if (lp->d_ntracks == 0)
   lp->d_ntracks = vl->d_ntracks;
  if (lp->d_ncylinders == 0)
   lp->d_ncylinders = vl->d_ncylinders;
  if (lp->d_rpm == 0)
   lp->d_rpm = vl->d_rpm;
  if (lp->d_interleave == 0)
   lp->d_interleave = vl->d_interleave;
  if (lp->d_secpercyl == 0)
   lp->d_secpercyl = vl->d_secpercyl;
  if (lp->d_secperunit == 0 ||
      lp->d_secperunit > vl->d_secperunit)
   lp->d_secperunit = vl->d_secperunit;
  if (lp->d_bbsize == 0)
   lp->d_bbsize = vl->d_bbsize;
  if (lp->d_npartitions < DEFPARTITIONS ||
      lp->d_npartitions > MAXPARTITIONS)
   lp->d_npartitions = vl->d_npartitions;
 }



 total_size = 0;
 total_percent = 0;
 hog_part = -1;

 for (i = 0; i < lp->d_npartitions; i++) {
  pp = &lp->d_partitions[i];
  if (part_set[i]) {
   if (part_size_type[i] == '*') {
    if (i == RAW_PART) {
     pp->p_size = lp->d_secperunit;
    } else {
     if (hog_part != -1)
      warnx("Too many '*' partitions (%c and %c)",
          hog_part + 'a',i + 'a');
     else
      hog_part = i;
    }
   } else {
    off_t size;

    size = pp->p_size;
    switch (part_size_type[i]) {
    case '%':
     total_percent += size;
     break;
    case 't':
    case 'T':
     size *= 1024ULL;

    case 'g':
    case 'G':
     size *= 1024ULL;

    case 'm':
    case 'M':
     size *= 1024ULL;

    case 'k':
    case 'K':
     size *= 1024ULL;
     break;
    case '\0':
     break;
    default:
     warnx("unknown multiplier suffix '%c' for partition %c (should be K, M, G or T)",
         part_size_type[i], i + 'a');
     break;
    }

    if (part_size_type[i] != '%') {




     if (part_size_type[i] != '\0') {
      if (size % lp->d_secsize != 0)
       warnx("partition %c not an integer number of sectors",
           i + 'a');
      size /= lp->d_secsize;
      pp->p_size = size;
     }

     if (i != RAW_PART)
      total_size += size;
    }
   }
  }
 }


 base_offset = BBSIZE / secsize;
 free_space = 0;
 for (i = 0; i < lp->d_npartitions; i++) {
  pp = &lp->d_partitions[i];
  if (!part_set[i] || i == RAW_PART ||
      part_size_type[i] == '%' || part_size_type[i] == '*')
   continue;
  if (pp->p_offset > base_offset)
   free_space += pp->p_offset - base_offset;
  if (pp->p_offset + pp->p_size > base_offset)
   base_offset = pp->p_offset + pp->p_size;
 }
 if (base_offset < lp->d_secperunit)
  free_space += lp->d_secperunit - base_offset;


 if (total_percent != 0) {
  if (total_percent > 100) {
   fprintf(stderr,"total percentage %lu is greater than 100\n",
       total_percent);
   errors++;
  }

  if (free_space > 0) {
   for (i = 0; i < lp->d_npartitions; i++) {
    pp = &lp->d_partitions[i];
    if (part_set[i] && part_size_type[i] == '%') {

     pp->p_size = ((double)pp->p_size/100) * free_space;
     total_size += pp->p_size;



    }
   }
  } else {
   fprintf(stderr,
       "%ld sectors available to give to '*' and '%%' partitions\n",
       free_space);
   errors++;

  }
 }

 if (hog_part != -1) {




  needed = 0;
  base_offset = BBSIZE / secsize;
  for (i = hog_part - 1; i >= 0; i--) {
   pp = &lp->d_partitions[i];
   if (!part_set[i] || i == RAW_PART)
    continue;
   if (part_offset_type[i] == '*') {
    needed += pp->p_size;
    continue;
   }
   base_offset = pp->p_offset + pp->p_size;
   break;
  }
  current_offset = lp->d_secperunit;
  for (i = lp->d_npartitions - 1; i > hog_part; i--) {
   pp = &lp->d_partitions[i];
   if (!part_set[i] || i == RAW_PART)
    continue;
   if (part_offset_type[i] == '*') {
    needed += pp->p_size;
    continue;
   }
   current_offset = pp->p_offset;
  }

  if (current_offset - base_offset <= needed) {
   fprintf(stderr, "Cannot find space for partition %c\n",
       hog_part + 'a');
   fprintf(stderr,
       "Need more than %lu sectors between %lu and %lu\n",
       needed, base_offset, current_offset);
   errors++;
   lp->d_partitions[hog_part].p_size = 0;
  } else {
   lp->d_partitions[hog_part].p_size = current_offset -
       base_offset - needed;
   total_size += lp->d_partitions[hog_part].p_size;
  }
 }


 current_offset = BBSIZE / secsize;
 seen_default_offset = 0;
 for (i = 0; i < lp->d_npartitions; i++) {
  part = 'a' + i;
  pp = &lp->d_partitions[i];
  if (part_set[i]) {
   if (part_offset_type[i] == '*') {
    if (i == RAW_PART) {
     pp->p_offset = 0;
    } else {
     pp->p_offset = current_offset;
     seen_default_offset = 1;
    }
   } else {

    if (pp->p_offset < current_offset &&
        seen_default_offset && i != RAW_PART &&
        pp->p_fstype != FS_VINUM) {
     fprintf(stderr,
"Offset %ld for partition %c overlaps previous partition which ends at %lu\n",
         (long)pp->p_offset,i+'a',current_offset);
     fprintf(stderr,
"Labels with any *'s for offset must be in ascending order by sector\n");
     errors++;
    } else if (pp->p_offset != current_offset &&
        i != RAW_PART && seen_default_offset) {




     warnx(
"Offset %ld for partition %c doesn't match expected value %ld",
         (long)pp->p_offset, i + 'a', current_offset);
    }
   }
   if (i != RAW_PART)
    current_offset = pp->p_offset + pp->p_size;
  }
 }

 for (i = 0; i < lp->d_npartitions; i++) {
  part = 'a' + i;
  pp = &lp->d_partitions[i];
  if (pp->p_size == 0 && pp->p_offset != 0)
   warnx("partition %c: size 0, but offset %lu",
       part, (u_long)pp->p_offset);
  if (pp->p_offset > lp->d_secperunit) {
   fprintf(stderr,
       "partition %c: offset past end of unit\n", part);
   errors++;
  }
  if (pp->p_offset + pp->p_size > lp->d_secperunit) {
   fprintf(stderr,
   "partition %c: partition extends past end of unit\n",
       part);
   errors++;
  }
  if (i == RAW_PART) {
   if (pp->p_fstype != FS_UNUSED)
    warnx("partition %c is not marked as unused!",part);
   if (pp->p_offset != 0)
    warnx("partition %c doesn't start at 0!",part);
   if (pp->p_size != lp->d_secperunit)
    warnx("partition %c doesn't cover the whole unit!",part);

   if ((pp->p_fstype != FS_UNUSED) || (pp->p_offset != 0) ||
       (pp->p_size != lp->d_secperunit)) {
    warnx("An incorrect partition %c may cause problems for "
        "standard system utilities",part);
   }
  }



  for (j = 0; j < i; j++) {
   pp2 = &lp->d_partitions[j];
   if (j != RAW_PART && i != RAW_PART &&
       pp->p_fstype != FS_VINUM &&
       pp2->p_fstype != FS_VINUM &&
       part_set[i] && part_set[j]) {
    if (pp2->p_offset < pp->p_offset + pp->p_size &&
        (pp2->p_offset + pp2->p_size > pp->p_offset ||
     pp2->p_offset >= pp->p_offset)) {
     fprintf(stderr,"partitions %c and %c overlap!\n",
         j + 'a', i + 'a');
     errors++;
    }
   }
  }
 }
 for (; i < lp->d_npartitions; i++) {
  part = 'a' + i;
  pp = &lp->d_partitions[i];
  if (pp->p_size || pp->p_offset)
   warnx("unused partition %c: size %d offset %lu",
       'a' + i, pp->p_size, (u_long)pp->p_offset);
 }
 return (errors);
}
