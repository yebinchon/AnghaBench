
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct modification {size_t offset; int what; int m2; int m1; } ;
typedef size_t ssize_t ;
typedef int buf ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int MAX_MODIFICATIONS ;


 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int fprintf (int ,char*,int) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 int parse_modification (int ,struct modification*) ;
 size_t read (int ,int *,int) ;
 int stderr ;
 int usage () ;
 size_t write (int ,int *,size_t) ;

int
main(int argc, char **argv)
{
 int ch;
 u_char buf[8192];
 size_t total;
 ssize_t r, s, o;
 struct modification mods[MAX_MODIFICATIONS];
 u_int i, wflag = 0, num_mods = 0;

 while ((ch = getopt(argc, argv, "wm:")) != -1) {
  switch (ch) {
  case 'm':
   if (num_mods >= MAX_MODIFICATIONS)
    errx(1, "Too many modifications");
   parse_modification(optarg, &(mods[num_mods++]));
   break;
  case 'w':
   wflag = 1;
   break;
  default:
   usage();

  }
 }
 for (total = 0;;) {
  r = s = read(STDIN_FILENO, buf, sizeof(buf));
  if (r == 0)
   break;
  if (r < 0) {
   if (errno == EAGAIN || errno == EINTR)
    continue;
   err(1, "read");
  }
  for (i = 0; i < num_mods; i++) {
   if (mods[i].offset < total ||
       mods[i].offset >= total + s)
    continue;
   switch (mods[i].what) {
   case 128:
    buf[mods[i].offset - total] ^= mods[i].m1;
    break;
   case 129:
    buf[mods[i].offset - total] &= mods[i].m1;
    buf[mods[i].offset - total] |= mods[i].m2;
    break;
   }
  }
  for (o = 0; o < s; o += r) {
   r = write(STDOUT_FILENO, buf, s - o);
   if (r == 0)
    break;
   if (r < 0) {
    if (errno == EAGAIN || errno == EINTR)
     continue;
    err(1, "write");
   }
  }
  total += s;
 }

 r = 0;
 for (i = 0; wflag && i < num_mods; i++) {
  if (mods[i].offset < total)
   continue;
  r = 1;
  fprintf(stderr, "modpipe: warning - mod %u not reached\n", i);
 }
 return r;
}
