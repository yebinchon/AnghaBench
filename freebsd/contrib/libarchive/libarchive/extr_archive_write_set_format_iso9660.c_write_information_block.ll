; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_write_information_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_write_information_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, i64 }
%struct.iso9660 = type { %struct.TYPE_13__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, i32 }
%struct.TYPE_13__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i64, i8*, i64, i8* }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_12__ = type { i8*, i8*, %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_18__ = type { i8* }
%struct.archive_string = type { i32 }

@LOGICAL_BLOCK_SIZE = common dso_local global i64 0, align 8
@NON_ISO_FILE_SYSTEM_INFORMATION_BLOCK = common dso_local global i64 0, align 8
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"INFO %s%s\00", align 1
@OPT_ABSTRACT_FILE_DEFAULT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"abstract-file\00", align 1
@KEY_STR = common dso_local global i32 0, align 4
@OPT_APPLICATION_ID_DEFAULT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"application-id\00", align 1
@OPT_ALLOW_VERNUM_DEFAULT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"allow-vernum\00", align 1
@KEY_FLG = common dso_local global i32 0, align 4
@OPT_BIBLIO_FILE_DEFAULT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"biblio-file\00", align 1
@OPT_BOOT_DEFAULT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@OPT_BOOT_CATALOG_DEFAULT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"boot-catalog\00", align 1
@OPT_BOOT_INFO_TABLE_DEFAULT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"boot-info-table\00", align 1
@OPT_BOOT_LOAD_SEG_DEFAULT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"boot-load-seg\00", align 1
@KEY_HEX = common dso_local global i32 0, align 4
@OPT_BOOT_LOAD_SIZE_DEFAULT = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"boot-load-size\00", align 1
@KEY_INT = common dso_local global i32 0, align 4
@OPT_BOOT_TYPE_DEFAULT = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [13 x i8] c"no-emulation\00", align 1
@OPT_BOOT_TYPE_FD = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@OPT_BOOT_TYPE_HARD_DISK = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"hard-disk\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"boot-type\00", align 1
@OPT_COPYRIGHT_FILE_DEFAULT = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [15 x i8] c"copyright-file\00", align 1
@OPT_ISO_LEVEL_DEFAULT = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [10 x i8] c"iso-level\00", align 1
@OPT_JOLIET_DEFAULT = common dso_local global i8* null, align 8
@OPT_JOLIET_LONGNAME = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [7 x i8] c"joliet\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@OPT_LIMIT_DEPTH_DEFAULT = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [12 x i8] c"limit-depth\00", align 1
@OPT_LIMIT_DIRS_DEFAULT = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [11 x i8] c"limit-dirs\00", align 1
@OPT_PAD_DEFAULT = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@OPT_PUBLISHER_DEFAULT = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [10 x i8] c"publisher\00", align 1
@OPT_RR_DEFAULT = common dso_local global i8* null, align 8
@OPT_RR_DISABLED = common dso_local global i8* null, align 8
@.str.23 = private unnamed_addr constant [10 x i8] c"rockridge\00", align 1
@OPT_RR_STRICT = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@OPT_RR_USEFUL = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [7 x i8] c"useful\00", align 1
@OPT_VOLUME_ID_DEFAULT = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [10 x i8] c"volume-id\00", align 1
@OPT_ZISOFS_DEFAULT = common dso_local global i8* null, align 8
@.str.27 = private unnamed_addr constant [7 x i8] c"zisofs\00", align 1
@OPT_COMPRESSION_LEVEL_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @write_information_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_information_block(%struct.archive_write* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.iso9660*, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.archive_string, align 4
  %10 = alloca i64, align 8
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  %11 = load i64, i64* @LOGICAL_BLOCK_SIZE, align 8
  %12 = load i64, i64* @NON_ISO_FILE_SYSTEM_INFORMATION_BLOCK, align 8
  %13 = mul i64 %11, %12
  store i64 %13, i64* %10, align 8
  %14 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %15 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.iso9660*
  store %struct.iso9660* %17, %struct.iso9660** %4, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %20 = call i64 @wb_remaining(%struct.archive_write* %19)
  %21 = icmp ugt i64 %18, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %24 = call i32 @wb_write_out(%struct.archive_write* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @ARCHIVE_OK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %2, align 4
  br label %404

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %1
  %32 = call i32 @archive_string_init(%struct.archive_string* %9)
  %33 = load i64, i64* %10, align 8
  %34 = call i32* @archive_string_ensure(%struct.archive_string* %9, i64 %33)
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %38 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %37, i32 0, i32 0
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = call i32 @archive_set_error(i32* %38, i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %41, i32* %2, align 4
  br label %404

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %9, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @memset(i32 %44, i32 0, i64 %45)
  store i32 0, i32* %7, align 4
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %48 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %49 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %48, i32 0, i32 9
  %50 = call i32 @ctime(i32* %49)
  %51 = call i32 @strncpy(i8* %47, i32 %50, i32 127)
  %52 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 127
  store i8 0, i8* %52, align 1
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %54 = call i32 (...) @archive_version_string()
  %55 = call i32 @archive_string_sprintf(%struct.archive_string* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %53, i32 %54)
  %56 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %57 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @OPT_ABSTRACT_FILE_DEFAULT, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %42
  %63 = load i32, i32* @KEY_STR, align 4
  %64 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %65 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %64, i32 0, i32 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @set_option_info(%struct.archive_string* %9, i32* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %63, i8* %67)
  br label %69

69:                                               ; preds = %62, %42
  %70 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %71 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @OPT_APPLICATION_ID_DEFAULT, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %69
  %77 = load i32, i32* @KEY_STR, align 4
  %78 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %79 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %78, i32 0, i32 7
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @set_option_info(%struct.archive_string* %9, i32* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %77, i8* %81)
  br label %83

83:                                               ; preds = %76, %69
  %84 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %85 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @OPT_ALLOW_VERNUM_DEFAULT, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load i32, i32* @KEY_FLG, align 4
  %92 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %93 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = call i32 @set_option_info(%struct.archive_string* %9, i32* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %91, i8* %96)
  br label %98

98:                                               ; preds = %90, %83
  %99 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %100 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @OPT_BIBLIO_FILE_DEFAULT, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %98
  %106 = load i32, i32* @KEY_STR, align 4
  %107 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %108 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @set_option_info(%struct.archive_string* %9, i32* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %106, i8* %110)
  br label %112

112:                                              ; preds = %105, %98
  %113 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %114 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @OPT_BOOT_DEFAULT, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %112
  %120 = load i32, i32* @KEY_STR, align 4
  %121 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %122 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @set_option_info(%struct.archive_string* %9, i32* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %120, i8* %125)
  br label %127

127:                                              ; preds = %119, %112
  %128 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %129 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @OPT_BOOT_CATALOG_DEFAULT, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %127
  %135 = load i32, i32* @KEY_STR, align 4
  %136 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %137 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @set_option_info(%struct.archive_string* %9, i32* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %135, i8* %140)
  br label %142

142:                                              ; preds = %134, %127
  %143 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %144 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 6
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @OPT_BOOT_INFO_TABLE_DEFAULT, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %142
  %150 = load i32, i32* @KEY_FLG, align 4
  %151 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %152 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 6
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to i8*
  %156 = call i32 @set_option_info(%struct.archive_string* %9, i32* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %150, i8* %155)
  br label %157

157:                                              ; preds = %149, %142
  %158 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %159 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 7
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @OPT_BOOT_LOAD_SEG_DEFAULT, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %157
  %165 = load i32, i32* @KEY_HEX, align 4
  %166 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %167 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @set_option_info(%struct.archive_string* %9, i32* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %165, i8* %169)
  br label %171

171:                                              ; preds = %164, %157
  %172 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %173 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 8
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @OPT_BOOT_LOAD_SIZE_DEFAULT, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %171
  %179 = load i32, i32* @KEY_INT, align 4
  %180 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %181 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %180, i32 0, i32 5
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @set_option_info(%struct.archive_string* %9, i32* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %179, i8* %183)
  br label %185

185:                                              ; preds = %178, %171
  %186 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %187 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 9
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @OPT_BOOT_TYPE_DEFAULT, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %192, label %212

192:                                              ; preds = %185
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8** %6, align 8
  %193 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %194 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 9
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @OPT_BOOT_TYPE_FD, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %6, align 8
  br label %200

200:                                              ; preds = %199, %192
  %201 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %202 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 9
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @OPT_BOOT_TYPE_HARD_DISK, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %200
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8** %6, align 8
  br label %208

208:                                              ; preds = %207, %200
  %209 = load i32, i32* @KEY_STR, align 4
  %210 = load i8*, i8** %6, align 8
  %211 = call i32 @set_option_info(%struct.archive_string* %9, i32* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %209, i8* %210)
  br label %212

212:                                              ; preds = %208, %185
  %213 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %214 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 11
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @OPT_COPYRIGHT_FILE_DEFAULT, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %226

219:                                              ; preds = %212
  %220 = load i32, i32* @KEY_STR, align 4
  %221 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %222 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @set_option_info(%struct.archive_string* %9, i32* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 %220, i8* %224)
  br label %226

226:                                              ; preds = %219, %212
  %227 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %228 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 12
  %230 = load i8*, i8** %229, align 8
  %231 = load i8*, i8** @OPT_ISO_LEVEL_DEFAULT, align 8
  %232 = icmp ne i8* %230, %231
  br i1 %232, label %233, label %240

233:                                              ; preds = %226
  %234 = load i32, i32* @KEY_INT, align 4
  %235 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %236 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 12
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @set_option_info(%struct.archive_string* %9, i32* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 %234, i8* %238)
  br label %240

240:                                              ; preds = %233, %226
  %241 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %242 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 13
  %244 = load i8*, i8** %243, align 8
  %245 = load i8*, i8** @OPT_JOLIET_DEFAULT, align 8
  %246 = icmp ne i8* %244, %245
  br i1 %246, label %247, label %265

247:                                              ; preds = %240
  %248 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %249 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 13
  %251 = load i8*, i8** %250, align 8
  %252 = load i8*, i8** @OPT_JOLIET_LONGNAME, align 8
  %253 = icmp eq i8* %251, %252
  br i1 %253, label %254, label %257

254:                                              ; preds = %247
  %255 = load i32, i32* @KEY_STR, align 4
  %256 = call i32 @set_option_info(%struct.archive_string* %9, i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 %255, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  br label %264

257:                                              ; preds = %247
  %258 = load i32, i32* @KEY_FLG, align 4
  %259 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %260 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 13
  %262 = load i8*, i8** %261, align 8
  %263 = call i32 @set_option_info(%struct.archive_string* %9, i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 %258, i8* %262)
  br label %264

264:                                              ; preds = %257, %254
  br label %265

265:                                              ; preds = %264, %240
  %266 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %267 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 14
  %269 = load i8*, i8** %268, align 8
  %270 = load i8*, i8** @OPT_LIMIT_DEPTH_DEFAULT, align 8
  %271 = icmp ne i8* %269, %270
  br i1 %271, label %272, label %279

272:                                              ; preds = %265
  %273 = load i32, i32* @KEY_FLG, align 4
  %274 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %275 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 14
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 @set_option_info(%struct.archive_string* %9, i32* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %273, i8* %277)
  br label %279

279:                                              ; preds = %272, %265
  %280 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %281 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 15
  %283 = load i8*, i8** %282, align 8
  %284 = load i8*, i8** @OPT_LIMIT_DIRS_DEFAULT, align 8
  %285 = icmp ne i8* %283, %284
  br i1 %285, label %286, label %293

286:                                              ; preds = %279
  %287 = load i32, i32* @KEY_FLG, align 4
  %288 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %289 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 15
  %291 = load i8*, i8** %290, align 8
  %292 = call i32 @set_option_info(%struct.archive_string* %9, i32* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i32 %287, i8* %291)
  br label %293

293:                                              ; preds = %286, %279
  %294 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %295 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 16
  %297 = load i8*, i8** %296, align 8
  %298 = load i8*, i8** @OPT_PAD_DEFAULT, align 8
  %299 = icmp ne i8* %297, %298
  br i1 %299, label %300, label %307

300:                                              ; preds = %293
  %301 = load i32, i32* @KEY_FLG, align 4
  %302 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %303 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 16
  %305 = load i8*, i8** %304, align 8
  %306 = call i32 @set_option_info(%struct.archive_string* %9, i32* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 %301, i8* %305)
  br label %307

307:                                              ; preds = %300, %293
  %308 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %309 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 17
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @OPT_PUBLISHER_DEFAULT, align 8
  %313 = icmp ne i64 %311, %312
  br i1 %313, label %314, label %321

314:                                              ; preds = %307
  %315 = load i32, i32* @KEY_STR, align 4
  %316 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %317 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 0
  %319 = load i8*, i8** %318, align 8
  %320 = call i32 @set_option_info(%struct.archive_string* %9, i32* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i32 %315, i8* %319)
  br label %321

321:                                              ; preds = %314, %307
  %322 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %323 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 18
  %325 = load i8*, i8** %324, align 8
  %326 = load i8*, i8** @OPT_RR_DEFAULT, align 8
  %327 = icmp ne i8* %325, %326
  br i1 %327, label %328, label %365

328:                                              ; preds = %321
  %329 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %330 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i32 0, i32 18
  %332 = load i8*, i8** %331, align 8
  %333 = load i8*, i8** @OPT_RR_DISABLED, align 8
  %334 = icmp eq i8* %332, %333
  br i1 %334, label %335, label %342

335:                                              ; preds = %328
  %336 = load i32, i32* @KEY_FLG, align 4
  %337 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %338 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %338, i32 0, i32 18
  %340 = load i8*, i8** %339, align 8
  %341 = call i32 @set_option_info(%struct.archive_string* %9, i32* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i32 %336, i8* %340)
  br label %364

342:                                              ; preds = %328
  %343 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %344 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 18
  %346 = load i8*, i8** %345, align 8
  %347 = load i8*, i8** @OPT_RR_STRICT, align 8
  %348 = icmp eq i8* %346, %347
  br i1 %348, label %349, label %352

349:                                              ; preds = %342
  %350 = load i32, i32* @KEY_STR, align 4
  %351 = call i32 @set_option_info(%struct.archive_string* %9, i32* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i32 %350, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  br label %363

352:                                              ; preds = %342
  %353 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %354 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i32 0, i32 18
  %356 = load i8*, i8** %355, align 8
  %357 = load i8*, i8** @OPT_RR_USEFUL, align 8
  %358 = icmp eq i8* %356, %357
  br i1 %358, label %359, label %362

359:                                              ; preds = %352
  %360 = load i32, i32* @KEY_STR, align 4
  %361 = call i32 @set_option_info(%struct.archive_string* %9, i32* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i32 %360, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0))
  br label %362

362:                                              ; preds = %359, %352
  br label %363

363:                                              ; preds = %362, %349
  br label %364

364:                                              ; preds = %363, %335
  br label %365

365:                                              ; preds = %364, %321
  %366 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %367 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %367, i32 0, i32 19
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* @OPT_VOLUME_ID_DEFAULT, align 8
  %371 = icmp ne i64 %369, %370
  br i1 %371, label %372, label %379

372:                                              ; preds = %365
  %373 = load i32, i32* @KEY_STR, align 4
  %374 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %375 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %375, i32 0, i32 0
  %377 = load i8*, i8** %376, align 8
  %378 = call i32 @set_option_info(%struct.archive_string* %9, i32* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i32 %373, i8* %377)
  br label %379

379:                                              ; preds = %372, %365
  %380 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %381 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %381, i32 0, i32 20
  %383 = load i8*, i8** %382, align 8
  %384 = load i8*, i8** @OPT_ZISOFS_DEFAULT, align 8
  %385 = icmp ne i8* %383, %384
  br i1 %385, label %386, label %393

386:                                              ; preds = %379
  %387 = load i32, i32* @KEY_FLG, align 4
  %388 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %389 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %389, i32 0, i32 20
  %391 = load i8*, i8** %390, align 8
  %392 = call i32 @set_option_info(%struct.archive_string* %9, i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i32 %387, i8* %391)
  br label %393

393:                                              ; preds = %386, %379
  %394 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %395 = call i32 @wb_buffptr(%struct.archive_write* %394)
  %396 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %9, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = load i64, i64* %10, align 8
  %399 = call i32 @memcpy(i32 %395, i32 %397, i64 %398)
  %400 = call i32 @archive_string_free(%struct.archive_string* %9)
  %401 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %402 = load i64, i64* %10, align 8
  %403 = call i32 @wb_consume(%struct.archive_write* %401, i64 %402)
  store i32 %403, i32* %2, align 4
  br label %404

404:                                              ; preds = %393, %36, %28
  %405 = load i32, i32* %2, align 4
  ret i32 %405
}

declare dso_local i64 @wb_remaining(%struct.archive_write*) #1

declare dso_local i32 @wb_write_out(%struct.archive_write*) #1

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i32* @archive_string_ensure(%struct.archive_string*, i64) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @ctime(i32*) #1

declare dso_local i32 @archive_string_sprintf(%struct.archive_string*, i8*, i8*, i32) #1

declare dso_local i32 @archive_version_string(...) #1

declare dso_local i32 @set_option_info(%struct.archive_string*, i32*, i8*, i32, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @wb_buffptr(%struct.archive_write*) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

declare dso_local i32 @wb_consume(%struct.archive_write*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
