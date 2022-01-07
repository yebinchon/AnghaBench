
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct open_file {int f_fsdata; } ;
struct dirent {size_t d_namlen; int d_type; int d_fileno; int d_name; } ;


 int CALLBACK (int ,int ,int *,int *,size_t*,int ) ;
 int readdir ;

__attribute__((used)) static int
host_readdir(struct open_file *f, struct dirent *d)
{
 uint32_t fileno;
 uint8_t type;
 size_t namelen;
 int rc;

 rc = CALLBACK(readdir, f->f_fsdata, &fileno, &type, &namelen,
            d->d_name);
 if (rc)
  return (rc);

 d->d_fileno = fileno;
 d->d_type = type;
 d->d_namlen = namelen;

 return (0);
}
