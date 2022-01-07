
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _7z_header_info {int attrBools; int antiBools; int emptyFileBools; int emptyStreamBools; } ;


 int free (int ) ;

__attribute__((used)) static void
free_Header(struct _7z_header_info *h)
{
 free(h->emptyStreamBools);
 free(h->emptyFileBools);
 free(h->antiBools);
 free(h->attrBools);
}
