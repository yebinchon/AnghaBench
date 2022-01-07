
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int arc_buf_hdr_t ;
typedef int abd_t ;


 int abd_free (int *) ;
 int arc_free_data_impl (int *,int ,void*) ;

__attribute__((used)) static void
arc_free_data_abd(arc_buf_hdr_t *hdr, abd_t *abd, uint64_t size, void *tag)
{
 arc_free_data_impl(hdr, size, tag);
 abd_free(abd);
}
