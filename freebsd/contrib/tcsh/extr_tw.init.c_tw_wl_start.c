
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;
typedef int Char ;


 int SETDIR (int *) ;
 int const* tw_word ;

void
tw_wl_start(DIR *dfd, const Char *pat)
{
    SETDIR(dfd);
    tw_word = pat;
}
