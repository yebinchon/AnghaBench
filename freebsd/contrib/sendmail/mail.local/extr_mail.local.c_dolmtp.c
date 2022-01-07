
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int EX_OK ;
 int EX_TEMPFAIL ;
 int EightBitMime ;
 int HoldErrs ;
 int RCPT_GROW ;
 scalar_t__ REALLOC (char*,int) ;
 int StripRcptDomain ;
 int close (int) ;
 int deliver (int,char*) ;
 int fflush (int ) ;
 int * fgets (char*,int,int ) ;
 int flush_error () ;
 int free (char*) ;
 int gethostname (char*,int) ;
 int mailerr (char*,char*,...) ;
 int memset (char*,char,int) ;
 char* parseaddr (char*,int) ;
 int printf (char*,...) ;
 char* process_recipient (char*) ;
 int sm_exit (int ) ;
 int sm_strcasecmp (char*,char*) ;
 int sm_strlcpy (char*,char*,int) ;
 int sm_strncasecmp (char*,char*,int) ;
 int stdin ;
 int stdout ;
 int store (char*,int*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

void
dolmtp()
{
 char *return_path = ((void*)0);
 char **rcpt_addr = ((void*)0);
 int rcpt_num = 0;
 int rcpt_alloc = 0;
 bool gotlhlo = 0;
 char *err;
 int msgfd;
 char *p;
 int i;
 char myhostname[1024];
 char buf[4096];

 memset(myhostname, '\0', sizeof myhostname);
 (void) gethostname(myhostname, sizeof myhostname - 1);
 if (myhostname[0] == '\0')
  sm_strlcpy(myhostname, "localhost", sizeof myhostname);

 printf("220 %s LMTP ready\r\n", myhostname);
 for (;;)
 {
  (void) fflush(stdout);
  if (fgets(buf, sizeof(buf) - 1, stdin) == ((void*)0))
   sm_exit(EX_OK);
  p = buf + strlen(buf) - 1;
  if (p >= buf && *p == '\n')
   *p-- = '\0';
  if (p >= buf && *p == '\r')
   *p-- = '\0';

  switch (buf[0])
  {
    case 'd':
    case 'D':
   if (sm_strcasecmp(buf, "data") == 0)
   {
    bool inbody = 0;

    if (rcpt_num == 0)
    {
     mailerr("503 5.5.1", "No recipients");
     continue;
    }
    HoldErrs = 1;
    msgfd = store(return_path, &inbody);
    HoldErrs = 0;
    if (msgfd < 0 && !inbody)
    {
     flush_error();
     continue;
    }

    for (i = 0; i < rcpt_num; i++)
    {
     if (msgfd < 0)
     {

      flush_error();
      continue;
     }
     p = strchr(rcpt_addr[i], '+');
     if (p != ((void*)0))
      *p = '\0';
     deliver(msgfd, rcpt_addr[i]);
    }
    if (msgfd >= 0)
     (void) close(msgfd);
    goto rset;
   }
   goto syntaxerr;

   break;

    case 'l':
    case 'L':
   if (sm_strncasecmp(buf, "lhlo ", 5) == 0)
   {

    if (gotlhlo)
    {
     mailerr("503", "%s Duplicate LHLO",
            myhostname);
     continue;
    }
    gotlhlo = 1;
    printf("250-%s\r\n", myhostname);
    if (EightBitMime)
     printf("250-8BITMIME\r\n");
    printf("250-ENHANCEDSTATUSCODES\r\n");
    printf("250 PIPELINING\r\n");
    continue;
   }
   goto syntaxerr;

   break;

    case 'm':
    case 'M':
   if (sm_strncasecmp(buf, "mail ", 5) == 0)
   {
    if (return_path != ((void*)0))
    {
     mailerr("503 5.5.1",
      "Nested MAIL command");
     continue;
    }
    if (sm_strncasecmp(buf + 5, "from:", 5) != 0 ||
        ((return_path = parseaddr(buf + 10,
             0)) == ((void*)0)))
    {
     mailerr("501 5.5.4",
      "Syntax error in parameters");
     continue;
    }
    printf("250 2.5.0 Ok\r\n");
    continue;
   }
   goto syntaxerr;

   break;

    case 'n':
    case 'N':
   if (sm_strcasecmp(buf, "noop") == 0)
   {
    printf("250 2.0.0 Ok\r\n");
    continue;
   }
   goto syntaxerr;

   break;

    case 'q':
    case 'Q':
   if (sm_strcasecmp(buf, "quit") == 0)
   {
    printf("221 2.0.0 Bye\r\n");
    sm_exit(EX_OK);
   }
   goto syntaxerr;

   break;

    case 'r':
    case 'R':
   if (sm_strncasecmp(buf, "rcpt ", 5) == 0)
   {
    if (return_path == ((void*)0))
    {
     mailerr("503 5.5.1",
      "Need MAIL command");
     continue;
    }
    if (rcpt_num >= rcpt_alloc)
    {
     rcpt_alloc += RCPT_GROW;
     rcpt_addr = (char **)
      REALLOC((char *) rcpt_addr,
       rcpt_alloc *
       sizeof(char **));
     if (rcpt_addr == ((void*)0))
     {
      mailerr("421 4.3.0",
       "Memory exhausted");
      sm_exit(EX_TEMPFAIL);
     }
    }
    if (sm_strncasecmp(buf + 5, "to:", 3) != 0 ||
        ((rcpt_addr[rcpt_num] = parseaddr(buf + 8,
              StripRcptDomain)) == ((void*)0)))
    {
     mailerr("501 5.5.4",
      "Syntax error in parameters");
     continue;
    }
    err = process_recipient(rcpt_addr[rcpt_num]);
    if (err != ((void*)0))
    {
     mailerr(((void*)0), "%s", err);
     continue;
    }
    rcpt_num++;
    printf("250 2.1.5 Ok\r\n");
    continue;
   }
   else if (sm_strcasecmp(buf, "rset") == 0)
   {
    printf("250 2.0.0 Ok\r\n");

rset:
    while (rcpt_num > 0)
     free(rcpt_addr[--rcpt_num]);
    if (return_path != ((void*)0))
     free(return_path);
    return_path = ((void*)0);
    continue;
   }
   goto syntaxerr;

   break;

    case 'v':
    case 'V':
   if (sm_strncasecmp(buf, "vrfy ", 5) == 0)
   {
    printf("252 2.3.3 Try RCPT to attempt delivery\r\n");
    continue;
   }
   goto syntaxerr;

   break;

    default:
  syntaxerr:
   mailerr("500 5.5.2", "Syntax error");
   continue;

   break;
  }
 }
}
