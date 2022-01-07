
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rad_handle {int errmsg; int type; } ;
struct in_addr {scalar_t__ s_addr; } ;
typedef int FILE ;


 unsigned long DEAD_TIME ;
 int ERRSIZE ;
 scalar_t__ INADDR_ANY ;
 scalar_t__ INADDR_NONE ;
 int MAXCONFLINE ;
 unsigned long MAXTRIES ;
 int MAX_FIELDS ;
 char* PATH_RADIUS_CONF ;
 int RADIUS_AUTH ;
 unsigned long TIMEOUT ;
 int errno ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int generr (struct rad_handle*,char*,char const*,int,...) ;
 scalar_t__ inet_addr (char*) ;
 int memset (char*,int ,int) ;
 int rad_add_server_ex (struct rad_handle*,char*,int,char*,unsigned long,unsigned long,unsigned long,struct in_addr*) ;
 int split (char*,char**,int,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,int ) ;
 int strerror (int ) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;
 void* strtoul (char*,char**,int) ;

int
rad_config(struct rad_handle *h, const char *path)
{
 FILE *fp;
 char buf[MAXCONFLINE];
 int linenum;
 int retval;

 if (path == ((void*)0))
  path = PATH_RADIUS_CONF;
 if ((fp = fopen(path, "r")) == ((void*)0)) {
  generr(h, "Cannot open \"%s\": %s", path, strerror(errno));
  return -1;
 }
 retval = 0;
 linenum = 0;
 while (fgets(buf, sizeof buf, fp) != ((void*)0)) {
  int len;
  char *fields[MAX_FIELDS];
  int nfields;
  char msg[ERRSIZE];
  char *type;
  char *host, *res;
  char *port_str;
  char *secret;
  char *timeout_str;
  char *maxtries_str;
  char *dead_time_str;
  char *bindto_str;
  char *end;
  char *wanttype;
  unsigned long timeout;
  unsigned long maxtries;
  unsigned long dead_time;
  int port;
  struct in_addr bindto;
  int i;

  linenum++;
  len = strlen(buf);

  if (buf[len - 1] != '\n') {
   if (len == sizeof buf - 1)
    generr(h, "%s:%d: line too long", path,
        linenum);
   else
    generr(h, "%s:%d: missing newline", path,
        linenum);
   retval = -1;
   break;
  }
  buf[len - 1] = '\0';


  nfields = split(buf, fields, MAX_FIELDS, msg, sizeof msg);
  if (nfields == -1) {
   generr(h, "%s:%d: %s", path, linenum, msg);
   retval = -1;
   break;
  }
  if (nfields == 0)
   continue;






  if (strcmp(fields[0], "auth") != 0 &&
      strcmp(fields[0], "acct") != 0) {
   if (nfields >= MAX_FIELDS) {
    generr(h, "%s:%d: invalid service type", path,
        linenum);
    retval = -1;
    break;
   }
   nfields++;
   for (i = nfields; --i > 0; )
    fields[i] = fields[i - 1];
   fields[0] = "auth";
  }
  if (nfields < 3) {
   generr(h, "%s:%d: missing shared secret", path,
       linenum);
   retval = -1;
   break;
  }
  type = fields[0];
  host = fields[1];
  secret = fields[2];
  timeout_str = fields[3];
  maxtries_str = fields[4];
  dead_time_str = fields[5];
  bindto_str = fields[6];


  wanttype = h->type == RADIUS_AUTH ? "auth" : "acct";
  if (strcmp(type, wanttype) != 0)
   continue;


  res = host;
  host = strsep(&res, ":");
  port_str = strsep(&res, ":");
  if (port_str != ((void*)0)) {
   port = strtoul(port_str, &end, 10);
   if (*end != '\0') {
    generr(h, "%s:%d: invalid port", path,
        linenum);
    retval = -1;
    break;
   }
  } else
   port = 0;
  if (timeout_str != ((void*)0)) {
   timeout = strtoul(timeout_str, &end, 10);
   if (*end != '\0') {
    generr(h, "%s:%d: invalid timeout", path,
        linenum);
    retval = -1;
    break;
   }
  } else
   timeout = TIMEOUT;
  if (maxtries_str != ((void*)0)) {
   maxtries = strtoul(maxtries_str, &end, 10);
   if (*end != '\0') {
    generr(h, "%s:%d: invalid maxtries", path,
        linenum);
    retval = -1;
    break;
   }
  } else
   maxtries = MAXTRIES;

  if (dead_time_str != ((void*)0)) {
   dead_time = strtoul(dead_time_str, &end, 10);
   if (*end != '\0') {
    generr(h, "%s:%d: invalid dead_time", path,
        linenum);
    retval = -1;
    break;
   }
  } else
       dead_time = DEAD_TIME;

  if (bindto_str != ((void*)0)) {
       bindto.s_addr = inet_addr(bindto_str);
   if (bindto.s_addr == INADDR_NONE) {
    generr(h, "%s:%d: invalid bindto", path,
        linenum);
    retval = -1;
    break;
   }
  } else
       bindto.s_addr = INADDR_ANY;

  if (rad_add_server_ex(h, host, port, secret, timeout, maxtries,
       dead_time, &bindto) == -1) {
   strcpy(msg, h->errmsg);
   generr(h, "%s:%d: %s", path, linenum, msg);
   retval = -1;
   break;
  }
 }

 memset(buf, 0, sizeof buf);
 fclose(fp);
 return retval;
}
