
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fhandle_t ;


 scalar_t__ E2BIG ;
 int EXIT_FAILURE ;
 int STDOUT_FILENO ;
 scalar_t__ errno ;
 int fprintf (int ,char*) ;
 int free (void*) ;
 int getfh (char*,void*,...) ;
 void* malloc (size_t) ;
 int stderr ;
 int warn (char*) ;
 int write (int ,void*,size_t) ;

int
getfh_main(int argc, char **argv)
{
 int error;
 void *fh;
 size_t fh_size;

 if (argc < 2)
  return EXIT_FAILURE;




 fh_size = 0;


 fh = ((void*)0);
 for (;;) {
  if (fh_size) {
   fh = malloc(fh_size);
   if (fh == ((void*)0)) {
    fprintf(stderr, "out of memory");
    return EXIT_FAILURE;
   }
  }
  error = getfh(argv[1], fh, &fh_size);

  if (error == 0) {
   break;
  } else {
   if (fh != ((void*)0))
    free(fh);
   if (errno != E2BIG) {
    warn("getfh");
    return EXIT_FAILURE;
   }
  }
 }

 error = write(STDOUT_FILENO, fh, fh_size);
 if (error == -1) {
  warn("write");
  return EXIT_FAILURE;
 }
 free(fh);

 return 0;
}
