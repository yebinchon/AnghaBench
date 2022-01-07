
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
 scalar_t__ debug ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char*,int *,int *,struct addrinfo**) ;
 int* got ;
 TYPE_1__* hosts ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_self () ;
 int random () ;
 int snprintf (char*,int,char*,int ,...) ;
 int stats ;
 int write (int ,char*,int) ;

__attribute__((used)) static void
resolvone(int n)
{
 char buf[1024];
 pthread_t self = pthread_self();
 size_t i = (random() & 0x0fffffff) % hosts->sl_cur;
 char *host = hosts->sl_str[i];
 struct addrinfo *res;
 int error, len;
 if (debug) {
  len = snprintf(buf, sizeof(buf), "%p: %d resolving %s %d\n",
   self, n, host, (int)i);
  (void)write(STDOUT_FILENO, buf, len);
 }
 error = getaddrinfo(host, ((void*)0), ((void*)0), &res);
 if (debug) {
  len = snprintf(buf, sizeof(buf), "%p: host %s %s\n",
   self, host, error ? "not found" : "ok");
  (void)write(STDOUT_FILENO, buf, len);
 }
 pthread_mutex_lock(&stats);
 ask[i]++;
 got[i] += error == 0;
 pthread_mutex_unlock(&stats);
 if (error == 0)
  freeaddrinfo(res);
}
