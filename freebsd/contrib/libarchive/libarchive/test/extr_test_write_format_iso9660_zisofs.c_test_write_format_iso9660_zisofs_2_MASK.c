#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int S_IFDIR ; 
 int S_IFREG ; 
 int FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,char*) ; 
 int FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int FUNC4 (struct archive_entry*) ; 
 int FUNC5 (struct archive_entry*) ; 
 struct archive_entry* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct archive_entry*,int) ; 
 int FUNC14 (struct archive_entry*) ; 
 int FUNC15 (struct archive*) ; 
 int FUNC16 (struct archive*,unsigned char*,int) ; 
 int FUNC17 (struct archive*) ; 
 struct archive* FUNC18 () ; 
 int FUNC19 (struct archive*,struct archive_entry**) ; 
 int FUNC20 (struct archive*,unsigned char*,size_t) ; 
 int FUNC21 (struct archive*) ; 
 int FUNC22 (struct archive*) ; 
 int FUNC23 (struct archive*) ; 
 int FUNC24 (struct archive*) ; 
 int FUNC25 (struct archive*,unsigned char*,int) ; 
 int FUNC26 (struct archive*) ; 
 int FUNC27 (struct archive*,struct archive_entry*) ; 
 struct archive* FUNC28 () ; 
 int FUNC29 (struct archive*,unsigned char*,size_t,size_t*) ; 
 int FUNC30 (struct archive*) ; 
 int FUNC31 (struct archive*,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC32 (int) ; 
 int /*<<< orphan*/  FUNC33 (int,int) ; 
 int /*<<< orphan*/  FUNC34 (struct archive*,int,int) ; 
 int /*<<< orphan*/  FUNC35 (unsigned char*,...) ; 
 int /*<<< orphan*/  FUNC36 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (char*) ; 
 int /*<<< orphan*/  FUNC38 (unsigned char*) ; 
 unsigned char* FUNC39 (size_t) ; 
 int /*<<< orphan*/  FUNC40 (unsigned char*,char,int) ; 
 unsigned char* primary_id ; 
 int /*<<< orphan*/  FUNC41 (char*) ; 
 unsigned char* supplementary_id ; 
 unsigned char* terminator_id ; 
 unsigned char* volumeidu16 ; 
 unsigned char* volumesize2 ; 
 unsigned char* zisofs_data ; 
 unsigned char* zisofs_magic ; 

__attribute__((used)) static void
FUNC42(void)
{
	unsigned char buff2[1024];
	unsigned char data[1024];
	struct archive *a;
	struct archive_entry *ae;
	unsigned char *buff;
	size_t buffsize = 60 * 2048;
	size_t used;
	unsigned int i;
	int r;

	buff = FUNC39(buffsize);
	FUNC32(buff != NULL);
	if (buff == NULL)
		return;

	/* ISO9660 format: Create a new archive in memory. */
	FUNC32((a = FUNC28()) != NULL);
	FUNC34(a, 0, FUNC30(a));
	FUNC34(a, 0, FUNC23(a));
	r = FUNC31(a, NULL, "zisofs", "1");
	if (r == ARCHIVE_FATAL) {
		FUNC41("zisofs option not supported on this platform");
		FUNC33(ARCHIVE_OK, FUNC26(a));
		FUNC38(buff);
		return;
	}
	FUNC34(a, 0, FUNC31(a, NULL, "pad", NULL));
	FUNC34(a, 0, FUNC29(a, buff, buffsize, &used));

	/*
	 * "file1" has a bunch of attributes and 256K bytes of random data.
	 */
	FUNC32((ae = FUNC6()) != NULL);
	FUNC8(ae, 2, 20);
	FUNC9(ae, 3, 30);
	FUNC10(ae, 4, 40);
	FUNC12(ae, 5, 50);
	FUNC1(ae, "file1");
	FUNC11(ae, S_IFREG | 0755);
	FUNC13(ae, 256*1024);
	FUNC34(a, ARCHIVE_OK, FUNC27(a, ae));
	FUNC3(ae);
	for (i = 0; i < 256; i++) {
		int j;
		if (i == 0) {
			for (j = 0; j < (int)sizeof(data); j++)
				data[j] = (i^j) & 0xff;
		} else {
			for (j = 0; j < (int)sizeof(data); j++)
				data[j] ^= i+j;
		}
		FUNC34(a, 1024, FUNC25(a, data, 1024));
	}

	/*
	 * "file2" has a bunch of attributes and 2048 bytes data.
	 */
	FUNC32((ae = FUNC6()) != NULL);
	FUNC8(ae, 2, 20);
	FUNC9(ae, 3, 30);
	FUNC10(ae, 4, 40);
	FUNC12(ae, 5, 50);
	FUNC1(ae, "file2");
	FUNC11(ae, S_IFREG | 0755);
	FUNC13(ae, 2048);
	FUNC34(a, ARCHIVE_OK, FUNC27(a, ae));
	FUNC3(ae);
	FUNC40(data, 'a', sizeof(data));
	FUNC34(a, 1024, FUNC25(a, data, 1024));
	FUNC40(data, 'b', sizeof(data));
	FUNC34(a, 1024, FUNC25(a, data, 1024));

	/*
	 * "file3" has a bunch of attributes and 1024 bytes of 'Z'
	 *  + 1025 bytes of null data.
	 */
	FUNC32((ae = FUNC6()) != NULL);
	FUNC8(ae, 2, 20);
	FUNC9(ae, 3, 30);
	FUNC10(ae, 4, 40);
	FUNC12(ae, 5, 50);
	FUNC1(ae, "file3");
	FUNC11(ae, S_IFREG | 0755);
	FUNC13(ae, 2049);
	FUNC34(a, ARCHIVE_OK, FUNC27(a, ae));
	FUNC3(ae);
	FUNC40(data, 'Z', sizeof(data));
	FUNC34(a, 1024, FUNC25(a, data, 1024));

	/*
	 * "file4" has a bunch of attributes and 24 bytes of zisofs data
	 * which is compressed from 32K bytes null data.
	 */
	FUNC32((ae = FUNC6()) != NULL);
	FUNC8(ae, 2, 20);
	FUNC9(ae, 3, 30);
	FUNC10(ae, 4, 40);
	FUNC12(ae, 5, 50);
	FUNC1(ae, "file4");
	FUNC11(ae, S_IFREG | 0755);
	FUNC13(ae, 24);
	FUNC34(a, ARCHIVE_OK, FUNC27(a, ae));
	FUNC3(ae);
	FUNC34(a, 24, FUNC25(a, zisofs_data, 24));

	/* Close out the archive. */
	FUNC34(a, ARCHIVE_OK, FUNC24(a));
	FUNC34(a, ARCHIVE_OK, FUNC26(a));

	FUNC37("The ISO image size should be 110592 bytes.");
	FUNC33(used, 2048 * 54);

	/* Check System Area. */
	for (i = 0; i < 2048 * 16; i++) {
		FUNC37("System Area should be all nulls.");
		FUNC33(buff[i], 0);
	}

	/* Primary Volume. */
	FUNC37("Primary Volume Descriptor should be in 16 Logical Sector.");
	FUNC35(buff+2048*16, primary_id, 8);
	FUNC35(buff+2048*16+0x28,
	    "CDROM                           ", 32);
	FUNC35(buff+2048*16+0x50, volumesize2, 8);

	/* Supplementary Volume. */
	FUNC37("Supplementary Volume(Joliet) Descriptor "
	    "should be in 17 Logical Sector.");
	FUNC35(buff+2048*17, supplementary_id, 8);
	FUNC35(buff+2048*17+0x28, volumeidu16, 32);
	FUNC35(buff+2048*17+0x50, volumesize2, 8);
	FUNC37("Date and Time of Primary Volume and "
	    "Date and Time of Supplementary Volume "
	    "must be the same.");
	FUNC35(buff+2048*16+0x32d, buff+2048*17+0x32d, 0x44);

	/* Terminator. */
	FUNC37("Volume Descriptor Set Terminator "
	    "should be in 18 Logical Sector.");
	FUNC35(buff+2048*18, terminator_id, 8);
	for (i = 8; i < 2048; i++) {
		FUNC37("Body of Volume Descriptor Set Terminator "
		    "should be all nulls.");
		FUNC33(buff[2048*18+i], 0);
	}

	/* "file1"  Contents is zisofs data. */
	FUNC37("file1 image should be zisofs'ed.");
	FUNC35(buff+2048*31, zisofs_magic, 8);
	/* "file2"  Contents is not zisofs data. */
	FUNC40(data, 'a', sizeof(data));
	FUNC37("file2 image should not be zisofs'ed.");
	FUNC35(buff+2048*51, data, 1024);
	FUNC40(data, 'b', sizeof(data));
	FUNC37("file2 image should not be zisofs'ed.");
	FUNC35(buff+2048*51+1024, data, 1024);
	/* "file3"  Contents is zisofs data. */
	FUNC37("file3 image should be zisofs'ed.");
	FUNC35(buff+2048*52, zisofs_magic, 8);
	/* "file4"  Contents is zisofs data. */
	FUNC37("file4 image should be zisofs'ed.");
	FUNC35(buff+2048*53, zisofs_magic, 8);

	/*
	 * Read ISO image.
	 */
	FUNC32((a = FUNC18()) != NULL);
	FUNC34(a, 0, FUNC22(a));
	FUNC34(a, 0, FUNC21(a));
	FUNC34(a, 0, FUNC20(a, buff, used));

	/*
	 * Read Root Directory
	 * Root Directory entry must be in ISO image.
	 */
	FUNC34(a, 0, FUNC19(a, &ae));
	FUNC33(FUNC0(ae), FUNC2(ae));
	FUNC33(FUNC0(ae), FUNC5(ae));
	FUNC36(".", FUNC7(ae));
	FUNC32((S_IFDIR | 0555) == FUNC4(ae));
	FUNC33(2048, FUNC14(ae));

	/*
	 * Read "file1" which has 256K bytes random data.
	 */
	FUNC34(a, 0, FUNC19(a, &ae));
	FUNC33(2, FUNC0(ae));
	FUNC33(4, FUNC2(ae));
	FUNC33(5, FUNC5(ae));
	FUNC36("file1", FUNC7(ae));
	FUNC32((S_IFREG | 0555) == FUNC4(ae));
	FUNC33(256*1024, FUNC14(ae));
	FUNC34(a, 1024, FUNC16(a, buff2, 1024));

	/*
	 * Read "file2" which has 2048 bytes data.
	 */
	FUNC34(a, 0, FUNC19(a, &ae));
	FUNC33(2, FUNC0(ae));
	FUNC33(4, FUNC2(ae));
	FUNC33(5, FUNC5(ae));
	FUNC36("file2", FUNC7(ae));
	FUNC32((S_IFREG | 0555) == FUNC4(ae));
	FUNC33(2048, FUNC14(ae));
	FUNC34(a, 1024, FUNC16(a, buff2, 1024));
	FUNC40(data, 'a', sizeof(data));
	FUNC35(buff2, data, 1024);

	/*
	 * Read "file3" which has 2049 bytes data.
	 */
	FUNC34(a, 0, FUNC19(a, &ae));
	FUNC33(2, FUNC0(ae));
	FUNC33(4, FUNC2(ae));
	FUNC33(5, FUNC5(ae));
	FUNC36("file3", FUNC7(ae));
	FUNC32((S_IFREG | 0555) == FUNC4(ae));
	FUNC33(2049, FUNC14(ae));
	FUNC34(a, 1024, FUNC16(a, buff2, 1024));
	FUNC40(data, 'Z', sizeof(data));
	FUNC35(buff2, data, 1024);

	/*
	 * Read "file4" which has 32K bytes null data.
	 */
	FUNC34(a, 0, FUNC19(a, &ae));
	FUNC33(2, FUNC0(ae));
	FUNC33(4, FUNC2(ae));
	FUNC33(5, FUNC5(ae));
	FUNC36("file4", FUNC7(ae));
	FUNC32((S_IFREG | 0555) == FUNC4(ae));
	FUNC33(32768, FUNC14(ae));
	FUNC34(a, 1024, FUNC16(a, buff2, 1024));
	FUNC40(data, 0, sizeof(data));
	FUNC35(buff2, data, 1024);

	/*
	 * Verify the end of the archive.
	 */
	FUNC34(a, ARCHIVE_EOF, FUNC19(a, &ae));
	FUNC34(a, ARCHIVE_OK, FUNC15(a));
	FUNC34(a, ARCHIVE_OK, FUNC17(a));

	FUNC38(buff);
}