
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_driver {int l_finish; int (* l_prepare ) (char*,char*) ;int l_name; int * l_code; } ;


 char* DEFAULT_DEVICE ;
 int EOF ;
 int EX_OK ;
 int _IONBF ;
 int atexit (int ) ;
 int debug (int,char*,...) ;
 int debuglevel ;
 int do_char (struct lcd_driver*,char) ;
 int exit (int ) ;
 int fgetc (int ) ;
 char* getenv (char*) ;
 int getopt (int,char**,char*) ;
 struct lcd_driver* lcd_drivertab ;
 char* progname ;
 int setvbuf (int ,int *,int ,int ) ;
 int stdin ;
 int strcmp (char*,int *) ;
 char* strrchr (char*,char) ;
 int stub1 (char*,char*) ;
 int usage () ;
 int vflag ;
 int warnx (char*,char*) ;

int
main(int argc, char *argv[])
{
    extern char *optarg;
    extern int optind;
    struct lcd_driver *driver = &lcd_drivertab[0];
    char *drivertype, *cp;
    char *devname = DEFAULT_DEVICE;
    char *drvopts = ((void*)0);
    int ch, i;

    if ((progname = strrchr(argv[0], '/'))) {
 progname++;
    } else {
 progname = argv[0];
    }

    drivertype = getenv("LCD_TYPE");

    while ((ch = getopt(argc, argv, "Dd:f:o:v")) != -1) {
 switch(ch) {
 case 'D':
     debuglevel++;
     break;
 case 'd':
     drivertype = optarg;
     break;
 case 'f':
     devname = optarg;
     break;
 case 'o':
     drvopts = optarg;
     break;
 case 'v':
     vflag = 1;
     break;
 default:
     usage();
 }
    }
    argc -= optind;
    argv += optind;


    if (drivertype != ((void*)0)) {
 driver = ((void*)0);
 for (i = 0; lcd_drivertab[i].l_code != ((void*)0); i++) {
     if (!strcmp(drivertype, lcd_drivertab[i].l_code)) {
  driver = &lcd_drivertab[i];
  break;
     }
 }
 if (driver == ((void*)0)) {
     warnx("LCD driver '%s' not known", drivertype);
     usage();
 }
    }
    debug(1, "Driver selected for %s", driver->l_name);
    driver->l_prepare(devname, drvopts);
    atexit(driver->l_finish);

    if (argc > 0) {
 debug(2, "reading input from %d argument%s", argc, (argc > 1) ? "s" : "");
 for (i = 0; i < argc; i++)
     for (cp = argv[i]; *cp; cp++)
  do_char(driver, *cp);
    } else {
 debug(2, "reading input from stdin");
 setvbuf(stdin, ((void*)0), _IONBF, 0);
 while ((ch = fgetc(stdin)) != EOF)
     do_char(driver, (char)ch);
    }
    exit(EX_OK);
}
