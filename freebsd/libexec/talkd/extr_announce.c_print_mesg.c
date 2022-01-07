
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct tm {int tm_hour; int tm_min; int tm_year; int tm_mon; int tm_mday; } ;
struct timeval {int tv_sec; } ;
struct iovec {char* iov_base; int iov_len; } ;
struct TYPE_3__ {char* l_name; } ;
typedef TYPE_1__ CTL_MSG ;


 int FAILED ;
 int N_CHARS ;
 int N_LINES ;
 scalar_t__ RING_WAIT ;
 int SUCCESS ;
 int VIS_CSTYLE ;
 int gettimeofday (struct timeval*,int *) ;
 char* hostname ;
 struct tm* localtime (int *) ;
 char* malloc (int) ;
 int max (int,int) ;
 int snprintf (char*,int,char*,...) ;
 int strlen (char*) ;
 int strvis (char*,char*,int ) ;
 int * ttymsg (struct iovec*,int,char const*,scalar_t__) ;

int
print_mesg(const char *tty, CTL_MSG *request,
    const char *remote_machine)
{
 struct timeval now;
 time_t clock_sec;
 struct tm *localclock;
 struct iovec iovec;
 char line_buf[N_LINES][N_CHARS];
 int sizes[N_LINES];
 char big_buf[N_LINES*N_CHARS];
 char *bptr, *lptr, *vis_user;
 int i, j, max_size;

 i = 0;
 max_size = 0;
 gettimeofday(&now, ((void*)0));
 clock_sec = now.tv_sec;
 localclock = localtime(&clock_sec);
 (void)snprintf(line_buf[i], N_CHARS, " ");
 sizes[i] = strlen(line_buf[i]);
 max_size = max(max_size, sizes[i]);
 i++;
 (void)snprintf(line_buf[i], N_CHARS,
  "Message from Talk_Daemon@%s at %d:%02d on %d/%.2d/%.2d ...",
  hostname, localclock->tm_hour , localclock->tm_min,
  localclock->tm_year + 1900, localclock->tm_mon + 1,
  localclock->tm_mday);
 sizes[i] = strlen(line_buf[i]);
 max_size = max(max_size, sizes[i]);
 i++;

 vis_user = malloc(strlen(request->l_name) * 4 + 1);
 strvis(vis_user, request->l_name, VIS_CSTYLE);
 (void)snprintf(line_buf[i], N_CHARS,
     "talk: connection requested by %s@%s", vis_user, remote_machine);
 sizes[i] = strlen(line_buf[i]);
 max_size = max(max_size, sizes[i]);
 i++;
 (void)snprintf(line_buf[i], N_CHARS, "talk: respond with:  talk %s@%s",
     vis_user, remote_machine);
 sizes[i] = strlen(line_buf[i]);
 max_size = max(max_size, sizes[i]);
 i++;
 (void)snprintf(line_buf[i], N_CHARS, " ");
 sizes[i] = strlen(line_buf[i]);
 max_size = max(max_size, sizes[i]);
 i++;
 bptr = big_buf;
 *bptr++ = '\007';
 *bptr++ = '\r';
 *bptr++ = '\n';
 for (i = 0; i < N_LINES; i++) {

  lptr = line_buf[i];
  while (*lptr != '\0')
   *(bptr++) = *(lptr++);

  for (j = sizes[i]; j < max_size + 2; j++)
   *(bptr++) = ' ';
  *(bptr++) = '\r';
  *(bptr++) = '\n';
 }
 *bptr = '\0';
 iovec.iov_base = big_buf;
 iovec.iov_len = bptr - big_buf;





 if (ttymsg(&iovec, 1, tty, RING_WAIT - 5) != ((void*)0))
  return (FAILED);

 return (SUCCESS);
}
