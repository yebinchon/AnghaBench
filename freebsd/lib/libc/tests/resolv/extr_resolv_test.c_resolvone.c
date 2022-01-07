
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct addrinfo {int dummy; } ;
typedef int pthread_t ;
typedef int buf ;
struct TYPE_2__ {int sl_cur; char** sl_str; } ;





 int STDOUT_FILENO ;
 int * ask ;
 int* got ;
 TYPE_1__* hosts ;
 int method ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_self () ;
 int random () ;
 int resolv_getaddrinfo (int ,char*,size_t) ;
 int resolv_gethostby (int ,char*) ;
 int resolv_getipnodeby (int ,char*) ;
 int snprintf (char*,int,char*,int ,int,char*,int) ;
 int stats ;
 int write (int ,char*,int) ;

__attribute__((used)) static void
resolvone(int n)
{
 char buf[1024];
 pthread_t self = pthread_self();
 size_t i = (random() & 0x0fffffff) % hosts->sl_cur;
 char *host = hosts->sl_str[i];
 struct addrinfo hints, *res;
 int error, len;

 len = snprintf(buf, sizeof(buf), "%p: %d resolving %s %d\n",
     self, n, host, (int)i);
 (void)write(STDOUT_FILENO, buf, len);
 switch (method) {
 case 130:
  error = resolv_getaddrinfo(self, host, i);
  break;
 case 129:
  error = resolv_gethostby(self, host);
  break;
 case 128:
  error = resolv_getipnodeby(self, host);
  break;
 default:
  break;
 }
 pthread_mutex_lock(&stats);
 ask[i]++;
 got[i] += error == 0;
 pthread_mutex_unlock(&stats);
}
