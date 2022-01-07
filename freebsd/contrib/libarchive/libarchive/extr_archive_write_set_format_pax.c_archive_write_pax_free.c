
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pax {int l_url_encoded_name; int sparse_map; int pax_header; } ;
struct archive_write {int * format_data; } ;


 int ARCHIVE_OK ;
 int archive_string_free (int *) ;
 int free (struct pax*) ;
 int sparse_list_clear (struct pax*) ;

__attribute__((used)) static int
archive_write_pax_free(struct archive_write *a)
{
 struct pax *pax;

 pax = (struct pax *)a->format_data;
 if (pax == ((void*)0))
  return (ARCHIVE_OK);

 archive_string_free(&pax->pax_header);
 archive_string_free(&pax->sparse_map);
 archive_string_free(&pax->l_url_encoded_name);
 sparse_list_clear(pax);
 free(pax);
 a->format_data = ((void*)0);
 return (ARCHIVE_OK);
}
