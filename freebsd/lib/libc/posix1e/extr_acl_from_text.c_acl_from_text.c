
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * acl_t ;




 int ACL_BRAND_UNKNOWN ;
 void* EINVAL ;
 int _acl_brand (int *) ;
 int _acl_brand_as (int *,int) ;
 int _nfs4_acl_entry_from_text (int *,char*) ;
 int _posix1e_acl_entry_from_text (int *,char*) ;
 scalar_t__ _text_is_nfs4_entry (char*) ;
 int acl_free (int *) ;
 int * acl_init (int) ;
 int acl_valid (int *) ;
 void* errno ;
 int free (char*) ;
 char* strdup (char const*) ;
 int string_skip_whitespace (char*) ;
 scalar_t__ strlen (int ) ;
 char* strsep (char**,char*) ;

acl_t
acl_from_text(const char *buf_p)
{
 acl_t acl;
 char *mybuf_p, *line, *cur, *notcomment, *comment, *entry;
 int error;


 mybuf_p = strdup(buf_p);
 if (mybuf_p == ((void*)0))
  return(((void*)0));

 acl = acl_init(3);
 if (acl == ((void*)0)) {
  free(mybuf_p);
  return(((void*)0));
 }


 cur = mybuf_p;
 while ((line = strsep(&cur, "\n"))) {

  comment = line;
  notcomment = strsep(&comment, "#");


  while ((entry = strsep(&notcomment, ","))) {


   if (strlen(string_skip_whitespace(entry)) == 0)
    continue;

   if (_acl_brand(acl) == ACL_BRAND_UNKNOWN) {
    if (_text_is_nfs4_entry(entry))
     _acl_brand_as(acl, 129);
    else
     _acl_brand_as(acl, 128);
   }

   switch (_acl_brand(acl)) {
   case 129:
    error = _nfs4_acl_entry_from_text(acl, entry);
    break;

   case 128:
    error = _posix1e_acl_entry_from_text(acl, entry);
    break;

   default:
    error = EINVAL;
    break;
   }

   if (error)
    goto error_label;
  }
 }
 free(mybuf_p);
 return(acl);

error_label:
 acl_free(acl);
 free(mybuf_p);
 return(((void*)0));
}
