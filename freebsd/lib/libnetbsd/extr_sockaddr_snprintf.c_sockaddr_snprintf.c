
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; } ;
struct sockaddr_in6 {size_t sin6_flowinfo; size_t sin6_scope_id; int sin6_addr; int sin6_port; } ;
struct sockaddr_in {int sin_addr; int sin_port; } ;
struct sockaddr_dl {size_t sdl_slen; size_t sdl_nlen; size_t sdl_alen; size_t sdl_index; } ;
struct sockaddr {int sa_family; } ;
typedef int socklen_t ;
typedef int pbuf ;
typedef int nbuf ;
typedef int abuf ;


 int ADDC (char const) ;
 int ADDNA () ;
 int ADDS (char*) ;





 int EAFNOSUPPORT ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 int abort () ;
 int debug_dl (char*,int,struct sockaddr_dl const*) ;
 int debug_in (char*,int,struct sockaddr_in const*) ;
 int debug_in6 (char*,int,struct sockaddr_in6 const*) ;
 int debug_un (char*,int,struct sockaddr_un const*) ;
 int errno ;
 scalar_t__ getnameinfo (struct sockaddr const* const,int ,char*,unsigned int,char*,unsigned int,int) ;
 int link_ntoa (struct sockaddr_dl const*) ;
 int ntohs (int ) ;
 int snprintf (char*,int,char*,size_t) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,int ,int) ;

int
sockaddr_snprintf(char * const sbuf, const size_t len, const char * const fmt,
    const struct sockaddr * const sa)
{
 const void *a = ((void*)0);
 char abuf[1024], nbuf[1024], *addr = ((void*)0);
 char Abuf[1024], pbuf[32], *name = ((void*)0), *port = ((void*)0);
 char *ebuf = &sbuf[len - 1], *buf = sbuf;
 const char *ptr, *s;
 size_t salen;
 int p = -1;
 const struct sockaddr_in *sin4 = ((void*)0);
 const struct sockaddr_in6 *sin6 = ((void*)0);
 const struct sockaddr_un *sun = ((void*)0);




 int na = 1;
 switch (sa->sa_family) {
 case 128:
  goto done;
 case 129:
  salen = sizeof(*sun);
  sun = ((const struct sockaddr_un *)(const void *)sa);
  (void)strlcpy(addr = abuf, sun->sun_path, sizeof(abuf));
  break;
 case 132:
  salen = sizeof(*sin4);
  sin4 = ((const struct sockaddr_in *)(const void *)sa);
  p = ntohs(sin4->sin_port);
  a = &sin4->sin_addr;
  break;
 case 131:
  salen = sizeof(*sin6);
  sin6 = ((const struct sockaddr_in6 *)(const void *)sa);
  p = ntohs(sin6->sin6_port);
  a = &sin6->sin6_addr;
  break;
 default:
  errno = EAFNOSUPPORT;
  return -1;
 }

 if (addr == abuf)
  name = addr;

 if (a && getnameinfo(sa, (socklen_t)salen, addr = abuf,
     (unsigned int)sizeof(abuf), ((void*)0), 0,
     NI_NUMERICHOST|NI_NUMERICSERV) != 0)
  return -1;

 for (ptr = fmt; *ptr; ptr++) {
  if (*ptr != '%') {
   do { if (buf < ebuf) *buf++ = *ptr; else buf++; } while ( 0);
   continue;
  }
   next_char:
  switch (*++ptr) {
  case '?':
   na = 0;
   goto next_char;
  case 'a':
   do { for (s = addr; *s; s++) do { if (buf < ebuf) *buf++ = *s; else buf++; } while ( 0); } while ( 0);
   break;
  case 'p':
   if (p != -1) {
    (void)snprintf(nbuf, sizeof(nbuf), "%d", p);
    do { for (s = nbuf; *s; s++) do { if (buf < ebuf) *buf++ = *s; else buf++; } while ( 0); } while ( 0);
   } else
    do { if (na) do { for (s = "N/A"; *s; s++) do { if (buf < ebuf) *buf++ = *s; else buf++; } while ( 0); } while ( 0); } while ( 0);
   break;
  case 'f':
   (void)snprintf(nbuf, sizeof(nbuf), "%d", sa->sa_family);
   do { for (s = nbuf; *s; s++) do { if (buf < ebuf) *buf++ = *s; else buf++; } while ( 0); } while ( 0);
   break;
  case 'l':
   (void)snprintf(nbuf, sizeof(nbuf), "%zu", salen);
   do { for (s = nbuf; *s; s++) do { if (buf < ebuf) *buf++ = *s; else buf++; } while ( 0); } while ( 0);
   break;
  case 'A':
   if (name)
    do { for (s = name; *s; s++) do { if (buf < ebuf) *buf++ = *s; else buf++; } while ( 0); } while ( 0);
   else if (!a)
    do { if (na) do { for (s = "N/A"; *s; s++) do { if (buf < ebuf) *buf++ = *s; else buf++; } while ( 0); } while ( 0); } while ( 0);
   else {
    getnameinfo(sa, (socklen_t)salen, name = Abuf,
     (unsigned int)sizeof(nbuf), ((void*)0), 0, 0);
    do { for (s = name; *s; s++) do { if (buf < ebuf) *buf++ = *s; else buf++; } while ( 0); } while ( 0);
   }
   break;
  case 'P':
   if (port)
    do { for (s = port; *s; s++) do { if (buf < ebuf) *buf++ = *s; else buf++; } while ( 0); } while ( 0);
   else if (p == -1)
    do { if (na) do { for (s = "N/A"; *s; s++) do { if (buf < ebuf) *buf++ = *s; else buf++; } while ( 0); } while ( 0); } while ( 0);
   else {
    getnameinfo(sa, (socklen_t)salen, ((void*)0), 0,
     port = pbuf,
     (unsigned int)sizeof(pbuf), 0);
    do { for (s = port; *s; s++) do { if (buf < ebuf) *buf++ = *s; else buf++; } while ( 0); } while ( 0);
   }
   break;
  case 'I':





   {
    do { if (na) do { for (s = "N/A"; *s; s++) do { if (buf < ebuf) *buf++ = *s; else buf++; } while ( 0); } while ( 0); } while ( 0);
   }
   break;
  case 'F':
   if (sin6) {
    (void)snprintf(nbuf, sizeof(nbuf), "%d",
        sin6->sin6_flowinfo);
    do { for (s = nbuf; *s; s++) do { if (buf < ebuf) *buf++ = *s; else buf++; } while ( 0); } while ( 0);
    break;
   } else {
    do { if (na) do { for (s = "N/A"; *s; s++) do { if (buf < ebuf) *buf++ = *s; else buf++; } while ( 0); } while ( 0); } while ( 0);
   }
   break;
  case 'S':
   if (sin6) {
    (void)snprintf(nbuf, sizeof(nbuf), "%d",
        sin6->sin6_scope_id);
    do { for (s = nbuf; *s; s++) do { if (buf < ebuf) *buf++ = *s; else buf++; } while ( 0); } while ( 0);
    break;
   } else {
    do { if (na) do { for (s = "N/A"; *s; s++) do { if (buf < ebuf) *buf++ = *s; else buf++; } while ( 0); } while ( 0); } while ( 0);
   }
   break;
  case 'R':
   {
    do { if (na) do { for (s = "N/A"; *s; s++) do { if (buf < ebuf) *buf++ = *s; else buf++; } while ( 0); } while ( 0); } while ( 0);
   }
   break;
  case 'D':
   switch (sa->sa_family) {
   case 129:
    debug_un(nbuf, sizeof(nbuf), sun);
    break;
   case 132:
    debug_in(nbuf, sizeof(nbuf), sin4);
    break;
   case 131:
    debug_in6(nbuf, sizeof(nbuf), sin6);
    break;





   default:
    abort();
   }
   do { for (s = nbuf; *s; s++) do { if (buf < ebuf) *buf++ = *s; else buf++; } while ( 0); } while ( 0);
   break;
  default:
   do { if (buf < ebuf) *buf++ = '%'; else buf++; } while ( 0);
   if (na == 0)
    do { if (buf < ebuf) *buf++ = '?'; else buf++; } while ( 0);
   if (*ptr == '\0')
    goto done;

  case '%':
   do { if (buf < ebuf) *buf++ = *ptr; else buf++; } while ( 0);
   break;
  }
  na = 1;
 }
done:
 if (buf < ebuf)
  *buf = '\0';
 else if (len != 0)
  sbuf[len - 1] = '\0';
 return (int)(buf - sbuf);
}
