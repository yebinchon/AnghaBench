
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEVINFO_ROOT_DEVICE ;
 int all_flag ;
 int devinfo_foreach_device_child (int *,int ,void*) ;
 int devinfo_free () ;
 int * devinfo_handle_to_device (int ) ;
 scalar_t__ devinfo_init () ;
 scalar_t__ dump_flag ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int exit (int ) ;
 int find_nomatch (int *) ;
 int find_unmatched ;
 int getopt_long (int,char**,char*,int ,int *) ;
 void* linker_hints ;
 int longopts ;
 int * nomatch_str ;
 void* optarg ;
 scalar_t__ optind ;
 int read_linker_hints () ;
 int * root ;
 int search_hints (int *,int *,int *) ;
 int unbound_flag ;
 int usage () ;
 int verbose_flag ;

int
main(int argc, char **argv)
{
 int ch;

 while ((ch = getopt_long(argc, argv, "adh:p:uv",
      longopts, ((void*)0))) != -1) {
  switch (ch) {
  case 'a':
   all_flag++;
   break;
  case 'd':
   dump_flag++;
   break;
  case 'h':
   linker_hints = optarg;
   break;
  case 'p':
   nomatch_str = optarg;
   break;
  case 'u':
   unbound_flag++;
   break;
  case 'v':
   verbose_flag++;
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 if (argc >= 1)
  usage();

 read_linker_hints();
 if (dump_flag) {
  search_hints(((void*)0), ((void*)0), ((void*)0));
  exit(0);
 }

 if (devinfo_init())
  err(1, "devinfo_init");
 if ((root = devinfo_handle_to_device(DEVINFO_ROOT_DEVICE)) == ((void*)0))
  errx(1, "can't find root device");
 if (nomatch_str != ((void*)0))
  find_nomatch(nomatch_str);
 else
  devinfo_foreach_device_child(root, find_unmatched, (void *)0);
 devinfo_free();
}
