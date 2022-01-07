
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 size_t fread (unsigned char*,int,size_t,int *) ;
 int printf (char*) ;

int os_get_random(unsigned char *buf, size_t len)
{
 FILE *f;
 size_t rc;

 f = fopen("/dev/urandom", "rb");
 if (f == ((void*)0)) {
  printf("Could not open /dev/urandom.\n");
  return -1;
 }

 rc = fread(buf, 1, len, f);
 fclose(f);

 return rc != len ? -1 : 0;
}
