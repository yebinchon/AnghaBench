
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
typedef enum uni_coding { ____Placeholder_uni_coding } uni_coding ;
struct TYPE_4__ {char const* str; } ;
struct TYPE_3__ {char const* str; } ;


 int UNI_CODING_ITU ;
 int UNI_CODING_NET ;
 TYPE_2__* itu_causes ;
 TYPE_1__* net_causes ;

const char *
uni_ie_cause2str(enum uni_coding coding, u_int cause)
{
 if (cause < 128) {
  if (coding == UNI_CODING_ITU)
   return (itu_causes[cause].str);
  if (coding == UNI_CODING_NET) {
   if (net_causes[cause].str != ((void*)0))
    return (net_causes[cause].str);
   return (itu_causes[cause].str);
  }
 }
 return (((void*)0));
}
