
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENPGP_TAG_ISNEW ;
 int OPENPGP_TAG_ISTAG ;
 int OPENPGP_TAG_NEW_MASK ;
 int OPENPGP_TAG_OLD_MASK ;
 int OPENPGP_TAG_OLD_TYPE ;

int
decode_tag(unsigned char *ptr, int *isnew, int *ltype)
{
 int tag;

 if (!ptr || !isnew || !ltype)
  return (-1);
 tag = *ptr;

 if (!(tag & OPENPGP_TAG_ISTAG))
  return (-1);
 *isnew = tag & OPENPGP_TAG_ISNEW;
 if (*isnew) {
  *ltype = -1;
  tag &= OPENPGP_TAG_NEW_MASK;
 } else {
  *ltype = tag & OPENPGP_TAG_OLD_TYPE;
  tag = (tag & OPENPGP_TAG_OLD_MASK) >> 2;
 }
 return (tag);
}
