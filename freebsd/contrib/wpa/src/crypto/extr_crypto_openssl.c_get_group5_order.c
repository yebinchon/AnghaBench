
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RFC3526_ORDER_1536 ;
typedef int BIGNUM ;


 int * BN_bin2bn (unsigned char const*,int,int *) ;

__attribute__((used)) static BIGNUM * get_group5_order(void)
{
 static const unsigned char RFC3526_ORDER_1536[] = {
  0x7F,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xE4,0x87,0xED,0x51,
  0x10,0xB4,0x61,0x1A,0x62,0x63,0x31,0x45,0xC0,0x6E,0x0E,0x68,
  0x94,0x81,0x27,0x04,0x45,0x33,0xE6,0x3A,0x01,0x05,0xDF,0x53,
  0x1D,0x89,0xCD,0x91,0x28,0xA5,0x04,0x3C,0xC7,0x1A,0x02,0x6E,
  0xF7,0xCA,0x8C,0xD9,0xE6,0x9D,0x21,0x8D,0x98,0x15,0x85,0x36,
  0xF9,0x2F,0x8A,0x1B,0xA7,0xF0,0x9A,0xB6,0xB6,0xA8,0xE1,0x22,
  0xF2,0x42,0xDA,0xBB,0x31,0x2F,0x3F,0x63,0x7A,0x26,0x21,0x74,
  0xD3,0x1B,0xF6,0xB5,0x85,0xFF,0xAE,0x5B,0x7A,0x03,0x5B,0xF6,
  0xF7,0x1C,0x35,0xFD,0xAD,0x44,0xCF,0xD2,0xD7,0x4F,0x92,0x08,
  0xBE,0x25,0x8F,0xF3,0x24,0x94,0x33,0x28,0xF6,0x72,0x2D,0x9E,
  0xE1,0x00,0x3E,0x5C,0x50,0xB1,0xDF,0x82,0xCC,0x6D,0x24,0x1B,
  0x0E,0x2A,0xE9,0xCD,0x34,0x8B,0x1F,0xD4,0x7E,0x92,0x67,0xAF,
  0xC1,0xB2,0xAE,0x91,0xEE,0x51,0xD6,0xCB,0x0E,0x31,0x79,0xAB,
  0x10,0x42,0xA9,0x5D,0xCF,0x6A,0x94,0x83,0xB8,0x4B,0x4B,0x36,
  0xB3,0x86,0x1A,0xA7,0x25,0x5E,0x4C,0x02,0x78,0xBA,0x36,0x04,
  0x65,0x11,0xB9,0x93,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF
 };
 return BN_bin2bn(RFC3526_ORDER_1536, sizeof(RFC3526_ORDER_1536), ((void*)0));
}
