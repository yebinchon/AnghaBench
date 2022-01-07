
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {int dummy; } ;
typedef enum vdc { ____Placeholder_vdc } vdc ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;




 int a1_characters_map ;
 int a_characters_map ;
 int set_str (unsigned char*,char const*,int,int,int ) ;
 int set_str_utf16be (struct archive_write*,unsigned char*,char const*,int,int,int) ;

__attribute__((used)) static int
set_str_a_characters_bp(struct archive_write *a, unsigned char *bp,
    int from, int to, const char *s, enum vdc vdc)
{
 int r;

 switch (vdc) {
 case 130:
  set_str(bp+from, s, to - from + 1, 0x20,
      a_characters_map);
  r = ARCHIVE_OK;
  break;
 case 131:
  set_str(bp+from, s, to - from + 1, 0x20,
      a1_characters_map);
  r = ARCHIVE_OK;
  break;
 case 129:
 case 128:
  r = set_str_utf16be(a, bp+from, s, to - from + 1,
      0x0020, vdc);
  break;
 default:
  r = ARCHIVE_FATAL;
 }
 return (r);
}
