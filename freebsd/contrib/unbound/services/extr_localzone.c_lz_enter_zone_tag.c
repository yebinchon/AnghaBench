
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct local_zones {int lock; } ;
struct local_zone {size_t taglen; int lock; scalar_t__ taglist; } ;
typedef int dname ;


 int LDNS_MAX_DOMAINLEN ;
 int dname_count_labels (int *) ;
 int free (scalar_t__) ;
 struct local_zone* local_zones_find (struct local_zones*,int *,size_t,int,int ) ;
 int lock_rw_rdlock (int *) ;
 int lock_rw_unlock (int *) ;
 int lock_rw_wrlock (int *) ;
 int log_err (char*,char*) ;
 scalar_t__ memdup (int *,size_t) ;
 scalar_t__ sldns_str2wire_dname_buf (char*,int *,size_t*) ;

__attribute__((used)) static int
lz_enter_zone_tag(struct local_zones* zones, char* zname, uint8_t* list,
 size_t len, uint16_t rr_class)
{
 uint8_t dname[LDNS_MAX_DOMAINLEN+1];
 size_t dname_len = sizeof(dname);
 int dname_labs, r = 0;
 struct local_zone* z;

 if(sldns_str2wire_dname_buf(zname, dname, &dname_len) != 0) {
  log_err("cannot parse zone name in local-zone-tag: %s", zname);
  return 0;
 }
 dname_labs = dname_count_labels(dname);

 lock_rw_rdlock(&zones->lock);
 z = local_zones_find(zones, dname, dname_len, dname_labs, rr_class);
 if(!z) {
  lock_rw_unlock(&zones->lock);
  log_err("no local-zone for tag %s", zname);
  return 0;
 }
 lock_rw_wrlock(&z->lock);
 lock_rw_unlock(&zones->lock);
 free(z->taglist);
 z->taglist = memdup(list, len);
 z->taglen = len;
 if(z->taglist)
  r = 1;
 lock_rw_unlock(&z->lock);
 return r;
}
