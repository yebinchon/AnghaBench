
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_file {struct bz_file* f_fsdata; } ;
struct bz_file {int bzf_bzstream; int bzf_rawfd; } ;


 int BZ2_bzDecompressEnd (int *) ;
 scalar_t__ BZ2_bzDecompressInit (int *,int ,int) ;
 scalar_t__ BZ_OK ;
 int SEEK_SET ;
 int bzero (struct bz_file*,int) ;
 int free (struct bz_file*) ;
 int lseek (int ,int ,int ) ;
 struct bz_file* malloc (int) ;

__attribute__((used)) static int
bzf_rewind(struct open_file *f)
{
    struct bz_file *bzf = (struct bz_file *)f->f_fsdata;
    struct bz_file *bzf_tmp;
    bzf_tmp = malloc(sizeof(struct bz_file));
    if (bzf_tmp == ((void*)0))
 return(-1);
    bzero(bzf_tmp, sizeof(struct bz_file));
    bzf_tmp->bzf_rawfd = bzf->bzf_rawfd;


    if (BZ2_bzDecompressInit(&(bzf_tmp->bzf_bzstream), 0, 1) != BZ_OK) {
 free(bzf_tmp);
 return(-1);
    }


    if (lseek(bzf->bzf_rawfd, 0, SEEK_SET) == -1) {
 BZ2_bzDecompressEnd(&(bzf_tmp->bzf_bzstream));
 free(bzf_tmp);
 return(-1);
    }


    BZ2_bzDecompressEnd(&(bzf->bzf_bzstream));
    free(bzf);


    f->f_fsdata = bzf_tmp;

    return(0);
}
