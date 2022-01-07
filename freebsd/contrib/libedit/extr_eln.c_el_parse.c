
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int el_lgcyconv; } ;
typedef TYPE_1__ EditLine ;


 scalar_t__ ct_decode_argv (int,char const**,int *) ;
 int el_free (int const**) ;
 int el_wparse (TYPE_1__*,int,int const**) ;

int
el_parse(EditLine *el, int argc, const char *argv[])
{
 int ret;
 const wchar_t **wargv;

 wargv = (void *)ct_decode_argv(argc, argv, &el->el_lgcyconv);
 if (!wargv)
  return -1;
 ret = el_wparse(el, argc, wargv);
 el_free(wargv);

 return ret;
}
