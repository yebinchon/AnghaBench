
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cvmx_ixf18201_mii_write (int,int,int ,int) ;
 int cvmx_ixf18201_write16 (int,int) ;
 int cvmx_ixf18201_write32 (int,int) ;
 int cvmx_wait (int) ;

int cvmx_ixf18201_init(void)
{
    int index;
    int offset;
    cvmx_ixf18201_write16(0x0003, 0x0001);
    cvmx_ixf18201_write16(0x0003, 0);







    cvmx_ixf18201_write16(0x0000, 0x4010);
    cvmx_ixf18201_write16(0x0000, 0x4014);
    cvmx_ixf18201_write16(0x0004, 0x0140);
    cvmx_ixf18201_write16(0x0009, 0);
    for (index = 0; index < 2;index++ )
    {
        offset = 0x500 * index;
        cvmx_ixf18201_write32(0x3100 + offset, 0x47f7b);
        cvmx_ixf18201_write16(0x3005 + offset, 0x0040);
        cvmx_ixf18201_write16(0x3006 + offset, 0);
    }
    for (index = 0; index < 2;index++ )
    {
        offset = 0x500 * index;
        int cal_len_min_1 = 0;

        cvmx_ixf18201_write16(0x3007 + offset, 0x81c0 | (cal_len_min_1 << 11));
        cvmx_ixf18201_write16(0x3008 + offset, 0x3600 | (cal_len_min_1 << 4));
        cvmx_ixf18201_write16(0x3000 + offset, 0x0060);
        cvmx_ixf18201_write16(0x3002 + offset, 0x0040);
        cvmx_ixf18201_write16(0x3003 + offset, 0x0000);
        cvmx_ixf18201_write16(0x30c2 + offset, 0x0060);
        cvmx_ixf18201_write16(0x300a + offset, 0x0000);
        cvmx_ixf18201_write16(0x3007 + offset, 0x81c0 | (cal_len_min_1 << 11));
        cvmx_ixf18201_write16(0x3016 + offset, 0x0010);
        cvmx_ixf18201_write16(0x3008 + offset, 0x3600 | (cal_len_min_1 << 4));
        cvmx_ixf18201_write16(0x3012 + offset, 0x0010);
        cvmx_ixf18201_write16(0x3007 + offset, 0x8180 | (cal_len_min_1 << 11));
        cvmx_ixf18201_write16(0x3008 + offset, 0xa200 | (cal_len_min_1 << 4));

        cvmx_ixf18201_write16(0x3090 + offset, 0x0301);
    }
    cvmx_ixf18201_write16(0x0004, 0x1fff);
    cvmx_ixf18201_write16(0x0009, 0x007f);
    for (index = 0; index < 2;index++ )
    {
        offset = 0x500 * index;
        cvmx_ixf18201_write32(0x3100 + offset, 0x47f7c);

        cvmx_ixf18201_write32(0x3114 + offset, 0x25800000);
    }


    cvmx_wait(100000000);



    cvmx_ixf18201_mii_write(1, 3, 0, 0x8000);
    cvmx_ixf18201_mii_write(5, 3, 0, 0x8000);


    return 1;

}
