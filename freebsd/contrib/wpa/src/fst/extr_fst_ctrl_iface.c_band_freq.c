
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mb_band_id { ____Placeholder_mb_band_id } mb_band_id ;


 int ARRAY_SIZE (char const**) ;



 char const* fst_get_str_name (int,char const**,int ) ;

__attribute__((used)) static const char * band_freq(enum mb_band_id band)
{
 static const char *band_names[] = {
  [130] = "2.4GHZ",
  [129] = "5GHZ",
  [128] = "60GHZ",
 };

 return fst_get_str_name(band, band_names, ARRAY_SIZE(band_names));
}
