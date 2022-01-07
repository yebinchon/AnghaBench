
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int ssize_t ;
typedef int recno_t ;
typedef int recno ;
typedef enum S { ____Placeholder_S } S ;
typedef int buf ;
struct TYPE_25__ {scalar_t__ (* close ) (TYPE_2__*) ;} ;
struct TYPE_24__ {size_t size; int * data; } ;
typedef TYPE_1__ DBT ;
typedef TYPE_2__ DB ;


 int COMMAND ;

 int DATA ;
 scalar_t__ DB_BTREE ;
 int DB_LOCK ;
 scalar_t__ DB_RECNO ;

 int KEY ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int O_WRONLY ;


 int R_CURSOR ;

 scalar_t__ STDOUT_FILENO ;
 int S_IRUSR ;
 int S_IWUSR ;
 TYPE_2__* XXdbp ;
 int XXlineno ;
 int __bt_stat (TYPE_2__*) ;
 int atoi (char*) ;
 int chkcmd (int) ;
 int chkdata (int) ;
 int chkkey (int) ;
 int close (scalar_t__) ;
 int compare (TYPE_1__*,TYPE_1__*) ;
 TYPE_2__* dbopen (char*,int,int,scalar_t__,int *) ;
 scalar_t__ dbtype (int ) ;
 int dump (TYPE_2__*,int,int) ;
 int err (int,char*,...) ;
 int errx (int,char*,int,...) ;
 char* fgets (char*,int,int ) ;
 int flags ;
 int free (int *) ;
 int * freopen (char*,char*,int ) ;
 int get (TYPE_2__*,TYPE_1__*) ;
 int getdata (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 char* getenv (char*) ;
 int getopt (int,char**,char*) ;
 int * infop ;
 scalar_t__ isspace (unsigned char) ;
 int lineno ;
 scalar_t__ ofd ;
 scalar_t__ open (char*,int,int) ;
 int put (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 int rem (TYPE_2__*,TYPE_1__*) ;
 void* rfile (char*,size_t*) ;
 int seq (TYPE_2__*,TYPE_1__*) ;
 int setflags (char*) ;
 int * setinfo (scalar_t__,char*) ;
 int snprintf (char*,int,char*,char const*) ;
 int stdin ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strlen (char*) ;
 char* strtok (char*,char*) ;
 scalar_t__ stub1 (TYPE_2__*) ;
 int synk (TYPE_2__*) ;
 scalar_t__ type ;
 int unlink (char*) ;
 int unlinkpg (TYPE_2__*) ;
 int usage () ;
 int write (scalar_t__,char*,int) ;
 void* xcopy (char*,size_t) ;

int
main(int argc, char *argv[])
{
 extern int optind;
 extern char *optarg;
 enum S command = COMMAND, state;
 DB *dbp;
 DBT data, key, keydata;
 size_t len;
 int ch, oflags, sflag;
 char *fname, *infoarg, *p, *t, buf[8 * 1024];
 bool unlink_dbfile;

 infoarg = ((void*)0);
 fname = ((void*)0);
 unlink_dbfile = 0;
 oflags = O_CREAT | O_RDWR;
 sflag = 0;
 while ((ch = getopt(argc, argv, "f:i:lo:s")) != -1)
  switch (ch) {
  case 'f':
   fname = optarg;
   break;
  case 'i':
   infoarg = optarg;
   break;
  case 'l':
   oflags |= DB_LOCK;
   break;
  case 'o':
   if ((ofd = open(optarg,
       O_WRONLY|O_CREAT|O_TRUNC, 0666)) < 0)
    err(1, "Cannot create `%s'", optarg);
   break;
  case 's':
   sflag = 1;
   break;
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (argc != 2)
  usage();


 type = dbtype(*argv++);


        if (strcmp(*argv, "-") && freopen(*argv, "r", stdin) == ((void*)0))
     err(1, "Cannot reopen `%s'", *argv);


 if (infoarg == ((void*)0))
  infop = ((void*)0);
 else
  for (p = strtok(infoarg, ",\t "); p != ((void*)0);
      p = strtok(0, ",\t "))
   if (*p != '\0')
    infop = setinfo(type, p);





 if (fname == ((void*)0)) {
  const char *q = getenv("TMPDIR");
  if (q == ((void*)0))
   q = "/var/tmp";
  (void)snprintf(buf, sizeof(buf), "%s/__dbtest", q);
  fname = buf;
  (void)unlink(buf);
  unlink_dbfile = 1;
 } else if (!sflag)
  (void)unlink(fname);

 if ((dbp = dbopen(fname,
     oflags, S_IRUSR | S_IWUSR, type, infop)) == ((void*)0))
  err(1, "Cannot dbopen `%s'", fname);
 XXdbp = dbp;
 if (unlink_dbfile)
  (void)unlink(fname);

 state = COMMAND;
 for (lineno = 1;
     (p = fgets(buf, sizeof(buf), stdin)) != ((void*)0); ++lineno) {

  if (ofd == STDOUT_FILENO && (t = strchr(p, '\n')) != ((void*)0))
   *t = '\0';
  if ((len = strlen(buf)) == 0 || isspace((unsigned char)*p) ||
      *p == '#')
   continue;


  if (XXlineno == lineno)
   XXlineno = 1;
  switch (*p) {
  case 'c':
   chkcmd(state);
   state = KEY;
   command = 132;
   break;
  case 'e':
   chkcmd(state);

   if (p[len - 2] == '\r')
    --len;
   if (write(ofd, p + 1, len - 1) != (ssize_t)len - 1 ||
       write(ofd, "\n", 1) != 1)
    err(1, "write failed");
   break;
  case 'g':
   chkcmd(state);
   state = KEY;
   command = 131;
   break;
  case 'p':
   chkcmd(state);
   state = KEY;
   command = 130;
   break;
  case 'r':
   chkcmd(state);
                        if (flags == R_CURSOR) {
    rem(dbp, &key);
    state = COMMAND;
                        } else {
    state = KEY;
    command = 129;
   }
   break;
  case 'S':
   chkcmd(state);
   synk(dbp);
   state = COMMAND;
   break;
  case 's':
   chkcmd(state);
   if (flags == R_CURSOR) {
    state = KEY;
    command = 128;
   } else
    seq(dbp, &key);
   break;
  case 'f':
   flags = setflags(p + 1);
   break;
  case 'D':
   chkdata(state);
   data.data = rfile(p + 1, &data.size);
   goto ldata;
  case 'd':
   chkdata(state);
   data.data = xcopy(p + 1, len - 1);
   data.size = len - 1;
ldata: switch (command) {
   case 132:
    compare(&keydata, &data);
    break;
   case 130:
    put(dbp, &key, &data);
    break;
   default:
    errx(1, "line %zu: command doesn't take data",
        lineno);
   }
   if (type != DB_RECNO)
    free(key.data);
   free(data.data);
   state = COMMAND;
   break;
  case 'K':
   chkkey(state);
   if (type == DB_RECNO)
    errx(1, "line %zu: 'K' not available for recno",
        lineno);
   key.data = rfile(p + 1, &key.size);
   goto lkey;
  case 'k':
   chkkey(state);
   if (type == DB_RECNO) {
    static recno_t recno;
    recno = atoi(p + 1);
    key.data = &recno;
    key.size = sizeof(recno);
   } else {
    key.data = xcopy(p + 1, len - 1);
    key.size = len - 1;
   }
lkey: switch (command) {
   case 132:
    getdata(dbp, &key, &keydata);
    state = DATA;
    break;
   case 131:
    get(dbp, &key);
    if (type != DB_RECNO)
     free(key.data);
    state = COMMAND;
    break;
   case 130:
    state = DATA;
    break;
   case 129:
    rem(dbp, &key);
    if ((type != DB_RECNO) && (flags != R_CURSOR))
     free(key.data);
    state = COMMAND;
    break;
   case 128:
    seq(dbp, &key);
    if ((type != DB_RECNO) && (flags != R_CURSOR))
     free(key.data);
    state = COMMAND;
    break;
   default:
    errx(1, "line %zu: command doesn't take a key",
        lineno);
   }
   break;
  case 'o':
   dump(dbp, p[1] == 'r', 0);
   break;
  default:
   errx(1, "line %zu: %s: unknown command character",
       lineno, p);
  }
 }
 if ((*dbp->close)(dbp))
  err(1, "db->close failed");
 (void)close(ofd);
 return 0;
}
