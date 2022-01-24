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
struct msdos_options {int no_create; int align; int volume_id_set; int media_descriptor_set; int hidden_sectors_set; int timestamp_set; void* create_size; void* sectors_per_track; int /*<<< orphan*/  timestamp; void* size; void* reserved_sectors; void* hidden_sectors; void* num_FAT; void* media_descriptor; void* backup_sector; void* info_sector; void* drive_heads; void* floppy; void* directory_entries; int /*<<< orphan*/  block_size; void* sectors_per_cluster; void* sectors_per_fat; void* bytes_per_sector; void* OEM_string; void* volume_label; void* volume_id; int /*<<< orphan*/  fat_type; void* bootstrap; void* offset; } ;
typedef  int /*<<< orphan*/  o ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int MAXPATHLEN ; 
 char* _PATH_DEV ; 
 void* FUNC0 (void*,int,char*) ; 
 void* FUNC1 (void*,int,char*) ; 
 void* FUNC2 (void*,int,char*) ; 
 void* FUNC3 (void*,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int FUNC9 (int,char**,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct msdos_options*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char const*,struct msdos_options*) ; 
 void* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char const*,char) ; 
 int /*<<< orphan*/  FUNC14 (void*,char*) ; 
 char* FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 () ; 

int
FUNC17(int argc, char *argv[])
{
    static const char opts[] = "@:NAB:C:F:I:L:O:S:a:b:c:e:f:h:i:k:m:n:o:r:s:T:u:";
    struct msdos_options o;
    const char *fname, *dtype;
    char buf[MAXPATHLEN];
    int ch;

    FUNC10(&o, 0, sizeof(o));

    while ((ch = FUNC9(argc, argv, opts)) != -1)
	switch (ch) {
	case '@':
	    o.offset = FUNC3(optarg, "offset");
	    break;
	case 'N':
	    o.no_create = 1;
	    break;
	case 'A':
	    o.align = true;
	    break;
	case 'B':
	    o.bootstrap = optarg;
	    break;
	case 'C':
	    o.create_size = FUNC3(optarg, "create size");
	    break;
	case 'F':
	    if (FUNC14(optarg, "12") &&
		FUNC14(optarg, "16") &&
		FUNC14(optarg, "32"))
		FUNC7(1, "%s: bad FAT type", optarg);
	    o.fat_type = FUNC5(optarg);
	    break;
	case 'I':
	    o.volume_id = FUNC2(optarg, 0, "volume ID");
	    o.volume_id_set = 1;
	    break;
	case 'L':
	    o.volume_label = optarg;
	    break;
	case 'O':
	    o.OEM_string = optarg;
	    break;
	case 'S':
	    o.bytes_per_sector = FUNC1(optarg, 1, "bytes/sector");
	    break;
	case 'a':
	    o.sectors_per_fat = FUNC2(optarg, 1, "sectors/FAT");
	    break;
	case 'b':
	    o.block_size = FUNC4(optarg, 1, "block size");
	    o.sectors_per_cluster = 0;
	    break;
	case 'c':
	    o.sectors_per_cluster = FUNC0(optarg, 1, "sectors/cluster");
	    o.block_size = 0;
	    break;
	case 'e':
	    o.directory_entries = FUNC1(optarg, 1, "directory entries");
	    break;
	case 'f':
	    o.floppy = optarg;
	    break;
	case 'h':
	    o.drive_heads = FUNC1(optarg, 1, "drive heads");
	    break;
	case 'i':
	    o.info_sector = FUNC1(optarg, 1, "info sector");
	    break;
	case 'k':
	    o.backup_sector = FUNC1(optarg, 1, "backup sector");
	    break;
	case 'm':
	    o.media_descriptor = FUNC0(optarg, 0, "media descriptor");
	    o.media_descriptor_set = 1;
	    break;
	case 'n':
	    o.num_FAT = FUNC0(optarg, 1, "number of FATs");
	    break;
	case 'o':
	    o.hidden_sectors = FUNC2(optarg, 0, "hidden sectors");
	    o.hidden_sectors_set = 1;
	    break;
	case 'r':
	    o.reserved_sectors = FUNC1(optarg, 1, "reserved sectors");
	    break;
	case 's':
	    o.size = FUNC2(optarg, 1, "file system size");
	    break;
	case 'T':
	    o.timestamp_set = 1;
	    o.timestamp = FUNC8(optarg);
	    break;
	case 'u':
	    o.sectors_per_track = FUNC1(optarg, 1, "sectors/track");
	    break;
	default:
	    FUNC16();
	}
    argc -= optind;
    argv += optind;
    if (argc < 1 || argc > 2)
	FUNC16();
	if (o.align) {
		if (o.hidden_sectors_set)
		    FUNC7(1, "align (-A) is incompatible with -r");
	}
    fname = *argv++;
    if (!o.create_size && !FUNC13(fname, '/')) {
	FUNC12(buf, sizeof(buf), "%s%s", _PATH_DEV, fname);
	if (!(fname = FUNC15(buf)))
	    FUNC6(1, NULL);
    }
    dtype = *argv;
    return !!FUNC11(fname, dtype, &o);
}