
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_wstring {int * s; scalar_t__ buffer_length; scalar_t__ length; } ;


 int free (int *) ;

void
archive_wstring_free(struct archive_wstring *as)
{
 as->length = 0;
 as->buffer_length = 0;
 free(as->s);
 as->s = ((void*)0);
}
