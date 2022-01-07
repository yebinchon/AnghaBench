
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int el_lgcyconv; } ;
typedef TYPE_1__ EditLine ;


 scalar_t__ ct_enc_width (int const) ;
 char const* ct_encode_string (int const*,int *) ;
 int * el_wgets (TYPE_1__*,int*) ;

const char *
el_gets(EditLine *el, int *nread)
{
 const wchar_t *tmp;

 tmp = el_wgets(el, nread);
 if (tmp != ((void*)0)) {
     int i;
     size_t nwread = 0;

     for (i = 0; i < *nread; i++)
  nwread += ct_enc_width(tmp[i]);
     *nread = (int)nwread;
 }
 return ct_encode_string(tmp, &el->el_lgcyconv);
}
