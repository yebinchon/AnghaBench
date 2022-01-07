
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_handle_t ;
typedef int libxo_opt ;
typedef int gnu_ext ;


 int XOF_COLOR ;
 int XOF_COLOR_ALLOWED ;
 scalar_t__ XOF_ISSET (int *,int ) ;
 int XOF_SET (int *,int ) ;
 int XO_HAS_LIBXO ;
 int exit (int ) ;
 scalar_t__ isatty (int) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strrchr (char*,char) ;
 int * xo_default (int *) ;
 char* xo_program ;
 scalar_t__ xo_set_options (int *,char*) ;
 scalar_t__ xo_streq (char*,char const*) ;
 int xo_warnx (char*,...) ;

int
xo_parse_args (int argc, char **argv)
{
    static char libxo_opt[] = "--libxo";
    char *cp;
    int i, save;


    xo_program = argv[0];
    cp = strrchr(xo_program, '/');
    if (cp)
 xo_program = ++cp;
    else
 cp = argv[0];


    size_t len = strlen(xo_program);
    static const char gnu_ext[] = ".test";
    if (len >= sizeof(gnu_ext)) {
 cp += len + 1 - sizeof(gnu_ext);
 if (xo_streq(cp, gnu_ext))
     *cp = '\0';
    }

    xo_handle_t *xop = xo_default(((void*)0));

    for (save = i = 1; i < argc; i++) {
 if (argv[i] == ((void*)0)
     || strncmp(argv[i], libxo_opt, sizeof(libxo_opt) - 1) != 0) {
     if (save != i)
  argv[save] = argv[i];
     save += 1;
     continue;
 }

 cp = argv[i] + sizeof(libxo_opt) - 1;
 if (*cp == '\0') {
     cp = argv[++i];
     if (cp == ((void*)0)) {
  xo_warnx("missing libxo option");
  return -1;
     }

     if (xo_set_options(xop, cp) < 0)
  return -1;
 } else if (*cp == ':') {
     if (xo_set_options(xop, cp) < 0)
  return -1;

 } else if (*cp == '=') {
     if (xo_set_options(xop, ++cp) < 0)
  return -1;

 } else if (*cp == '-') {
     cp += 1;
     if (xo_streq(cp, "check")) {
  exit(XO_HAS_LIBXO);

     } else {
  xo_warnx("unknown libxo option: '%s'", argv[i]);
  return -1;
     }
 } else {
  xo_warnx("unknown libxo option: '%s'", argv[i]);
     return -1;
 }
    }





    if (XOF_ISSET(xop, XOF_COLOR_ALLOWED) && isatty(1))
 XOF_SET(xop, XOF_COLOR);

    argv[save] = ((void*)0);
    return save;
}
