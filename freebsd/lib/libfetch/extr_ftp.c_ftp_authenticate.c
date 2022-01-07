
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url {char* user; char* pwd; int port; int host; int scheme; } ;
typedef int pbuf ;
typedef int conn_t ;


 int DEBUGF (char*,char const*) ;
 char* FTP_ANONYMOUS_USER ;
 int FTP_NEED_PASSWORD ;
 int MAXHOSTNAMELEN ;
 int MAXLOGNAME ;
 int fetch_default_port (int ) ;
 int fetch_netrc_auth (struct url*) ;
 int ftp_cmd (int *,char*,char const*,...) ;
 char* getenv (char*) ;
 int gethostname (char*,int) ;
 char* getlogin () ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static int
ftp_authenticate(conn_t *conn, struct url *url, struct url *purl)
{
 const char *user, *pwd, *logname;
 char pbuf[MAXHOSTNAMELEN + MAXLOGNAME + 1];
 int e, len;




 if (url->user[0] == '\0')
  fetch_netrc_auth(url);
 user = url->user;
 if (*user == '\0')
  if ((user = getenv("FTP_LOGIN")) != ((void*)0))
   DEBUGF("FTP_LOGIN=%s\n", user);
 if (user == ((void*)0) || *user == '\0')
  user = FTP_ANONYMOUS_USER;
 if (purl && url->port == fetch_default_port(url->scheme))
  e = ftp_cmd(conn, "USER %s@%s", user, url->host);
 else if (purl)
  e = ftp_cmd(conn, "USER %s@%s@%d", user, url->host, url->port);
 else
  e = ftp_cmd(conn, "USER %s", user);


 if (e == FTP_NEED_PASSWORD) {
  pwd = url->pwd;
  if (*pwd == '\0')
   if ((pwd = getenv("FTP_PASSWORD")) != ((void*)0))
    DEBUGF("FTP_PASSWORD=%s\n", pwd);
  if (pwd == ((void*)0) || *pwd == '\0') {
   if ((logname = getlogin()) == ((void*)0))
    logname = FTP_ANONYMOUS_USER;
   if ((len = snprintf(pbuf, MAXLOGNAME + 1, "%s@", logname)) < 0)
    len = 0;
   else if (len > MAXLOGNAME)
    len = MAXLOGNAME;
   gethostname(pbuf + len, sizeof(pbuf) - len);
   pwd = pbuf;
  }
  e = ftp_cmd(conn, "PASS %s", pwd);
 }

 return (e);
}
