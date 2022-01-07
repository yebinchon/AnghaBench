
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct packed_rrset_data {int* rr_len; scalar_t__** rr_data; } ;
struct TYPE_3__ {scalar_t__* _wireformat; scalar_t__ _dname_count; } ;
typedef TYPE_1__ sldns_rr_descriptor ;


 scalar_t__ LDNS_RDF_TYPE_DNAME ;
 scalar_t__ LDNS_RDF_TYPE_STR ;
 int get_rdf_size (scalar_t__) ;
 int memcmp (scalar_t__*,scalar_t__*,size_t) ;
 scalar_t__ tolower (int) ;

__attribute__((used)) static int
canonical_compare_byfield(struct packed_rrset_data* d,
 const sldns_rr_descriptor* desc, size_t i, size_t j)
{





 int wfi = -1;
 int wfj = -1;
 uint8_t* di = d->rr_data[i]+2;
 uint8_t* dj = d->rr_data[j]+2;
 size_t ilen = d->rr_len[i]-2;
 size_t jlen = d->rr_len[j]-2;
 int dname_i = 0;
 int dname_j = 0;
 size_t lablen_i = 0;
 size_t lablen_j = 0;
 int dname_num_i = (int)desc->_dname_count;
 int dname_num_j = (int)desc->_dname_count;




 while(ilen > 0 && jlen > 0 && (dname_num_i > 0 || dname_num_j > 0)) {


  if( ((dname_i && lablen_i)?(uint8_t)tolower((int)*di):*di)
   != ((dname_j && lablen_j)?(uint8_t)tolower((int)*dj):*dj)
   ) {
    if(((dname_i && lablen_i)?(uint8_t)tolower((int)*di):*di)
    < ((dname_j && lablen_j)?(uint8_t)tolower((int)*dj):*dj))
    return -1;
      return 1;
  }
  ilen--;
  jlen--;
  if(lablen_i == 0) {
   if(dname_i) {


    lablen_i = (size_t)*di;
    if(lablen_i == 0) {

     dname_i = 0;
     dname_num_i--;


     if(dname_num_i == 0)
      lablen_i = ilen;
    }
   } else {

    wfi++;
    if(desc->_wireformat[wfi]
     == LDNS_RDF_TYPE_DNAME) {
     dname_i = 1;
     lablen_i = (size_t)*di;
     if(lablen_i == 0) {
      dname_i = 0;
      dname_num_i--;
      if(dname_num_i == 0)
       lablen_i = ilen;
     }
    } else if(desc->_wireformat[wfi]
     == LDNS_RDF_TYPE_STR)
     lablen_i = (size_t)*di;
    else lablen_i = get_rdf_size(
     desc->_wireformat[wfi]) - 1;
   }
  } else lablen_i--;


  if(lablen_j == 0) {
   if(dname_j) {
    lablen_j = (size_t)*dj;
    if(lablen_j == 0) {
     dname_j = 0;
     dname_num_j--;
     if(dname_num_j == 0)
      lablen_j = jlen;
    }
   } else {
    wfj++;
    if(desc->_wireformat[wfj]
     == LDNS_RDF_TYPE_DNAME) {
     dname_j = 1;
     lablen_j = (size_t)*dj;
     if(lablen_j == 0) {
      dname_j = 0;
      dname_num_j--;
      if(dname_num_j == 0)
       lablen_j = jlen;
     }
    } else if(desc->_wireformat[wfj]
     == LDNS_RDF_TYPE_STR)
     lablen_j = (size_t)*dj;
    else lablen_j = get_rdf_size(
     desc->_wireformat[wfj]) - 1;
   }
  } else lablen_j--;
  di++;
  dj++;
 }



 if(ilen == 0 && jlen == 0)
  return 0;
 if(ilen == 0)
  return -1;
 if(jlen == 0)
  return 1;

 if((wfi = memcmp(di, dj, (ilen<jlen)?ilen:jlen)) != 0)
  return wfi;
 if(ilen < jlen)
  return -1;
 if(jlen < ilen)
  return 1;
 return 0;
}
