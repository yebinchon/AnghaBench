
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct httpread {char* hdr; } ;



char * httpread_hdr_get(struct httpread *h)
{
 return h->hdr;
}
