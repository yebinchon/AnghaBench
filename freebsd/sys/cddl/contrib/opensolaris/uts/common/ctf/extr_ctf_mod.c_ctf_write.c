
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ctf_file_t ;


 int ENOTSUP ;
 int ctf_set_errno (int *,int ) ;

int
ctf_write(ctf_file_t *fp, int fd)
{
 return (ctf_set_errno(fp, ENOTSUP));
}
