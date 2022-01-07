
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ ssize_t ;


 int MAXPATHLEN ;
 int NVME_MAX_XFER_SIZE ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int PAGE_SIZE ;
 char* aligned_alloc (int ,int) ;
 int be32dec (char*) ;
 int close (int) ;
 int err (int,char*,...) ;
 int errx (int,char*,...) ;
 int free (char*) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int open (char*,int,int) ;
 int printf (char*,...) ;
 int wdc_append_serial_name (int,char*,int ,char const*) ;
 int wdc_get_data (int,int,size_t,int,int,char*,size_t) ;
 scalar_t__ write (int,char*,size_t) ;

__attribute__((used)) static void
wdc_do_dump(int fd, char *tmpl, const char *suffix, uint32_t opcode,
    uint32_t cmd, int len_off)
{
 int first;
 int fd2;
 uint8_t *buf;
 uint32_t len, offset;
 size_t resid;

 wdc_append_serial_name(fd, tmpl, MAXPATHLEN, suffix);


 fd2 = open(tmpl, O_WRONLY | O_CREAT | O_TRUNC, 0644);
 if (fd2 < 0)
  err(1, "open %s", tmpl);
 buf = aligned_alloc(PAGE_SIZE, NVME_MAX_XFER_SIZE);
 if (buf == ((void*)0))
  errx(1, "Can't get buffer to read dump");
 offset = 0;
 len = NVME_MAX_XFER_SIZE;
 first = 1;

 do {
  resid = len > NVME_MAX_XFER_SIZE ? NVME_MAX_XFER_SIZE : len;
  wdc_get_data(fd, opcode, resid, offset, cmd, buf, resid);

  if (first) {
   len = be32dec(buf + len_off);
   if (len == 0)
    errx(1, "No data for %s", suffix);
   if (memcmp("E6LG", buf, 4) != 0)
    printf("Expected header of E6LG, found '%4.4s' instead\n",
        buf);
   printf("Dumping %d bytes of version %d.%d log to %s\n", len,
       buf[8], buf[9], tmpl);





   if (resid > len)
    resid = len;
   first = 0;
  }
  if (write(fd2, buf, resid) != (ssize_t)resid)
   err(1, "write");
  offset += resid;
  len -= resid;
 } while (len > 0);
 free(buf);
 close(fd2);
}
