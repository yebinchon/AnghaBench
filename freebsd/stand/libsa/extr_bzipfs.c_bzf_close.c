
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_file {scalar_t__ f_fsdata; } ;
struct bz_file {int bzf_rawfd; int bzf_bzstream; } ;


 int BZ2_bzDecompressEnd (int *) ;
 int close (int ) ;
 int free (struct bz_file*) ;

__attribute__((used)) static int
bzf_close(struct open_file *f)
{
    struct bz_file *bzf = (struct bz_file *)f->f_fsdata;

    BZ2_bzDecompressEnd(&(bzf->bzf_bzstream));
    close(bzf->bzf_rawfd);
    free(bzf);
    return(0);
}
