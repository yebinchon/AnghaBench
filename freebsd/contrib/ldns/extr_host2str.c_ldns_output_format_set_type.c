
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ldns_status ;
typedef int ldns_rr_type ;
struct TYPE_2__ {int flags; int bitmap; } ;
typedef TYPE_1__ ldns_output_format_storage ;
typedef int ldns_output_format ;


 int LDNS_FMT_RFC3597 ;
 scalar_t__ LDNS_STATUS_OK ;
 int assert (int ) ;
 scalar_t__ ldns_nsec_bitmap_set_type (int ,int ) ;
 int ldns_output_format_set (int *,int) ;
 scalar_t__ ldns_rdf_bitmap_known_rr_types_space (int *) ;

ldns_status
ldns_output_format_set_type(ldns_output_format* fmt, ldns_rr_type t)
{
 ldns_output_format_storage* fmt_st = (ldns_output_format_storage*)fmt;
 ldns_status s;

 assert(fmt != ((void*)0));

 if (!(fmt_st->flags & LDNS_FMT_RFC3597)) {
  ldns_output_format_set(fmt, LDNS_FMT_RFC3597);
 }
 if (! fmt_st->bitmap) {
  s = ldns_rdf_bitmap_known_rr_types_space(&fmt_st->bitmap);
  if (s != LDNS_STATUS_OK) {
   return s;
  }
 }
 return ldns_nsec_bitmap_set_type(fmt_st->bitmap, t);
}
