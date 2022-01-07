
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfilioc_link {int pio_ruleset; int pio_module; int pio_name; scalar_t__ pio_flags; } ;


 int PFILIOC_LINK ;
 scalar_t__ PFIL_APPEND ;
 int PFIL_DIR (scalar_t__) ;
 scalar_t__ PFIL_IN ;
 scalar_t__ PFIL_OUT ;
 scalar_t__ PFIL_UNLINK ;
 int dev ;
 int err (int,char*) ;
 int getopt (int,char**,char*) ;
 int help () ;
 scalar_t__ ioctl (int ,int ,struct pfilioc_link*) ;
 scalar_t__ optind ;
 char* strchr (char*,char) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void
hook(int argc, char *argv[])
{
 struct pfilioc_link req;
 int c;
 char *ruleset;

 if (argv[0][0] == 'u')
  req.pio_flags = PFIL_UNLINK;
 else
  req.pio_flags = 0;

 while ((c = getopt(argc, argv, "ioa")) != -1)
  switch (c) {
  case 'i':
   req.pio_flags |= PFIL_IN;
   break;
  case 'o':
   req.pio_flags |= PFIL_OUT;
   break;
  case 'a':
   req.pio_flags |= PFIL_APPEND;
   break;
  default:
   help();
  }

 if (!PFIL_DIR(req.pio_flags))
  help();

 argc -= optind;
 argv += optind;

 if (argc != 2)
  help();


 if ((ruleset = strchr(argv[0], ':')) == ((void*)0))
  help();
 *ruleset = '\0';
 ruleset++;

 strlcpy(req.pio_name, argv[1], sizeof(req.pio_name));
 strlcpy(req.pio_module, argv[0], sizeof(req.pio_module));
 strlcpy(req.pio_ruleset, ruleset, sizeof(req.pio_ruleset));

 if (ioctl(dev, PFILIOC_LINK, &req) != 0)
  err(1, "ioctl(PFILIOC_LINK)");
}
