
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vdd {TYPE_1__* pathtbl; } ;
struct isoent {size_t id_len; int * identifier; TYPE_2__* parent; int dir_location; } ;
struct archive_write {int dummy; } ;
struct TYPE_4__ {int dir_number; } ;
struct TYPE_3__ {int cnt; struct isoent** sorted; } ;


 int memcpy (unsigned char*,int *,size_t) ;
 int set_num_711 (unsigned char*,unsigned char) ;
 int set_num_721 (unsigned char*,int ) ;
 int set_num_722 (unsigned char*,int ) ;
 int set_num_731 (unsigned char*,int ) ;
 int set_num_732 (unsigned char*,int ) ;
 unsigned char* wb_buffptr (struct archive_write*) ;
 int wb_consume (struct archive_write*,int) ;
 size_t wb_remaining (struct archive_write*) ;

__attribute__((used)) static int
_write_path_table(struct archive_write *a, int type_m, int depth,
    struct vdd *vdd)
{
 unsigned char *bp, *wb;
 struct isoent **ptbl;
 size_t wbremaining;
 int i, r, wsize;

 if (vdd->pathtbl[depth].cnt == 0)
  return (0);

 wsize = 0;
 wb = wb_buffptr(a);
 wbremaining = wb_remaining(a);
 bp = wb - 1;
 ptbl = vdd->pathtbl[depth].sorted;
 for (i = 0; i < vdd->pathtbl[depth].cnt; i++) {
  struct isoent *np;
  size_t len;

  np = ptbl[i];
  if (np->identifier == ((void*)0))
   len = 1;
  else
   len = np->id_len;
  if (wbremaining - ((bp+1) - wb) < (len + 1 + 8)) {
   r = wb_consume(a, (bp+1) - wb);
   if (r < 0)
    return (r);
   wb = wb_buffptr(a);
   wbremaining = wb_remaining(a);
   bp = wb -1;
  }

  set_num_711(bp+1, (unsigned char)len);

  set_num_711(bp+2, 0);

  if (type_m)
   set_num_732(bp+3, np->dir_location);
  else
   set_num_731(bp+3, np->dir_location);

  if (type_m)
   set_num_722(bp+7, np->parent->dir_number);
  else
   set_num_721(bp+7, np->parent->dir_number);

  if (np->identifier == ((void*)0))
   bp[9] = 0;
  else
   memcpy(&bp[9], np->identifier, len);
  if (len & 0x01) {

   bp[9+len] = 0;
   len++;
  }
  wsize += 8 + (int)len;
  bp += 8 + len;
 }
 if ((bp + 1) > wb) {
  r = wb_consume(a, (bp+1)-wb);
  if (r < 0)
   return (r);
 }
 return (wsize);
}
