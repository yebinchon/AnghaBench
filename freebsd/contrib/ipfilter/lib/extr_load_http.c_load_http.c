
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_4__ {struct TYPE_4__* al_next; } ;
typedef TYPE_1__ alist_t ;


 int AF_UNSPEC ;
 scalar_t__ ISSPACE (char) ;
 int LOAD_BUFSIZE ;
 int MAX_URL_LEN ;
 TYPE_1__* alist_new (int ,char*) ;
 int atoi (char*) ;
 int close (int) ;
 int connecttcp (char*,int) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int memmove (char*,char*,int) ;
 int read (int,char*,int) ;
 int snprintf (char*,size_t,char*,char*) ;
 int stderr ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 int write (int,char*,int) ;

alist_t *
load_http(char *url)
{
 int fd, len, left, port, endhdr, removed, linenum = 0;
 char *s, *t, *u, buffer[LOAD_BUFSIZE], *myurl;
 alist_t *a, *rtop, *rbot;
 size_t avail;
 int error;




 if (strlen(url) > MAX_URL_LEN) {
  fprintf(stderr, "load_http has a URL > %d bytes?!\n",
   MAX_URL_LEN);
  return ((void*)0);
 }

 fd = -1;
 rtop = ((void*)0);
 rbot = ((void*)0);

 avail = sizeof(buffer);
 error = snprintf(buffer, avail, "GET %s HTTP/1.0\r\n", url);





 avail -= error;

 myurl = strdup(url);
 if (myurl == ((void*)0))
  goto done;

 s = myurl + 7;
 t = strchr(s, '/');
 if (t == ((void*)0)) {
  fprintf(stderr, "load_http has a malformed URL '%s'\n", url);
  free(myurl);
  return ((void*)0);
 }
 *t++ = '\0';




 if (strlen(s) + strlen(buffer) + 10 > sizeof(buffer)) {
  fprintf(stderr, "load_http has a malformed URL '%s'\n", url);
  free(myurl);
  return ((void*)0);
 }

 u = strchr(s, '@');
 if (u != ((void*)0))
  s = u + 1;

 error = snprintf(buffer + strlen(buffer), avail, "Host: %s\r\n\r\n", s);
 if (error >= avail) {
  fprintf(stderr, "URL is too large: %s\n", url);
  goto done;
 }

 u = strchr(s, ':');
 if (u != ((void*)0)) {
  *u++ = '\0';
  port = atoi(u);
  if (port < 0 || port > 65535)
   goto done;
 } else {
  port = 80;
 }


 fd = connecttcp(s, port);
 if (fd == -1)
  goto done;


 len = strlen(buffer);
 if (write(fd, buffer, len) != len)
  goto done;

 s = buffer;
 endhdr = 0;
 left = sizeof(buffer) - 1;

 while ((len = read(fd, s, left)) > 0) {
  s[len] = '\0';
  left -= len;
  s += len;

  if (endhdr >= 0) {
   if (endhdr == 0) {
    t = strchr(buffer, ' ');
    if (t == ((void*)0))
     continue;
    t++;
    if (*t != '2')
     break;
   }

   u = buffer;
   while ((t = strchr(u, '\r')) != ((void*)0)) {
    if (t == u) {
     if (*(t + 1) == '\n') {
      u = t + 2;
      endhdr = -1;
      break;
     } else
      t++;
    } else if (*(t + 1) == '\n') {
     endhdr++;
     u = t + 2;
    } else
     u = t + 1;
   }
   if (endhdr >= 0)
    continue;
   removed = (u - buffer) + 1;
   memmove(buffer, u, (sizeof(buffer) - left) - removed);
   s -= removed;
   left += removed;
  }

  do {
   t = strchr(buffer, '\n');
   if (t == ((void*)0))
    break;

   linenum++;
   *t = '\0';





   u = strchr(buffer, '#');
   if (u != ((void*)0)) {
    *u = '\0';
    if (u == buffer)
     continue;
   }




   for (u = t - 1; (u >= buffer) && ISSPACE(*u); u--)
    *u = '\0';

   a = alist_new(AF_UNSPEC, buffer);
   if (a != ((void*)0)) {
    if (rbot != ((void*)0))
     rbot->al_next = a;
    else
     rtop = a;
    rbot = a;
   } else {
    fprintf(stderr,
     "%s:%d unrecognised content:%s\n",
     url, linenum, buffer);
   }

   t++;
   removed = t - buffer;
   memmove(buffer, t, sizeof(buffer) - left - removed);
   s -= removed;
   left += removed;

  } while (1);
 }

done:
 if (myurl != ((void*)0))
  free(myurl);
 if (fd != -1)
  close(fd);
 return rtop;
}
