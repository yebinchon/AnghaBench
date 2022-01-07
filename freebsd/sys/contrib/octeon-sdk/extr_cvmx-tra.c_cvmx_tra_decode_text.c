
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_21__ {int type; int source; int timestamp; int discontinuity; scalar_t__ addresslo; scalar_t__ addresshi; } ;
struct TYPE_15__ {scalar_t__ data; scalar_t__ datahi; } ;
struct TYPE_20__ {int source; int timestamp; size_t dest; scalar_t__ addresslo; scalar_t__ addresshi; scalar_t__ mask; int discontinuity; } ;
struct TYPE_19__ {int source; size_t dest; scalar_t__ addresslo; scalar_t__ addresshi; scalar_t__ subid; } ;
struct TYPE_18__ {int source; scalar_t__ addresslo; scalar_t__ addresshi; scalar_t__ mask; } ;
struct TYPE_24__ {int type; int timestamp; size_t source; int discontinuity; scalar_t__ address; } ;
struct TYPE_26__ {size_t source; size_t dest; scalar_t__ address; scalar_t__ mask; } ;
struct TYPE_23__ {size_t source; size_t dest; scalar_t__ address; scalar_t__ subid; } ;
struct TYPE_22__ {size_t source; scalar_t__ address; scalar_t__ mask; } ;
struct TYPE_16__ {TYPE_4__ cmn2; TYPE_10__ u128; TYPE_3__ iob2; TYPE_2__ iobld2; TYPE_1__ store2; TYPE_7__ cmn; TYPE_9__ iob; TYPE_6__ iobld; TYPE_5__ store; } ;
typedef TYPE_11__ cvmx_tra_data_t ;
struct TYPE_25__ {int time_grn; } ;
struct TYPE_17__ {TYPE_8__ s; } ;
typedef TYPE_12__ cvmx_tra_ctl_t ;
 int * DEST_ARRAY ;
 int OCTEON_CN3XXX ;
 int OCTEON_CN5XXX ;
 int OCTEON_CN68XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int * SOURCE_ARRAY ;
 int * TYPE_ARRAY ;
 int * TYPE_ARRAY2 ;
 int _cvmx_tra_unit ;
 int cvmx_dprintf (char*,unsigned long long,unsigned long long,char,...) ;

void cvmx_tra_decode_text(cvmx_tra_ctl_t tra_ctl, cvmx_tra_data_t data)
{
    if (OCTEON_IS_MODEL(OCTEON_CN3XXX) || OCTEON_IS_MODEL(OCTEON_CN5XXX))
    {


        int type = data.cmn.type;

        if (type >= 0x1a)
            type &= 0xf;

        switch (type)
        {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                cvmx_dprintf("0x%016llx %c%+10d %s %s 0x%016llx\n",
                    (unsigned long long)data.u128.data,
                    (data.cmn.discontinuity) ? 'D' : ' ',
                    data.cmn.timestamp << (tra_ctl.s.time_grn*3),
                    TYPE_ARRAY[type],
                    SOURCE_ARRAY[data.cmn.source],
                    (unsigned long long)data.cmn.address);
                break;
            case 6:
            case 7:
            case 8:
            case 9:
            case 16:
                cvmx_dprintf("0x%016llx %c%+10d %s %s mask=0x%02x 0x%016llx\n",
                   (unsigned long long)data.u128.data,
                   (data.cmn.discontinuity) ? 'D' : ' ',
                   data.cmn.timestamp << (tra_ctl.s.time_grn*3),
                   TYPE_ARRAY[type],
                   SOURCE_ARRAY[data.store.source],
                   (unsigned int)data.store.mask,
                   (unsigned long long)data.store.address << 3);
                break;
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
                cvmx_dprintf("0x%016llx %c%+10d %s %s->%s subdid=0x%x 0x%016llx\n",
                   (unsigned long long)data.u128.data,
                   (data.cmn.discontinuity) ? 'D' : ' ',
                   data.cmn.timestamp << (tra_ctl.s.time_grn*3),
                   TYPE_ARRAY[type],
                   SOURCE_ARRAY[data.iobld.source],
                   DEST_ARRAY[data.iobld.dest],
                   (unsigned int)data.iobld.subid,
                   (unsigned long long)data.iobld.address);
                break;
            case 15:
                cvmx_dprintf("0x%016llx %c%+10d %s %s->%s len=0x%x 0x%016llx\n",
                   (unsigned long long)data.u128.data,
                   (data.cmn.discontinuity) ? 'D' : ' ',
                   data.cmn.timestamp << (tra_ctl.s.time_grn*3),
                   TYPE_ARRAY[type],
                   SOURCE_ARRAY[data.iob.source],
                   DEST_ARRAY[data.iob.dest],
                   (unsigned int)data.iob.mask,
                   (unsigned long long)data.iob.address << 3);
                break;
            default:
                cvmx_dprintf("0x%016llx %c%+10d Unknown format\n",
                   (unsigned long long)data.u128.data,
                   (data.cmn.discontinuity) ? 'D' : ' ',
                   data.cmn.timestamp << (tra_ctl.s.time_grn*3));
                break;
        }
    }
    else
    {
        int type;
        int srcId;

        type = data.cmn2.type;

        switch (1ull<<type)
        {
            case 172:
            case 173:
            case 174:
            case 171:
            case 163:
            case 164:
            case 165:
            case 162:
            case 176:
            case 177:
            case 178:
            case 175:
            case 139:
            case 140:
            case 141:
            case 138:
            case 151:
            case 130:
            case 161:
            case 134:
            case 147:
            case 129:
            case 128:
            case 170:
            case 144:
            case 146:
            case 149:
            case 148:


                if (OCTEON_IS_MODEL(OCTEON_CN68XX))
                {
                    if (data.cmn2.source <= 7)
                    {
                        srcId = _cvmx_tra_unit + (data.cmn2.source * 4);
                        if (srcId >= 16)
                            srcId += 16;
                    }
                    else
                        srcId = (data.cmn2.source);
                }
                else
                        srcId = (data.cmn2.source);

                cvmx_dprintf("0x%016llx%016llx %c%+10d %s %s 0x%016llx%llx\n",
                   (unsigned long long)data.u128.datahi, (unsigned long long)data.u128.data,
                   (data.cmn2.discontinuity) ? 'D' : ' ',
                   data.cmn2.timestamp << (tra_ctl.s.time_grn*3),
                   TYPE_ARRAY2[type],
                   SOURCE_ARRAY[srcId],
                   (unsigned long long)data.cmn2.addresshi,
                   (unsigned long long)data.cmn2.addresslo);
                break;
            case 145:
            case 150:
            case 166:
            case 167:
            case 168:
            case 169:
            case 142:
            case 143:
            case 137:
            case 136:
            case 133:
            case 132:
            case 131:
            case 135:


                if (OCTEON_IS_MODEL(OCTEON_CN68XX))
                {
                    if (data.store2.source <= 7)
                    {
                        srcId = _cvmx_tra_unit + (data.store2.source * 4);
                        if (srcId >= 16)
                            srcId += 16;
                    }
                    else
                        srcId = data.store2.source;
                }
                else
                        srcId = data.store2.source;

                cvmx_dprintf("0x%016llx%016llx %c%+10d %s %s mask=0x%02x 0x%016llx%llx\n",
                   (unsigned long long)data.u128.datahi, (unsigned long long)data.u128.data,
                   (data.cmn2.discontinuity) ? 'D' : ' ',
                   data.cmn2.timestamp << (tra_ctl.s.time_grn*3),
                   TYPE_ARRAY2[type],
                   SOURCE_ARRAY[srcId],
                   (unsigned int)data.store2.mask,
                   (unsigned long long)data.store2.addresshi,
                   (unsigned long long)data.store2.addresslo);
                break;
            case 153:
            case 154:
            case 155:
            case 152:
            case 157:
            case 158:
            case 159:
            case 156:


                if (OCTEON_IS_MODEL(OCTEON_CN68XX))
                {
                    if (data.iobld2.source <= 7)
                    {
                        srcId = _cvmx_tra_unit + (data.iobld2.source * 4);
                        if (srcId >= 16)
                            srcId += 16;
                    }
                    else
                        srcId = data.iobld2.source;
                }
                else
                        srcId = data.iobld2.source;

                cvmx_dprintf("0x%016llx%016llx %c%+10d %s %s->%s subdid=0x%x 0x%016llx%llx\n",
                   (unsigned long long)data.u128.datahi, (unsigned long long)data.u128.data,
                   (data.cmn2.discontinuity) ? 'D' : ' ',
                   data.cmn2.timestamp << (tra_ctl.s.time_grn*3),
                   TYPE_ARRAY2[type],
                   SOURCE_ARRAY[srcId],
                   DEST_ARRAY[data.iobld2.dest],
                   (unsigned int)data.iobld2.subid,
                   (unsigned long long)data.iobld2.addresshi,
                   (unsigned long long)data.iobld2.addresslo);
                break;
            case 160:


                if (OCTEON_IS_MODEL(OCTEON_CN68XX))
                {
                    if (data.iob2.source <= 7)
                    {
                        srcId = _cvmx_tra_unit + (data.iob2.source * 4);
                        if (srcId >= 16)
                            srcId += 16;
                    }
                    else
                        srcId = data.iob2.source;
                }
                else
                        srcId = data.iob2.source;

                cvmx_dprintf("0x%016llx%016llx %c%+10d %s %s->%s len=0x%x 0x%016llx%llx\n",
                   (unsigned long long)data.u128.datahi, (unsigned long long)data.u128.data,
                   (data.iob2.discontinuity) ? 'D' : ' ',
                   data.iob2.timestamp << (tra_ctl.s.time_grn*3),
                   TYPE_ARRAY2[type],
                   SOURCE_ARRAY[srcId],
                   DEST_ARRAY[data.iob2.dest],
                   (unsigned int)data.iob2.mask,
                   (unsigned long long)data.iob2.addresshi << 3,
                   (unsigned long long)data.iob2.addresslo << 3);
                break;
            default:
                cvmx_dprintf("0x%016llx%016llx %c%+10d Unknown format\n",
                   (unsigned long long)data.u128.datahi, (unsigned long long)data.u128.data,
                   (data.cmn2.discontinuity) ? 'D' : ' ',
                   data.cmn2.timestamp << (tra_ctl.s.time_grn*3));
                break;
        }
    }
}
