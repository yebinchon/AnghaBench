
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;

char
ldns_int_to_hexdigit(int i)
{
 switch (i) {
 case 0: return '0';
 case 1: return '1';
 case 2: return '2';
 case 3: return '3';
 case 4: return '4';
 case 5: return '5';
 case 6: return '6';
 case 7: return '7';
 case 8: return '8';
 case 9: return '9';
 case 10: return 'a';
 case 11: return 'b';
 case 12: return 'c';
 case 13: return 'd';
 case 14: return 'e';
 case 15: return 'f';
 default:
  abort();
 }
}
