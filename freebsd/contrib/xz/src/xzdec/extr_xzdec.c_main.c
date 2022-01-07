
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lzma_stream ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int LZMA_STREAM_INIT ;
 int O_BINARY ;
 int display_errors ;
 int errno ;
 int exit (int ) ;
 int fclose (int *) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 int lzma_end (int *) ;
 int my_errorf (char*,char*,int ) ;
 int optind ;
 int parse_options (int,char**) ;
 int setmode (int ,int ) ;
 int * stdin ;
 int * stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int strerror (int ) ;
 int tuklib_exit (int ,int ,int ) ;
 int tuklib_progname_init (char**) ;
 int uncompress (int *,int *,char*) ;

int
main(int argc, char **argv)
{

 tuklib_progname_init(argv);


 parse_options(argc, argv);




 lzma_stream strm = LZMA_STREAM_INIT;







 if (optind == argc) {

  uncompress(&strm, stdin, "(stdin)");
 } else {

  do {

   if (strcmp(argv[optind], "-") == 0) {
    uncompress(&strm, stdin, "(stdin)");
   } else {
    FILE *file = fopen(argv[optind], "rb");
    if (file == ((void*)0)) {
     my_errorf("%s: %s", argv[optind],
       strerror(errno));
     exit(EXIT_FAILURE);
    }

    uncompress(&strm, file, argv[optind]);
    fclose(file);
   }
  } while (++optind < argc);
 }




 lzma_end(&strm);


 tuklib_exit(EXIT_SUCCESS, EXIT_FAILURE, display_errors);
}
