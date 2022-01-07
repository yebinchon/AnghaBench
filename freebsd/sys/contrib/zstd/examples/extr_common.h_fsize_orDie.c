
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
typedef scalar_t__ off_t ;


 int ERROR_fsize ;
 int ERROR_largeFile ;
 int exit (int ) ;
 int fprintf (int ,char*,char const*) ;
 int perror (char const*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int stderr ;

__attribute__((used)) static size_t fsize_orDie(const char *filename)
{
    struct stat st;
    if (stat(filename, &st) != 0) {

        perror(filename);
        exit(ERROR_fsize);
    }

    off_t const fileSize = st.st_size;
    size_t const size = (size_t)fileSize;




    if ((fileSize < 0) || (fileSize != (off_t)size)) {
        fprintf(stderr, "%s : filesize too large \n", filename);
        exit(ERROR_largeFile);
    }
    return size;
}
