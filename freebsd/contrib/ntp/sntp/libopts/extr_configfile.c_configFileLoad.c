
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmap_info_t ;
typedef int const tOptionValue ;
typedef int tOptionLoadMode ;


 int MAP_PRIVATE ;
 int OPTION_LOAD_COOKED ;
 int PROT_READ ;
 scalar_t__ TEXT_MMAP_FAILED_ADDR (char*) ;
 int errno ;
 int const* optionLoadNested (char*,char const*,int ) ;
 int option_load_mode ;
 int strlen (char const*) ;
 char* text_mmap (char const*,int ,int ,int *) ;
 int text_munmap (int *) ;

const tOptionValue *
configFileLoad(char const * fname)
{
    tmap_info_t cfgfile;
    tOptionValue * res = ((void*)0);
    tOptionLoadMode save_mode = option_load_mode;

    char * txt = text_mmap(fname, PROT_READ, MAP_PRIVATE, &cfgfile);

    if (TEXT_MMAP_FAILED_ADDR(txt))
        return ((void*)0);

    option_load_mode = OPTION_LOAD_COOKED;
    res = optionLoadNested(txt, fname, strlen(fname));

    if (res == ((void*)0)) {
        int err = errno;
        text_munmap(&cfgfile);
        errno = err;
    } else
        text_munmap(&cfgfile);

    option_load_mode = save_mode;
    return res;
}
