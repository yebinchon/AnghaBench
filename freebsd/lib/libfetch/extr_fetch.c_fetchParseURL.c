
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url {int netrcfd; char* scheme; char* host; int port; char* doc; int pwd; int user; } ;


 int DEBUGF (char*,char*,int ,int ,char*,int,char*) ;
 int INT_MAX ;
 int IPPORT_MAX ;
 int MAXHOSTNAMELEN ;
 int SCHEME_HTTP ;
 int SCHEME_HTTPS ;
 int URL_BAD_PORT ;
 int URL_PWDLEN ;
 int URL_SCHEMELEN ;
 int URL_USERLEN ;
 struct url* calloc (int,int) ;
 char* fetch_pctdecode (int ,char const*,int ) ;
 int fetch_syserr () ;
 int free (struct url*) ;
 int isspace (unsigned char) ;
 char* malloc (int) ;
 int * strchr (char const*,char) ;
 scalar_t__ strcmp (char*,int ) ;
 char* strdup (char const*) ;
 int strlen (char const*) ;
 char* strpbrk (char const*,char*) ;
 int strspn (char const*,char*) ;
 char* strstr (char const*,char*) ;
 void* tolower (unsigned char) ;
 int url_seterr (int ) ;

struct url *
fetchParseURL(const char *URL)
{
 char *doc;
 const char *p, *q;
 struct url *u;
 int i, n;


 if ((u = calloc(1, sizeof(*u))) == ((void*)0)) {
  fetch_syserr();
  return (((void*)0));
 }
 u->netrcfd = -1;


 if ((p = strstr(URL, ":/"))) {
                if (p - URL > URL_SCHEMELEN)
                        goto ouch;
                for (i = 0; URL + i < p; i++)
                        u->scheme[i] = tolower((unsigned char)URL[i]);
  URL = ++p;




  if (URL[1] == '/')
   URL = (p += 2);
 } else {
  p = URL;
 }
 if (!*URL || *URL == '/' || *URL == '.' ||
     (u->scheme[0] == '\0' &&
  strchr(URL, '/') == ((void*)0) && strchr(URL, ':') == ((void*)0)))
  goto nohost;

 p = strpbrk(URL, "/@");
 if (p && *p == '@') {

  q = fetch_pctdecode(u->user, URL, URL_USERLEN);


  if (*q == ':')
   q = fetch_pctdecode(u->pwd, q + 1, URL_PWDLEN);

  p++;
 } else {
  p = URL;
 }


 if (*p == '[') {
  q = p + 1 + strspn(p + 1, ":0123456789ABCDEFabcdef");
  if (*q++ != ']')
   goto ouch;
 } else {

  q = p + strspn(p, "-." "0123456789"
      "ABCDEFGHIJKLMNOPQRSTUVWXYZ" "_"
      "abcdefghijklmnopqrstuvwxyz");
 }
 if ((*q != '\0' && *q != '/' && *q != ':') || q - p > MAXHOSTNAMELEN)
  goto ouch;
 for (i = 0; p + i < q; i++)
  u->host[i] = tolower((unsigned char)p[i]);
 u->host[i] = '\0';
 p = q;


 if (*p == ':') {
  for (n = 0, q = ++p; *q && (*q != '/'); q++) {
   if (*q >= '0' && *q <= '9' && n < INT_MAX / 10) {
    n = n * 10 + (*q - '0');
   } else {

    url_seterr(URL_BAD_PORT);
    goto ouch;
   }
  }
  if (n < 1 || n > IPPORT_MAX)
   goto ouch;
  u->port = n;
  p = q;
 }

nohost:

 if (!*p)
  p = "/";

 if (strcmp(u->scheme, SCHEME_HTTP) == 0 ||
     strcmp(u->scheme, SCHEME_HTTPS) == 0) {
  const char hexnums[] = "0123456789abcdef";


  if ((doc = malloc(strlen(p) * 3 + 1)) == ((void*)0)) {
   fetch_syserr();
   goto ouch;
  }
  u->doc = doc;
  while (*p != '\0') {
   if (!isspace((unsigned char)*p)) {
    *doc++ = *p++;
   } else {
    *doc++ = '%';
    *doc++ = hexnums[((unsigned int)*p) >> 4];
    *doc++ = hexnums[((unsigned int)*p) & 0xf];
    p++;
   }
  }
  *doc = '\0';
 } else if ((u->doc = strdup(p)) == ((void*)0)) {
  fetch_syserr();
  goto ouch;
 }

 DEBUGF("scheme:   \"%s\"\n"
     "user:     \"%s\"\n"
     "password: \"%s\"\n"
     "host:     \"%s\"\n"
     "port:     \"%d\"\n"
     "document: \"%s\"\n",
     u->scheme, u->user, u->pwd,
     u->host, u->port, u->doc);

 return (u);

ouch:
 free(u);
 return (((void*)0));
}
