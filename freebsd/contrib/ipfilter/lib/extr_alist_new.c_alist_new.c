
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_6__ {int i6; } ;
struct TYPE_7__ {int al_not; int al_family; int al_i6addr; TYPE_1__ al_i6mask; int al_mask; } ;
typedef TYPE_2__ alist_t ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNSPEC ;
 scalar_t__ ISSPACE (char) ;
 int atoi (char*) ;
 TYPE_2__* calloc (int,int) ;
 int fill6bits (int,int ) ;
 int fprintf (int ,char*) ;
 int free (TYPE_2__*) ;
 int gethost (int,char*,int *) ;
 int htonl (int) ;
 int sscanf (char*,char*,int*,int*,int*,int*) ;
 int stderr ;
 char* strchr (char*,char) ;

alist_t *
alist_new(int family, char *host)
{
 int a, b, c, d, bits;
 char *slash;
 alist_t *al;
 u_int mask;

 if (family == AF_UNSPEC) {
  if (strchr(host, ':') != ((void*)0))
   family = AF_INET6;
  else
   family = AF_INET;
 }
 if (family != AF_INET && family != AF_INET6)
  return ((void*)0);

 al = calloc(1, sizeof(*al));
 if (al == ((void*)0)) {
  fprintf(stderr, "alist_new out of memory\n");
  return ((void*)0);
 }

 while (ISSPACE(*host))
  host++;

 if (*host == '!') {
  al->al_not = 1;
  host++;
  while (ISSPACE(*host))
   host++;
 }

 bits = -1;
 slash = strchr(host, '/');
 if (slash != ((void*)0)) {
  *slash = '\0';
  bits = atoi(slash + 1);
 }

 if (family == AF_INET) {
  if (bits > 32)
   goto bad;

  a = b = c = d = -1;
  sscanf(host, "%d.%d.%d.%d", &a, &b, &c, &d);

  if (bits > 0 && bits < 33) {
   mask = 0xffffffff << (32 - bits);
  } else if (b == -1) {
   mask = 0xff000000;
   b = c = d = 0;
  } else if (c == -1) {
   mask = 0xffff0000;
   c = d = 0;
  } else if (d == -1) {
   mask = 0xffffff00;
   d = 0;
  } else {
   mask = 0xffffffff;
  }
  al->al_mask = htonl(mask);
 } else {
  if (bits > 128)
   goto bad;
  fill6bits(bits, al->al_i6mask.i6);
 }

 if (gethost(family, host, &al->al_i6addr) == -1) {
  if (slash != ((void*)0))
   *slash = '/';
  fprintf(stderr, "Cannot parse hostname\n");
  goto bad;
 }
 al->al_family = family;
 if (slash != ((void*)0))
  *slash = '/';
 return al;
bad:
 free(al);
 return ((void*)0);
}
