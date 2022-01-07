
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ isc_boolean_t ;


 int tolower (unsigned char) ;

__attribute__((used)) static inline unsigned int
hash(const char *key, isc_boolean_t case_sensitive) {
 const char *s;
 unsigned int h = 0;
 int c;






 if (case_sensitive) {
  for (s = key; *s != '\0'; s++) {
   h += (h << 3) + *s;
  }
 } else {
  for (s = key; *s != '\0'; s++) {
   c = *s;
   c = tolower((unsigned char)c);
   h += (h << 3) + c;
  }
 }

 return (h);
}
