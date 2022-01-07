
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ctf_file_t ;


 int ENOTSUP ;
 int * ctf_set_open_errno (int*,int ) ;

ctf_file_t *
ctf_open(const char *filename, int *errp)
{
 return (ctf_set_open_errno(errp, ENOTSUP));
}
