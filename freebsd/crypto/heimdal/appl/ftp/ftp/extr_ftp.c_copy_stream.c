
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {size_t st_size; int st_mode; } ;
typedef size_t ssize_t ;
typedef int FILE ;


 size_t BLOCKSIZE ;
 scalar_t__ EPIPE ;
 int HASHBYTES ;
 scalar_t__ MAP_FAILED ;
 int MAP_SHARED ;
 int MS_ASYNC ;
 int PROT_READ ;
 scalar_t__ S_ISREG (int ) ;
 char* alloc_buffer (char*,size_t*,struct stat*) ;
 scalar_t__ errno ;
 int fileno (int *) ;
 scalar_t__ fstat (int ,struct stat*) ;
 scalar_t__ hash ;
 void* mmap (int ,size_t,int ,int ,int ,size_t) ;
 scalar_t__ msync (void*,size_t,int ) ;
 scalar_t__ munmap (void*,size_t) ;
 int putchar (char) ;
 int read (int ,char*,size_t) ;
 int sec_fflush (int *) ;
 void* sec_write (int ,char*,int) ;
 int warn (char*) ;

__attribute__((used)) static int
copy_stream (FILE * from, FILE * to)
{
    static size_t bufsize;
    static char *buf;
    int n;
    int bytes = 0;
    int werr = 0;
    int hashbytes = HASHBYTES;
    struct stat st;
    buf = alloc_buffer (buf, &bufsize,
   fstat (fileno (from), &st) >= 0 ? &st : ((void*)0));
    if (buf == ((void*)0))
 return -1;

    while ((n = read (fileno (from), buf, bufsize)) > 0) {
 werr = sec_write (fileno (to), buf, n);
 if (werr < 0)
     break;
 bytes += werr;
 while (hash && bytes > hashbytes) {
     putchar ('#');
     hashbytes += HASHBYTES;
 }
    }
    sec_fflush (to);
    if (n < 0)
 warn ("local");

    if (werr < 0) {
 if (errno != EPIPE)
     warn ("netout");
 bytes = -1;
    }
    return bytes;
}
