
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int ALIGN (int,int) ;
 int htobe16 (int) ;

__attribute__((used)) static inline uint16_t get_klm_octo(int nentries)
{
 return htobe16(ALIGN(nentries, 3) / 2);
}
