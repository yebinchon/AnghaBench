
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int SM_FILE_T ;


 int SM_IO_RDONLY_B ;
 int SM_IO_WRONLY_B ;
 int SM_TEST (int) ;
 int SM_TIME_DEFAULT ;
 int SmFtStdio ;
 scalar_t__ errno ;
 int fprintf (int ,char*,char*,char*,int,int) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int sm_io_close (int *,int ) ;
 int sm_io_fgets (int *,int ,char*,size_t) ;
 int * sm_io_open (int ,int ,char*,int ,int *) ;
 int sm_io_putc (int *,int ,char) ;
 int stderr ;

void
check(char *msg, int l)
{
 SM_FILE_T *wfp, *rfp;
 char buf[256];
 size_t n;
 int r, i;
 static char fn[] = "tfget";

 wfp = sm_io_open(SmFtStdio, SM_TIME_DEFAULT, fn,
      SM_IO_WRONLY_B, ((void*)0));
 SM_TEST(wfp != ((void*)0));
 for (i = 0; i < l; i++)
 {
  r = sm_io_putc(wfp, SM_TIME_DEFAULT, msg[i]);
  SM_TEST(r >= 0);
 }
 r = sm_io_close(wfp, SM_TIME_DEFAULT);
 SM_TEST(r == 0);

 rfp = sm_io_open(SmFtStdio, SM_TIME_DEFAULT, fn,
      SM_IO_RDONLY_B, ((void*)0));
 SM_TEST(rfp != ((void*)0));
 n = sizeof(buf);
 r = sm_io_fgets(rfp, SM_TIME_DEFAULT, buf, n);
 if (l == 0)
 {
  SM_TEST(r == -1);
  SM_TEST(errno == 0);
 }
 else
 {
  SM_TEST(r == l);
  if (r != l)
   fprintf(stderr, "buf='%s', in='%s', r=%d, l=%d\n",
    buf, msg, r, l);
 }
 SM_TEST(memcmp(buf, msg, l) == 0);
 r = sm_io_close(rfp, SM_TIME_DEFAULT);
 SM_TEST(r == 0);
}
