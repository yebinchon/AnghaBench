
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url {int netrcfd; char const* host; char* user; char* pwd; } ;
typedef int FILE ;


 int DEBUGF (char*,...) ;
 int close (int) ;
 int errno ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int fetch_info (char*) ;
 int fetch_netrc_open () ;
 char* fetch_read_word (int *) ;
 int rewind (int *) ;
 int snprintf (char*,int,char*,char const*) ;
 scalar_t__ strcasecmp (char const*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char const* strerror (int) ;

int
fetch_netrc_auth(struct url *url)
{
 const char *word;
 int serrno;
 FILE *f;

 if (url->netrcfd < 0)
  url->netrcfd = fetch_netrc_open();
 if (url->netrcfd < 0)
  return (-1);
 if ((f = fdopen(url->netrcfd, "r")) == ((void*)0)) {
  serrno = errno;
  DEBUGF("fdopen(netrcfd): %s", strerror(errno));
  close(url->netrcfd);
  url->netrcfd = -1;
  errno = serrno;
  return (-1);
 }
 rewind(f);
 DEBUGF("searching netrc for %s\n", url->host);
 while ((word = fetch_read_word(f)) != ((void*)0)) {
  if (strcmp(word, "default") == 0) {
   DEBUGF("using default netrc settings\n");
   break;
  }
  if (strcmp(word, "machine") == 0 &&
      (word = fetch_read_word(f)) != ((void*)0) &&
      strcasecmp(word, url->host) == 0) {
   DEBUGF("using netrc settings for %s\n", word);
   break;
  }
 }
 if (word == ((void*)0))
  goto ferr;
 while ((word = fetch_read_word(f)) != ((void*)0)) {
  if (strcmp(word, "login") == 0) {
   if ((word = fetch_read_word(f)) == ((void*)0))
    goto ferr;
   if (snprintf(url->user, sizeof(url->user),
    "%s", word) > (int)sizeof(url->user)) {
    fetch_info("login name in .netrc is too long");
    url->user[0] = '\0';
   }
  } else if (strcmp(word, "password") == 0) {
   if ((word = fetch_read_word(f)) == ((void*)0))
    goto ferr;
   if (snprintf(url->pwd, sizeof(url->pwd),
    "%s", word) > (int)sizeof(url->pwd)) {
    fetch_info("password in .netrc is too long");
    url->pwd[0] = '\0';
   }
  } else if (strcmp(word, "account") == 0) {
   if ((word = fetch_read_word(f)) == ((void*)0))
    goto ferr;

  } else {
   break;
  }
 }
 fclose(f);
 url->netrcfd = -1;
 return (0);
ferr:
 serrno = errno;
 fclose(f);
 url->netrcfd = -1;
 errno = serrno;
 return (-1);
}
