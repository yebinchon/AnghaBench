
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int sbuf ;
typedef TYPE_1__* res_state ;
typedef int hbuf ;
struct TYPE_3__ {unsigned int options; } ;
typedef int FILE ;


 int NI_MAXHOST ;
 int NI_MAXSERV ;
 unsigned int RES_DEBUG ;
 int errno ;
 int fprintf (int *,char*,char const*,char*,char*,char*) ;
 scalar_t__ getnameinfo (struct sockaddr const*,int,char*,int,char*,int,int ) ;
 int niflags ;
 char* strerror (int) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static void
Aerror(const res_state statp, FILE *file, const char *string, int error,
       const struct sockaddr *address, int alen)
{
 int save = errno;
 char hbuf[NI_MAXHOST];
 char sbuf[NI_MAXSERV];

 if ((statp->options & RES_DEBUG) != 0U) {
  if (getnameinfo(address, alen, hbuf, sizeof(hbuf),
      sbuf, sizeof(sbuf), niflags)) {
   strncpy(hbuf, "?", sizeof(hbuf) - 1);
   hbuf[sizeof(hbuf) - 1] = '\0';
   strncpy(sbuf, "?", sizeof(sbuf) - 1);
   sbuf[sizeof(sbuf) - 1] = '\0';
  }
  fprintf(file, "res_send: %s ([%s].%s): %s\n",
   string, hbuf, sbuf, strerror(error));
 }
 errno = save;
}
