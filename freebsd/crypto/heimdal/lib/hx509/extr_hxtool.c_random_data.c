
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RAND_bytes (void*,int) ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int free (void*) ;
 int fwrite (void*,int,int,int ) ;
 void* malloc (int) ;
 int parse_bytes (char*,char*) ;
 int stderr ;
 int stdout ;

int
random_data(void *opt, int argc, char **argv)
{
    void *ptr;
    int len, ret;

    len = parse_bytes(argv[0], "byte");
    if (len <= 0) {
 fprintf(stderr, "bad argument to random-data\n");
 return 1;
    }

    ptr = malloc(len);
    if (ptr == ((void*)0)) {
 fprintf(stderr, "out of memory\n");
 return 1;
    }

    ret = RAND_bytes(ptr, len);
    if (ret != 1) {
 free(ptr);
 fprintf(stderr, "did not get cryptographic strong random\n");
 return 1;
    }

    fwrite(ptr, len, 1, stdout);
    fflush(stdout);

    free(ptr);

    return 0;
}
