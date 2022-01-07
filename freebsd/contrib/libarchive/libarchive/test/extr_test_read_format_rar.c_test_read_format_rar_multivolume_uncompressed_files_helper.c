
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;
typedef int buff ;


 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;
 int archive_read_data (struct archive*,char*,int) ;
 int archive_seek_data (struct archive*,int,int ) ;
 int assertEqualIntA (struct archive*,int,int ) ;
 int assertEqualStringA (struct archive*,char*,char*) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static void
test_read_format_rar_multivolume_uncompressed_files_helper(struct archive *a)
{
  char buff[64];


  assertEqualIntA(a, 0, archive_seek_data(a, 0, SEEK_SET));
  memset(buff, 0, sizeof(buff));
  assertEqualIntA(a, -1, archive_seek_data(a, -((int)sizeof(buff)-1), SEEK_SET));
  assertEqualIntA(a, 0, archive_seek_data(a, 0, SEEK_CUR));
  assertEqualIntA(a, (sizeof(buff)-1),
    archive_read_data(a, buff, (sizeof(buff)-1)));
  assertEqualIntA(a, (sizeof(buff)-1), archive_seek_data(a, 0, SEEK_CUR));
  assertEqualStringA(a, "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD "
                        "HTML 4.0 Transitional//EN\">\n", buff);
  memset(buff, 0, sizeof(buff));
  assertEqualIntA(a, -1, archive_seek_data(a, -(((int)sizeof(buff)-1)*2), SEEK_CUR));
  assertEqualIntA(a, (sizeof(buff)-1), archive_seek_data(a, 0, SEEK_CUR));
  assertEqualIntA(a, (sizeof(buff)-1),
    archive_read_data(a, buff, (sizeof(buff)-1)));
  assertEqualIntA(a, ((sizeof(buff)-1)*2), archive_seek_data(a, 0, SEEK_CUR));
  assertEqualStringA(a, "<HTML>\n<HEAD>\n\t<META HTTP-EQUIV=\"CONTENT-TYPE\" "
                        "CONTENT=\"text/ht", buff);
  memset(buff, 0, sizeof(buff));
  assertEqualIntA(a, -1, archive_seek_data(a, -(20111+32), SEEK_END));
  assertEqualIntA(a, ((sizeof(buff)-1)*2), archive_seek_data(a, 0, SEEK_CUR));
  assertEqualIntA(a, (sizeof(buff)-1),
    archive_read_data(a, buff, (sizeof(buff)-1)));
  assertEqualIntA(a, ((sizeof(buff)-1)*3), archive_seek_data(a, 0, SEEK_CUR));
  assertEqualStringA(a, "ml; charset=utf-8\">\n\t<TITLE></TITLE>\n\t<META "
                        "NAME=\"GENERATOR\" CO", buff);

  memset(buff, 0, sizeof(buff));
  assertEqualIntA(a, 20111, archive_seek_data(a, 20111, SEEK_SET));
  assertEqualIntA(a, 20111, archive_seek_data(a, 0, SEEK_CUR));
  assertEqualIntA(a, 0, archive_read_data(a, buff, (sizeof(buff)-1)));
  assertEqualIntA(a, 20111, archive_seek_data(a, 0, SEEK_CUR));
  assertEqualStringA(a, "", buff);
  memset(buff, 0, sizeof(buff));
  assertEqualIntA(a, 20111 + (sizeof(buff)-1),
    archive_seek_data(a, (sizeof(buff)-1), SEEK_CUR));
  assertEqualIntA(a, 0, archive_read_data(a, buff, (sizeof(buff)-1)));
  assertEqualIntA(a, 20111 + (sizeof(buff)-1),
    archive_seek_data(a, 0, SEEK_CUR));
  assertEqualStringA(a, "", buff);
  memset(buff, 0, sizeof(buff));
  assertEqualIntA(a, 20111 + ((sizeof(buff)-1)*2),
    archive_seek_data(a, ((sizeof(buff)-1)*2), SEEK_END));
  assertEqualIntA(a, 0, archive_read_data(a, buff, (sizeof(buff)-1)));
  assertEqualIntA(a, 20111 + ((sizeof(buff)-1)*2),
    archive_seek_data(a, 0, SEEK_CUR));
  assertEqualStringA(a, "", buff);
}
