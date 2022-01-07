
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ ldns_status ;
typedef int ldns_rr ;
typedef int ldns_rdf ;
struct TYPE_4__ {scalar_t__ data; } ;
typedef TYPE_1__ ldns_rbnode_t ;
struct TYPE_5__ {int flags; int * hashmap; } ;
typedef TYPE_2__ ldns_output_format_storage ;
typedef int ldns_output_format ;
typedef int ldns_dnssec_name ;
typedef int ldns_buffer ;


 int LDNS_COMMENT_BUBBLEBABBLE ;
 int LDNS_COMMENT_FLAGS ;
 int LDNS_COMMENT_KEY ;
 int LDNS_COMMENT_KEY_ID ;
 int LDNS_COMMENT_KEY_SIZE ;
 int LDNS_COMMENT_KEY_TYPE ;
 int LDNS_COMMENT_NSEC3_CHAIN ;
 int LDNS_COMMENT_NULLS ;
 int LDNS_COMMENT_RRSIGS ;
 int LDNS_FMT_PAD_SOA_SERIAL ;
 int LDNS_FMT_ZEROIZE_RRSIGS ;
 int LDNS_FREE (char*) ;
 int LDNS_KEY_SEP_KEY ;
 int LDNS_KEY_ZONE_KEY ;
 scalar_t__ LDNS_RDF_TYPE_B64 ;
 scalar_t__ LDNS_RDF_TYPE_INT32 ;
 scalar_t__ LDNS_RDF_TYPE_TIME ;




 int LDNS_RR_TYPE_SOA ;
 scalar_t__ LDNS_STATUS_OK ;
 int * ldns_b32_ext2dname (int ) ;
 char* ldns_bubblebabble (int *,size_t) ;
 int ldns_buffer_printf (int *,char*,...) ;
 scalar_t__ ldns_buffer_status (int *) ;
 scalar_t__ ldns_calc_keytag (int const*) ;
 int * ldns_dname_label (scalar_t__,int ) ;
 int ldns_dnssec_name_name (int *) ;
 int ldns_nsec3_next_owner (int const*) ;
 int ldns_nsec3_optout (int const*) ;
 scalar_t__ ldns_output_format_covers_type (int const*,int) ;
 scalar_t__ ldns_output_format_default ;
 TYPE_1__* ldns_rbtree_search (int *,void*) ;
 int ldns_rdf2buffer_str (int *,int ) ;
 scalar_t__ ldns_rdf2buffer_str_dname (int *,scalar_t__) ;
 scalar_t__ ldns_rdf2buffer_str_fmt (int *,int const*,int *) ;
 int ldns_rdf2native_int16 (int *) ;
 int * ldns_rdf_data (int *) ;
 int ldns_rdf_free (int *) ;
 scalar_t__ ldns_rdf_get_type (int *) ;
 size_t ldns_rdf_size (int *) ;
 scalar_t__ ldns_read_uint32 (int *) ;
 scalar_t__ ldns_rr2buffer_str_rfc3597 (int *,int const*) ;
 scalar_t__ ldns_rr_class2buffer_str (int *,int ) ;
 int ldns_rr_dnskey_key_size (int const*) ;
 int ldns_rr_get_class (int const*) ;
 int ldns_rr_get_type (int const*) ;
 int ldns_rr_is_question (int const*) ;
 scalar_t__ ldns_rr_owner (int const*) ;
 int ldns_rr_rd_count (int const*) ;
 int * ldns_rr_rdf (int const*,int) ;
 int ldns_rr_ttl (int const*) ;
 scalar_t__ ldns_rr_type2buffer_str (int *,int) ;

ldns_status
ldns_rr2buffer_str_fmt(ldns_buffer *output,
  const ldns_output_format *fmt, const ldns_rr *rr)
{
 uint16_t i, flags;
 ldns_status status = LDNS_STATUS_OK;
 ldns_output_format_storage* fmt_st = (ldns_output_format_storage*)fmt;

 if (fmt_st == ((void*)0)) {
  fmt_st = (ldns_output_format_storage*)
     ldns_output_format_default;
 }
 if (!rr) {
  if (LDNS_COMMENT_NULLS & fmt_st->flags) {
   ldns_buffer_printf(output, "; (null)\n");
  }
  return ldns_buffer_status(output);
 }
 if (ldns_rr_owner(rr)) {
  status = ldns_rdf2buffer_str_dname(output, ldns_rr_owner(rr));
 }
 if (status != LDNS_STATUS_OK) {
  return status;
 }


 if (!ldns_rr_is_question(rr)) {
  ldns_buffer_printf(output, "\t%d", ldns_rr_ttl(rr));
 }

 ldns_buffer_printf(output, "\t");
 status = ldns_rr_class2buffer_str(output, ldns_rr_get_class(rr));
 if (status != LDNS_STATUS_OK) {
  return status;
 }
 ldns_buffer_printf(output, "\t");

 if (ldns_output_format_covers_type(fmt, ldns_rr_get_type(rr))) {
  return ldns_rr2buffer_str_rfc3597(output, rr);
 }
 status = ldns_rr_type2buffer_str(output, ldns_rr_get_type(rr));
 if (status != LDNS_STATUS_OK) {
  return status;
 }

 if (ldns_rr_rd_count(rr) > 0) {
  ldns_buffer_printf(output, "\t");
 } else if (!ldns_rr_is_question(rr)) {
  ldns_buffer_printf(output, "\t\\# 0");
 }

 for (i = 0; i < ldns_rr_rd_count(rr); i++) {

  if ((fmt_st->flags & LDNS_FMT_ZEROIZE_RRSIGS) &&
    (ldns_rr_get_type(rr) == 128) &&
    (( i == 4 &&
      ldns_rdf_get_type(ldns_rr_rdf(rr, 4)) ==
       LDNS_RDF_TYPE_TIME) ||
      ( i == 5 &&
       ldns_rdf_get_type(ldns_rr_rdf(rr, 5)) ==
          LDNS_RDF_TYPE_TIME) ||
      ( i == 8 &&
       ldns_rdf_get_type(ldns_rr_rdf(rr, 8)) ==
          LDNS_RDF_TYPE_B64))) {

   ldns_buffer_printf(output, "(null)");
   status = ldns_buffer_status(output);
  } else if ((fmt_st->flags & LDNS_FMT_PAD_SOA_SERIAL) &&
    (ldns_rr_get_type(rr) == LDNS_RR_TYPE_SOA) &&
                 i == 2 &&
     ldns_rdf_get_type(ldns_rr_rdf(rr, 2)) ==
        LDNS_RDF_TYPE_INT32) {
   ldns_buffer_printf(output, "%10lu",
    (unsigned long) ldns_read_uint32(
     ldns_rdf_data(ldns_rr_rdf(rr, 2))));
   status = ldns_buffer_status(output);
  } else {
   status = ldns_rdf2buffer_str_fmt(output,
     fmt, ldns_rr_rdf(rr, i));
  }
  if(status != LDNS_STATUS_OK)
   return status;
  if (i < ldns_rr_rd_count(rr) - 1) {
   ldns_buffer_printf(output, " ");
  }
 }



 if (ldns_rr_rd_count(rr) > 0) {
  switch (ldns_rr_get_type(rr)) {
  case 131:


   if (! (fmt_st->flags & LDNS_COMMENT_KEY)) {
    break;
   }
   flags = ldns_rdf2native_int16(ldns_rr_rdf(rr, 0));
   ldns_buffer_printf(output, " ;{");
   if (fmt_st->flags & LDNS_COMMENT_KEY_ID) {
    ldns_buffer_printf(output, "id = %u",
     (unsigned int) ldns_calc_keytag(rr));
   }
   if ((fmt_st->flags & LDNS_COMMENT_KEY_TYPE) &&
     (flags & LDNS_KEY_ZONE_KEY)){

    if (flags & LDNS_KEY_SEP_KEY) {
     ldns_buffer_printf(output, " (ksk)");
    } else {
     ldns_buffer_printf(output, " (zsk)");
    }
    if (fmt_st->flags & LDNS_COMMENT_KEY_SIZE){
     ldns_buffer_printf(output, ", ");
    }
   } else if (fmt_st->flags
     & (LDNS_COMMENT_KEY_ID
      |LDNS_COMMENT_KEY_SIZE)) {
    ldns_buffer_printf( output, ", ");
   }
   if (fmt_st->flags & LDNS_COMMENT_KEY_SIZE) {
    ldns_buffer_printf(output, "size = %db",
     ldns_rr_dnskey_key_size(rr));
   }
   ldns_buffer_printf(output, "}");
   break;
  case 128:
   if ((fmt_st->flags & LDNS_COMMENT_KEY)
     && (fmt_st->flags& LDNS_COMMENT_RRSIGS)
     && ldns_rr_rdf(rr, 6) != ((void*)0)) {
    ldns_buffer_printf(output, " ;{id = %d}",
      ldns_rdf2native_int16(
       ldns_rr_rdf(rr, 6)));
   }
   break;
  case 130:
   if ((fmt_st->flags & LDNS_COMMENT_BUBBLEBABBLE) &&
     ldns_rr_rdf(rr, 3) != ((void*)0)) {

    uint8_t *data = ldns_rdf_data(
      ldns_rr_rdf(rr, 3));
    size_t len = ldns_rdf_size(ldns_rr_rdf(rr, 3));
    char *babble = ldns_bubblebabble(data, len);
    if(babble) {
     ldns_buffer_printf(output,
       " ;{%s}", babble);
    }
    LDNS_FREE(babble);
   }
   break;
  case 129:
   if (! (fmt_st->flags & LDNS_COMMENT_FLAGS) &&
    ! (fmt_st->flags & LDNS_COMMENT_NSEC3_CHAIN)) {
    break;
   }
   ldns_buffer_printf(output, " ;{");
   if ((fmt_st->flags & LDNS_COMMENT_FLAGS)) {
    if (ldns_nsec3_optout(rr)) {
     ldns_buffer_printf(output,
      " flags: optout");
    } else {
     ldns_buffer_printf(output," flags: -");
    }
    if (fmt_st->flags & LDNS_COMMENT_NSEC3_CHAIN &&
      fmt_st->hashmap != ((void*)0)) {
     ldns_buffer_printf(output, ", ");
    }
   }
   if (fmt_st->flags & LDNS_COMMENT_NSEC3_CHAIN &&
     fmt_st->hashmap != ((void*)0)) {
    ldns_rbnode_t *node;
    ldns_rdf *key = ldns_dname_label(
      ldns_rr_owner(rr), 0);
    if (key) {
     node = ldns_rbtree_search(
      fmt_st->hashmap,
      (void *) key);
     if (node->data) {
      ldns_buffer_printf(output,
       "from: ");
      (void) ldns_rdf2buffer_str(
       output,
       ldns_dnssec_name_name(
          (ldns_dnssec_name*)
          node->data
       ));
     }
     ldns_rdf_free(key);
    }
    key = ldns_b32_ext2dname(
      ldns_nsec3_next_owner(rr));
    if (key) {
     node = ldns_rbtree_search(
      fmt_st->hashmap,
      (void *) key);
     if (node->data) {
      ldns_buffer_printf(output,
       " to: ");
      (void) ldns_rdf2buffer_str(
       output,
       ldns_dnssec_name_name(
          (ldns_dnssec_name*)
          node->data
       ));
     }
     ldns_rdf_free(key);
    }
   }
   ldns_buffer_printf(output, "}");
   break;
  default:
   break;

  }
 }

 ldns_buffer_printf(output, "\n");
 return ldns_buffer_status(output);
}
