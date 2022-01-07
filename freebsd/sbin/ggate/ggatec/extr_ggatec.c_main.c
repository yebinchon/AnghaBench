
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int G_GATE_FLAG_READONLY ;
 int G_GATE_FLAG_WRITEONLY ;



 int action ;
 int errno ;
 int errx (int ,char*) ;
 int exit (int ) ;
 int flags ;
 int force ;
 int fprintf (int ,char*) ;
 int g_gate_close_device () ;
 int g_gate_destroy (int,int) ;
 int g_gate_list (int,int) ;
 int g_gate_load_module () ;
 int g_gate_open_device () ;
 int g_gate_verbose ;
 int g_gatec_create () ;
 int g_gatec_rescue () ;
 int getopt (int,char**,char*) ;
 char* host ;
 int nagle ;
 char* optarg ;
 scalar_t__ optind ;
 char* path ;
 void* port ;
 void* queue_size ;
 void* rcvbuf ;
 void* sectorsize ;
 void* sndbuf ;
 int stderr ;
 scalar_t__ strcasecmp (char*,char*) ;
 int strtol (char*,int *,int) ;
 void* strtoul (char*,int *,int) ;
 void* timeout ;
 int unit ;
 int usage () ;

int
main(int argc, char *argv[])
{

 if (argc < 2)
  usage();
 if (strcasecmp(argv[1], "create") == 0)
  action = 132;
 else if (strcasecmp(argv[1], "destroy") == 0)
  action = 131;
 else if (strcasecmp(argv[1], "list") == 0)
  action = 130;
 else if (strcasecmp(argv[1], "rescue") == 0)
  action = 129;
 else
  usage();
 argc -= 1;
 argv += 1;
 for (;;) {
  int ch;

  ch = getopt(argc, argv, "fno:p:q:R:S:s:t:u:v");
  if (ch == -1)
   break;
  switch (ch) {
  case 'f':
   if (action != 131)
    usage();
   force = 1;
   break;
  case 'n':
   if (action != 132 && action != 129)
    usage();
   nagle = 0;
   break;
  case 'o':
   if (action != 132 && action != 129)
    usage();
   if (strcasecmp("ro", optarg) == 0)
    flags = G_GATE_FLAG_READONLY;
   else if (strcasecmp("wo", optarg) == 0)
    flags = G_GATE_FLAG_WRITEONLY;
   else if (strcasecmp("rw", optarg) == 0)
    flags = 0;
   else {
    errx(EXIT_FAILURE,
        "Invalid argument for '-o' option.");
   }
   break;
  case 'p':
   if (action != 132 && action != 129)
    usage();
   errno = 0;
   port = strtoul(optarg, ((void*)0), 10);
   if (port == 0 && errno != 0)
    errx(EXIT_FAILURE, "Invalid port.");
   break;
  case 'q':
   if (action != 132)
    usage();
   errno = 0;
   queue_size = strtoul(optarg, ((void*)0), 10);
   if (queue_size == 0 && errno != 0)
    errx(EXIT_FAILURE, "Invalid queue_size.");
   break;
  case 'R':
   if (action != 132 && action != 129)
    usage();
   errno = 0;
   rcvbuf = strtoul(optarg, ((void*)0), 10);
   if (rcvbuf == 0 && errno != 0)
    errx(EXIT_FAILURE, "Invalid rcvbuf.");
   break;
  case 'S':
   if (action != 132 && action != 129)
    usage();
   errno = 0;
   sndbuf = strtoul(optarg, ((void*)0), 10);
   if (sndbuf == 0 && errno != 0)
    errx(EXIT_FAILURE, "Invalid sndbuf.");
   break;
  case 's':
   if (action != 132)
    usage();
   errno = 0;
   sectorsize = strtoul(optarg, ((void*)0), 10);
   if (sectorsize == 0 && errno != 0)
    errx(EXIT_FAILURE, "Invalid sectorsize.");
   break;
  case 't':
   if (action != 132)
    usage();
   errno = 0;
   timeout = strtoul(optarg, ((void*)0), 10);
   if (timeout == 0 && errno != 0)
    errx(EXIT_FAILURE, "Invalid timeout.");
   break;
  case 'u':
   errno = 0;
   unit = strtol(optarg, ((void*)0), 10);
   if (unit == 0 && errno != 0)
    errx(EXIT_FAILURE, "Invalid unit number.");
   break;
  case 'v':
   if (action == 131)
    usage();
   g_gate_verbose++;
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 switch (action) {
 case 132:
  if (argc != 2)
   usage();
  g_gate_load_module();
  g_gate_open_device();
  host = argv[0];
  path = argv[1];
  g_gatec_create();
  break;
 case 131:
  if (unit == -1) {
   fprintf(stderr, "Required unit number.\n");
   usage();
  }
  g_gate_verbose = 1;
  g_gate_open_device();
  g_gate_destroy(unit, force);
  break;
 case 130:
  g_gate_list(unit, g_gate_verbose);
  break;
 case 129:
  if (argc != 2)
   usage();
  if (unit == -1) {
   fprintf(stderr, "Required unit number.\n");
   usage();
  }
  g_gate_open_device();
  host = argv[0];
  path = argv[1];
  g_gatec_rescue();
  break;
 case 128:
 default:
  usage();
 }
 g_gate_close_device();
 exit(EXIT_SUCCESS);
}
