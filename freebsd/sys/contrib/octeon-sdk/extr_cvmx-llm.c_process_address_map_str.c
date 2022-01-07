
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int atoi (char*) ;
 int bit_extract (int ,int) ;
 int bit_insert (int ,int,int ) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static uint32_t process_address_map_str(uint32_t mrs_dat, char *addr_str)
{
    int count = 0;
    int amap [23];
    uint32_t new_mrs_dat = 0;


    char *charptr = strtok(addr_str," ");
    while ((charptr != ((void*)0)) & (count <= 22))
    {
        amap[22-count] = atoi(charptr);
        charptr = strtok(((void*)0)," ");
        count++;
    }

    uint32_t mrsdat_bit;
    for (count=0;count<=22;count++)
    {
        mrsdat_bit = bit_extract(mrs_dat, count);
        new_mrs_dat = bit_insert(mrsdat_bit, amap[count], new_mrs_dat);
    }

    return new_mrs_dat;
}
