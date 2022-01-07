
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int seedfile ;
typedef int krb5_context ;
typedef int buf ;


 int ENTROPY_NEEDED ;
 int O_BINARY ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int RAND_add (char*,scalar_t__,double) ;
 int RAND_egd_bytes (char const*,int ) ;
 scalar_t__ RAND_file_name (char*,int) ;
 int RAND_status () ;
 int RAND_write_file (char*) ;
 int close (int) ;
 char* krb5_config_get_string (int ,int *,char*,char*,int *) ;
 int krb5_free_context (int ) ;
 int krb5_init_context (int *) ;
 int open (char*,int) ;
 scalar_t__ read (int,char*,int) ;
 int rk_cloexec (int) ;

__attribute__((used)) static int
seed_something(void)
{
    char buf[1024], seedfile[256];



    if (RAND_file_name(seedfile, sizeof(seedfile))) {
 int fd;
 fd = open(seedfile, O_RDONLY | O_BINARY | O_CLOEXEC);
 if (fd >= 0) {
     ssize_t ret;
     rk_cloexec(fd);
     ret = read(fd, buf, sizeof(buf));
     if (ret > 0)
  RAND_add(buf, ret, 0.0);
     close(fd);
 } else
     seedfile[0] = '\0';
    } else
 seedfile[0] = '\0';



    if (RAND_status() != 1) {


 krb5_context context;
 const char *p;


 if (!krb5_init_context(&context)) {
     p = krb5_config_get_string(context, ((void*)0), "libdefaults",
           "egd_socket", ((void*)0));
     if (p != ((void*)0))
  RAND_egd_bytes(p, ENTROPY_NEEDED);
     krb5_free_context(context);
 }





    }

    if (RAND_status() == 1) {

 if (seedfile[0])
     RAND_write_file(seedfile);

 return 0;
    } else
 return -1;
}
