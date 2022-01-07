
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef int buf ;


 int BUFSIZ ;
 int DebugVe ;
 int O_RDONLY ;
 int SEEK_END ;
 int SEEK_SET ;
 char* Skip ;
 int VE_GUESS ;
 int close (int) ;
 int errx (int,char*,int) ;
 int fingerprint_info_add (char*,char*,char*,char*,int *) ;
 int fprintf (int ,char*,char*,char*) ;
 int fstat (int,struct stat*) ;
 char* getenv (char*) ;
 int getopt (int,char**,char*) ;
 int lseek (int,int ,int ) ;
 int open (char*,int ) ;
 char* optarg ;
 int optind ;
 int printf (char*,...) ;
 scalar_t__ read_file (char*,int *) ;
 int stderr ;
 scalar_t__ strstr (char*,char*) ;
 char* ve_error_get () ;
 int ve_pcr_updating_set (int) ;
 int ve_self_tests () ;
 int ve_trust_add (char*) ;
 int ve_trust_init () ;
 int vectx_close (void*) ;
 size_t vectx_lseek (void*,int,int ) ;
 void* vectx_open (int,char*,size_t,struct stat*,int*) ;
 size_t vectx_read (void*,char*,int) ;
 scalar_t__ verify_asc (char*,int) ;
 int verify_file (int,char*,int ,int ) ;
 int verify_open (char*,int ) ;
 int verify_pcr_export () ;
 scalar_t__ verify_sig (char*,int) ;

int
main(int argc, char *argv[])
{
 int n;
 int fd;
 int c;
 int Vflag;
 char *cp;
 char *prefix;

 prefix = ((void*)0);
 Skip = ((void*)0);

 n = ve_trust_init();
 printf("Trust %d\n", n);
 Vflag = 0;

 while ((c = getopt(argc, argv, "dp:s:T:V")) != -1) {
  switch (c) {
  case 'd':
   DebugVe++;
   break;
  case 'p':
   prefix = optarg;
   break;
  case 's':
   Skip = optarg;
   break;
  case 'T':
   n = ve_trust_add(optarg);
   printf("Local trust %s: %d\n", optarg, n);
   break;
  case 'V':
   Vflag = 1;
   break;
  default:
   errx(1, "unknown option: -%c", c);
   break;
  }
 }




 ve_self_tests();

 for ( ; optind < argc; optind++) {
  if (Vflag) {




   fd = open(argv[optind], O_RDONLY);
   if (fd > 0) {



    int x;

    x = verify_file(fd, argv[optind], 0, VE_GUESS);
    printf("verify_file(%s) = %d\n", argv[optind], x);
    close(fd);
   }
   continue;
  }
  if (strstr(argv[optind], "sig")) {
   cp = (char *)verify_sig(argv[optind], 1);
   if (cp) {
    printf("Verified: %s: %.28s...\n",
        argv[optind], cp);
    fingerprint_info_add(argv[optind],
        prefix, Skip, cp, ((void*)0));
   } else {
    fprintf(stderr, "%s: %s\n",
        argv[optind], ve_error_get());
   }
  } else if (strstr(argv[optind], "manifest")) {
   cp = (char *)read_file(argv[optind], ((void*)0));
   if (cp) {
    fingerprint_info_add(argv[optind],
        prefix, Skip, cp, ((void*)0));
   }
  } else {
   fd = verify_open(argv[optind], O_RDONLY);
   printf("verify_open(%s) = %d %s\n", argv[optind], fd,
       (fd < 0) ? ve_error_get() : "");
   if (fd > 0) {



    void *vp;
    char buf[BUFSIZ];
    struct stat st;
    int error;
    size_t off, n;

    fstat(fd, &st);
    lseek(fd, 0, SEEK_SET);
    off = st.st_size % 512;
    vp = vectx_open(fd, argv[optind], off,
        &st, &error);
    if (!vp) {
     printf("vectx_open(%s) failed: %d %s\n",
         argv[optind], error,
         ve_error_get());
    } else {
     off = vectx_lseek(vp,
         (st.st_size % 1024), SEEK_SET);

     if (off < st.st_size) {
      n = vectx_read(vp, buf,
          sizeof(buf));
      if (n > 0)
       off += n;
     }
     off = vectx_lseek(vp, 0, SEEK_END);

     off = vectx_lseek(vp, 0, SEEK_END);
     error = vectx_close(vp);
     if (error) {
      printf("vectx_close(%s) == %d %s\n",
          argv[optind], error,
          ve_error_get());
     } else {
      printf("vectx_close: Verified: %s\n",
          argv[optind]);
     }
    }
    close(fd);
   }
  }
 }




 return (0);
}
