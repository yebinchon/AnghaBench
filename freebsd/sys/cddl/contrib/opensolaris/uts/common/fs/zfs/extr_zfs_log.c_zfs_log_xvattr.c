
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int xva_mapsize; int * xva_reqattrmap; } ;
typedef TYPE_1__ xvattr_t ;
struct TYPE_11__ {scalar_t__ xoa_readonly; scalar_t__ xoa_hidden; scalar_t__ xoa_system; scalar_t__ xoa_archive; scalar_t__ xoa_immutable; scalar_t__ xoa_nounlink; scalar_t__ xoa_appendonly; scalar_t__ xoa_opaque; scalar_t__ xoa_nodump; scalar_t__ xoa_av_quarantined; scalar_t__ xoa_av_modified; scalar_t__ xoa_reparse; scalar_t__ xoa_offline; scalar_t__ xoa_sparse; int xoa_av_scanstamp; int xoa_createtime; } ;
typedef TYPE_2__ xoptattr_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_12__ {int lr_attr_masksize; int lr_attr_bitmap; } ;
typedef TYPE_3__ lr_attr_t ;
typedef void* caddr_t ;


 int ASSERT (TYPE_2__*) ;
 int AV_SCANSTAMP_SZ ;
 int XAT0_APPENDONLY ;
 int XAT0_ARCHIVE ;
 int XAT0_AV_MODIFIED ;
 int XAT0_AV_QUARANTINED ;
 int XAT0_HIDDEN ;
 int XAT0_IMMUTABLE ;
 int XAT0_NODUMP ;
 int XAT0_NOUNLINK ;
 int XAT0_OFFLINE ;
 int XAT0_READONLY ;
 int XAT0_REPARSE ;
 int XAT0_SPARSE ;
 int XAT0_SYSTEM ;
 int XAT_APPENDONLY ;
 int XAT_ARCHIVE ;
 int XAT_AV_MODIFIED ;
 int XAT_AV_QUARANTINED ;
 int XAT_AV_SCANSTAMP ;
 int XAT_CREATETIME ;
 int XAT_HIDDEN ;
 int XAT_IMMUTABLE ;
 int XAT_NODUMP ;
 int XAT_NOUNLINK ;
 int XAT_OFFLINE ;
 int XAT_OPAQUE ;
 int XAT_READONLY ;
 int XAT_REPARSE ;
 int XAT_SPARSE ;
 int XAT_SYSTEM ;
 scalar_t__ XVA_ISSET_REQ (TYPE_1__*,int ) ;
 int ZFS_TIME_ENCODE (int *,int *) ;
 int bcopy (int ,void*,int ) ;
 TYPE_2__* xva_getxoptattr (TYPE_1__*) ;

__attribute__((used)) static void
zfs_log_xvattr(lr_attr_t *lrattr, xvattr_t *xvap)
{
 uint32_t *bitmap;
 uint64_t *attrs;
 uint64_t *crtime;
 xoptattr_t *xoap;
 void *scanstamp;
 int i;

 xoap = xva_getxoptattr(xvap);
 ASSERT(xoap);

 lrattr->lr_attr_masksize = xvap->xva_mapsize;
 bitmap = &lrattr->lr_attr_bitmap;
 for (i = 0; i != xvap->xva_mapsize; i++, bitmap++) {
  *bitmap = xvap->xva_reqattrmap[i];
 }


 attrs = (uint64_t *)bitmap;
 crtime = attrs + 1;
 scanstamp = (caddr_t)(crtime + 2);
 *attrs = 0;
 if (XVA_ISSET_REQ(xvap, XAT_READONLY))
  *attrs |= (xoap->xoa_readonly == 0) ? 0 :
      XAT0_READONLY;
 if (XVA_ISSET_REQ(xvap, XAT_HIDDEN))
  *attrs |= (xoap->xoa_hidden == 0) ? 0 :
      XAT0_HIDDEN;
 if (XVA_ISSET_REQ(xvap, XAT_SYSTEM))
  *attrs |= (xoap->xoa_system == 0) ? 0 :
      XAT0_SYSTEM;
 if (XVA_ISSET_REQ(xvap, XAT_ARCHIVE))
  *attrs |= (xoap->xoa_archive == 0) ? 0 :
      XAT0_ARCHIVE;
 if (XVA_ISSET_REQ(xvap, XAT_IMMUTABLE))
  *attrs |= (xoap->xoa_immutable == 0) ? 0 :
      XAT0_IMMUTABLE;
 if (XVA_ISSET_REQ(xvap, XAT_NOUNLINK))
  *attrs |= (xoap->xoa_nounlink == 0) ? 0 :
      XAT0_NOUNLINK;
 if (XVA_ISSET_REQ(xvap, XAT_APPENDONLY))
  *attrs |= (xoap->xoa_appendonly == 0) ? 0 :
      XAT0_APPENDONLY;
 if (XVA_ISSET_REQ(xvap, XAT_OPAQUE))
  *attrs |= (xoap->xoa_opaque == 0) ? 0 :
      XAT0_APPENDONLY;
 if (XVA_ISSET_REQ(xvap, XAT_NODUMP))
  *attrs |= (xoap->xoa_nodump == 0) ? 0 :
      XAT0_NODUMP;
 if (XVA_ISSET_REQ(xvap, XAT_AV_QUARANTINED))
  *attrs |= (xoap->xoa_av_quarantined == 0) ? 0 :
      XAT0_AV_QUARANTINED;
 if (XVA_ISSET_REQ(xvap, XAT_AV_MODIFIED))
  *attrs |= (xoap->xoa_av_modified == 0) ? 0 :
      XAT0_AV_MODIFIED;
 if (XVA_ISSET_REQ(xvap, XAT_CREATETIME))
  ZFS_TIME_ENCODE(&xoap->xoa_createtime, crtime);
 if (XVA_ISSET_REQ(xvap, XAT_AV_SCANSTAMP))
  bcopy(xoap->xoa_av_scanstamp, scanstamp, AV_SCANSTAMP_SZ);
 if (XVA_ISSET_REQ(xvap, XAT_REPARSE))
  *attrs |= (xoap->xoa_reparse == 0) ? 0 :
      XAT0_REPARSE;
 if (XVA_ISSET_REQ(xvap, XAT_OFFLINE))
  *attrs |= (xoap->xoa_offline == 0) ? 0 :
      XAT0_OFFLINE;
 if (XVA_ISSET_REQ(xvap, XAT_SPARSE))
  *attrs |= (xoap->xoa_sparse == 0) ? 0 :
      XAT0_SPARSE;
}
