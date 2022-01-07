
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int write_host_entry (int *,char const*,int *,struct sshkey const*,int) ;

int
add_host_to_hostfile(const char *filename, const char *host,
    const struct sshkey *key, int store_hash)
{
 FILE *f;
 int success;

 if (key == ((void*)0))
  return 1;
 f = fopen(filename, "a");
 if (!f)
  return 0;
 success = write_host_entry(f, host, ((void*)0), key, store_hash);
 fclose(f);
 return success;
}
