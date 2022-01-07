
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct httpread {int hdr_type; } ;
typedef enum httpread_hdr_type { ____Placeholder_httpread_hdr_type } httpread_hdr_type ;



enum httpread_hdr_type httpread_hdr_type_get(struct httpread *h)
{
 return h->hdr_type;
}
