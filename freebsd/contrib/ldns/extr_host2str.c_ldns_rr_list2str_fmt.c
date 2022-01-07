
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ldns_rr_list ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ ldns_output_format ;
typedef int ldns_buffer ;


 int LDNS_COMMENT_NULLS ;
 int LDNS_MAX_PACKETLEN ;
 scalar_t__ LDNS_STATUS_OK ;
 char* ldns_buffer_export2str (int *) ;
 int ldns_buffer_free (int *) ;
 int * ldns_buffer_new (int ) ;
 int ldns_buffer_printf (int *,char*) ;
 TYPE_1__* ldns_output_format_default ;
 scalar_t__ ldns_rr_list2buffer_str_fmt (int *,TYPE_1__ const*,int const*) ;

char *
ldns_rr_list2str_fmt(const ldns_output_format *fmt, const ldns_rr_list *list)
{
 char *result = ((void*)0);
 ldns_buffer *tmp_buffer = ldns_buffer_new(LDNS_MAX_PACKETLEN);

 if (!tmp_buffer) {
  return ((void*)0);
 }
 if (list) {
  if (ldns_rr_list2buffer_str_fmt(
       tmp_buffer, fmt, list)
           == LDNS_STATUS_OK) {
  }
 } else {
  if (fmt == ((void*)0)) {
   fmt = ldns_output_format_default;
  }
  if (fmt->flags & LDNS_COMMENT_NULLS) {
   ldns_buffer_printf(tmp_buffer, "; (null)\n");
  }
 }


 result = ldns_buffer_export2str(tmp_buffer);
 ldns_buffer_free(tmp_buffer);
 return result;
}
