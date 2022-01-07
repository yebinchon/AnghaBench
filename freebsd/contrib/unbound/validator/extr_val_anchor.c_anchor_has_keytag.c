
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct val_anchors {int dummy; } ;
struct trust_anchor {int lock; scalar_t__ numDNSKEY; scalar_t__ numDS; } ;


 struct trust_anchor* anchor_find (struct val_anchors*,int *,int,size_t,scalar_t__) ;
 size_t anchor_list_keytags (struct trust_anchor*,scalar_t__*,scalar_t__) ;
 scalar_t__* calloc (scalar_t__,int) ;
 int free (scalar_t__*) ;
 int lock_basic_unlock (int *) ;

int
anchor_has_keytag(struct val_anchors* anchors, uint8_t* name, int namelabs,
 size_t namelen, uint16_t dclass, uint16_t keytag)
{
 uint16_t* taglist;
 uint16_t* tl;
 size_t numtag, i;
 struct trust_anchor* anchor = anchor_find(anchors,
  name, namelabs, namelen, dclass);
 if(!anchor)
  return 0;
 if(!anchor->numDS && !anchor->numDNSKEY) {
  lock_basic_unlock(&anchor->lock);
  return 0;
 }

 taglist = calloc(anchor->numDS + anchor->numDNSKEY, sizeof(*taglist));
 if(!taglist) {
  lock_basic_unlock(&anchor->lock);
  return 0;
 }

 numtag = anchor_list_keytags(anchor, taglist,
  anchor->numDS+anchor->numDNSKEY);
 lock_basic_unlock(&anchor->lock);
 if(!numtag) {
  free(taglist);
  return 0;
 }
 tl = taglist;
 for(i=0; i<numtag; i++) {
  if(*tl == keytag) {
   free(taglist);
   return 1;
  }
  tl++;
 }
 free(taglist);
 return 0;
}
