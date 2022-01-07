
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lzma_vli ;
struct TYPE_2__ {void* options; int id; } ;


 size_t LZMA_FILTERS_MAX ;
 int LZMA_PRESET_DEFAULT ;
 int _ (char*) ;
 TYPE_1__* filters ;
 size_t filters_count ;
 int message_fatal (int ) ;
 int preset_number ;

extern void
coder_add_filter(lzma_vli id, void *options)
{
 if (filters_count == LZMA_FILTERS_MAX)
  message_fatal(_("Maximum number of filters is four"));

 filters[filters_count].id = id;
 filters[filters_count].options = options;
 ++filters_count;





 preset_number = LZMA_PRESET_DEFAULT;

 return;
}
