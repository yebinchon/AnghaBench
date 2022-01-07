
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_iconv_std_dst_list {int dummy; } ;
struct _citrus_iconv_std_dst {int sd_mapper; } ;


 struct _citrus_iconv_std_dst* TAILQ_FIRST (struct _citrus_iconv_std_dst_list*) ;
 int TAILQ_REMOVE (struct _citrus_iconv_std_dst_list*,struct _citrus_iconv_std_dst*,int ) ;
 int _csmapper_close (int ) ;
 int free (struct _citrus_iconv_std_dst*) ;
 int sd_entry ;

__attribute__((used)) static void
close_dsts(struct _citrus_iconv_std_dst_list *dl)
{
 struct _citrus_iconv_std_dst *sd;

 while ((sd = TAILQ_FIRST(dl)) != ((void*)0)) {
  TAILQ_REMOVE(dl, sd, sd_entry);
  _csmapper_close(sd->sd_mapper);
  free(sd);
 }
}
