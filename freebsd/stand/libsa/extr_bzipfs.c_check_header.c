
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int next_in; int avail_in; } ;
struct bz_file {TYPE_1__ bzf_bzstream; } ;


 int* bz_magic ;
 int get_byte (struct bz_file*) ;

__attribute__((used)) static int
check_header(struct bz_file *bzf)
{
    unsigned int len;
    int c;


    for (len = 0; len < 3; len++) {
 c = get_byte(bzf);
 if (c != bz_magic[len]) {
     return(1);
 }
    }

    c = get_byte(bzf);
    if (c < '1' || c > '9')
 return(1);


    bzf->bzf_bzstream.next_in -= 4;
    bzf->bzf_bzstream.avail_in += 4;

    return(0);
}
