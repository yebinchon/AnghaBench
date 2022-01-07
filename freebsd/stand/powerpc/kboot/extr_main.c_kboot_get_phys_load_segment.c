
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val_64 ;
typedef int val_32 ;
typedef unsigned long uint64_t ;
typedef int uint32_t ;
struct region_desc {unsigned long start; unsigned long end; } ;
typedef int entry ;


 int MAX (int,int) ;
 int O_RDONLY ;
 unsigned long be32toh (int ) ;
 void* be64toh (unsigned long) ;
 int host_close (int) ;
 int host_open (char*,int ,int ) ;
 int host_read (int,...) ;
 int memcpy (int *,unsigned long*,int) ;

__attribute__((used)) static uint64_t
kboot_get_phys_load_segment(void)
{
 int fd;
 uint64_t entry[2];
 static uint64_t load_segment = ~(0UL);
 uint64_t val_64;
 uint32_t val_32;
 struct region_desc rsvd_reg[32];
 int rsvd_reg_cnt = 0;
 int ret, a, b;
 uint64_t start, end;

 if (load_segment == ~(0UL)) {


  load_segment = 0UL;


  fd = host_open("/proc/device-tree/reserved-ranges", O_RDONLY, 0);
  if (fd >= 0) {
   while (host_read(fd, &entry[0], sizeof(entry)) == sizeof(entry)) {
    rsvd_reg[rsvd_reg_cnt].start = be64toh(entry[0]);
    rsvd_reg[rsvd_reg_cnt].end =
        be64toh(entry[1]) + rsvd_reg[rsvd_reg_cnt].start - 1;
    rsvd_reg_cnt++;
   }
   host_close(fd);
  }

  fd = host_open("/proc/device-tree/chosen/linux,kernel-end", O_RDONLY, 0);
  if (fd >= 0) {
   ret = host_read(fd, &val_64, sizeof(val_64));

   if (ret == sizeof(uint64_t)) {
    rsvd_reg[rsvd_reg_cnt].start = 0;
    rsvd_reg[rsvd_reg_cnt].end = be64toh(val_64) - 1;
   } else {
    memcpy(&val_32, &val_64, sizeof(val_32));
    rsvd_reg[rsvd_reg_cnt].start = 0;
    rsvd_reg[rsvd_reg_cnt].end = be32toh(val_32) - 1;
   }
   rsvd_reg_cnt++;

   host_close(fd);
  }

  fd = host_open("/proc/device-tree/memory@0/reg", O_RDONLY, 0);
  if (fd < 0)
   fd = host_open("/proc/device-tree/memory/reg", O_RDONLY, 0);
  if (fd >= 0) {
   ret = host_read(fd, &entry, sizeof(entry));


   entry[0] = be64toh(entry[0]);
   entry[1] = be64toh(entry[1]);


   if (entry[0] != 0) {
    rsvd_reg[rsvd_reg_cnt].start = 0;
    rsvd_reg[rsvd_reg_cnt].end = entry[0] - 1;
    rsvd_reg_cnt++;
   }

   if (entry[1] != 0xffffffffffffffffUL) {
    rsvd_reg[rsvd_reg_cnt].start = entry[0] + entry[1];
    rsvd_reg[rsvd_reg_cnt].end = 0xffffffffffffffffUL;
    rsvd_reg_cnt++;
   }

   host_close(fd);
  }


  for (a = rsvd_reg_cnt - 1; a > 0; a--) {
   for (b = 0; b < a; b++) {
    if (rsvd_reg[b].start > rsvd_reg[b + 1].start) {
     struct region_desc tmp;
     tmp = rsvd_reg[b];
     rsvd_reg[b] = rsvd_reg[b + 1];
     rsvd_reg[b + 1] = tmp;
    }
   }
  }


  for (a = 0; a < rsvd_reg_cnt - 1; ) {

   if ((rsvd_reg[a + 1].start >= rsvd_reg[a].start) &&
       ((rsvd_reg[a + 1].start - 1) <= rsvd_reg[a].end)) {

    rsvd_reg[a].end =
        MAX(rsvd_reg[a].end, rsvd_reg[a + a].end);

    for (b = a + 1; b < rsvd_reg_cnt - 1; b++)
     rsvd_reg[b] = rsvd_reg[b + 1];
    rsvd_reg_cnt--;
   } else
    a++;
  }


  if (rsvd_reg_cnt > 0) {
   start = 0;
   end = rsvd_reg[0].start;
   for (a = 0; a < rsvd_reg_cnt - 1; a++) {
    if ((start >= rsvd_reg[a].start) &&
        (start <= rsvd_reg[a].end)) {
     start = rsvd_reg[a].end + 1;
     end = rsvd_reg[a + 1].start;
    } else
     break;
   }

   if (start != end) {
    uint64_t align = 64UL*1024UL*1024UL;


    start = (start + align - 1UL) & ~(align - 1UL);
    end = ((end + 1UL) & ~(align - 1UL)) - 1UL;

    if (start < end)
     load_segment = start;
   }
  }
 }

 return (load_segment);
}
