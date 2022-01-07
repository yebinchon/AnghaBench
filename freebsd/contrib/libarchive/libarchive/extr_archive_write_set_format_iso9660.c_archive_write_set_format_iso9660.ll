; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_archive_write_set_format_iso9660.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_archive_write_set_format_iso9660.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { i8*, %struct.TYPE_11__, i32 (%struct.archive_write*)*, i32, i32, i32, i32, i32, %struct.iso9660* }
%struct.TYPE_11__ = type { i8*, i32 }
%struct.iso9660 = type { i32, i32, i32*, i32*, %struct.TYPE_18__, %struct.TYPE_14__, %struct.TYPE_17__*, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_16__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, i64, i64, i64, i32, i32, i32*, %struct.TYPE_15__, i32*, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_17__*, i32*, i32, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_17__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i64, i64, i32* }
%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_18__, i32, i32*, %struct.TYPE_18__, %struct.TYPE_18__, i32* }
%struct.TYPE_18__ = type { i64* }
%struct.TYPE_15__ = type { i32*, i32, i64, i32* }

@ARCHIVE_WRITE_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"archive_write_set_format_iso9660\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't allocate iso9660 data\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@VDD_PRIMARY = common dso_local global i32 0, align 4
@VDD_JOLIET = common dso_local global i32 0, align 4
@WB_TO_TEMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"CDROM\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"boot.catalog\00", align 1
@BOOT_PLATFORM_X86 = common dso_local global i32 0, align 4
@BOOT_LOAD_SIZE = common dso_local global i32 0, align 4
@OPT_ABSTRACT_FILE_DEFAULT = common dso_local global i32 0, align 4
@OPT_APPLICATION_ID_DEFAULT = common dso_local global i32 0, align 4
@OPT_ALLOW_VERNUM_DEFAULT = common dso_local global i32 0, align 4
@OPT_BIBLIO_FILE_DEFAULT = common dso_local global i32 0, align 4
@OPT_BOOT_DEFAULT = common dso_local global i32 0, align 4
@OPT_BOOT_CATALOG_DEFAULT = common dso_local global i32 0, align 4
@OPT_BOOT_INFO_TABLE_DEFAULT = common dso_local global i32 0, align 4
@OPT_BOOT_LOAD_SEG_DEFAULT = common dso_local global i32 0, align 4
@OPT_BOOT_LOAD_SIZE_DEFAULT = common dso_local global i32 0, align 4
@OPT_BOOT_TYPE_DEFAULT = common dso_local global i32 0, align 4
@OPT_COMPRESSION_LEVEL_DEFAULT = common dso_local global i32 0, align 4
@OPT_COPYRIGHT_FILE_DEFAULT = common dso_local global i32 0, align 4
@OPT_ISO_LEVEL_DEFAULT = common dso_local global i32 0, align 4
@OPT_JOLIET_DEFAULT = common dso_local global i32 0, align 4
@OPT_LIMIT_DEPTH_DEFAULT = common dso_local global i32 0, align 4
@OPT_LIMIT_DIRS_DEFAULT = common dso_local global i32 0, align 4
@OPT_PAD_DEFAULT = common dso_local global i32 0, align 4
@OPT_PUBLISHER_DEFAULT = common dso_local global i32 0, align 4
@OPT_RR_DEFAULT = common dso_local global i32 0, align 4
@OPT_VOLUME_ID_DEFAULT = common dso_local global i32 0, align 4
@OPT_ZISOFS_DEFAULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"iso9660\00", align 1
@iso9660_options = common dso_local global i32 0, align 4
@iso9660_write_header = common dso_local global i32 0, align 4
@iso9660_write_data = common dso_local global i32 0, align 4
@iso9660_finish_entry = common dso_local global i32 0, align 4
@iso9660_close = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_ISO9660 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"ISO9660\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_set_format_iso9660(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.iso9660*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  %6 = load %struct.archive*, %struct.archive** %3, align 8
  %7 = bitcast %struct.archive* %6 to %struct.archive_write*
  store %struct.archive_write* %7, %struct.archive_write** %4, align 8
  %8 = load %struct.archive*, %struct.archive** %3, align 8
  %9 = load i32, i32* @ARCHIVE_WRITE_MAGIC, align 4
  %10 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %11 = call i32 @archive_check_magic(%struct.archive* %8, i32 %9, i32 %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %13 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %12, i32 0, i32 2
  %14 = load i32 (%struct.archive_write*)*, i32 (%struct.archive_write*)** %13, align 8
  %15 = icmp ne i32 (%struct.archive_write*)* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %18 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %17, i32 0, i32 2
  %19 = load i32 (%struct.archive_write*)*, i32 (%struct.archive_write*)** %18, align 8
  %20 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %21 = call i32 %19(%struct.archive_write* %20)
  br label %22

22:                                               ; preds = %16, %1
  %23 = call %struct.iso9660* @calloc(i32 1, i32 416)
  store %struct.iso9660* %23, %struct.iso9660** %5, align 8
  %24 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %25 = icmp eq %struct.iso9660* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %28 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %27, i32 0, i32 1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = call i32 @archive_set_error(%struct.TYPE_11__* %28, i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %31, i32* %2, align 4
  br label %315

32:                                               ; preds = %22
  %33 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %34 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %33, i32 0, i32 27
  store i64 0, i64* %34, align 8
  %35 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %36 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 8
  %37 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %38 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %37, i32 0, i32 26
  store i32* null, i32** %38, align 8
  %39 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %40 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @VDD_PRIMARY, align 4
  %43 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %44 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 8
  %46 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %47 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  %49 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %50 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %49, i32 0, i32 25
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 3
  store i32* null, i32** %51, align 8
  %52 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %53 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %52, i32 0, i32 25
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @VDD_JOLIET, align 4
  %56 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %57 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %56, i32 0, i32 25
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 8
  %59 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %60 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %59, i32 0, i32 25
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  %62 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %63 = call i32 @isofile_init_entry_list(%struct.iso9660* %62)
  %64 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %65 = call i32 @isofile_init_entry_data_file_list(%struct.iso9660* %64)
  %66 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %67 = call i32 @isofile_init_hardlinks(%struct.iso9660* %66)
  %68 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %69 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %68, i32 0, i32 24
  store i32* null, i32** %69, align 8
  %70 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %71 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = call i32 (...) @wb_buffmax()
  %73 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %74 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %73, i32 0, i32 23
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @WB_TO_TEMP, align 4
  %76 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %77 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %76, i32 0, i32 22
  store i32 %75, i32* %77, align 8
  %78 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %79 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %78, i32 0, i32 21
  store i64 0, i64* %79, align 8
  %80 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %81 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %80, i32 0, i32 20
  store i64 0, i64* %81, align 8
  %82 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %83 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %82, i32 0, i32 19
  store i64 0, i64* %83, align 8
  %84 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %85 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %84, i32 0, i32 18
  %86 = call i32 @archive_string_init(%struct.TYPE_18__* %85)
  %87 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %88 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %87, i32 0, i32 17
  %89 = call i32 @archive_string_init(%struct.TYPE_18__* %88)
  %90 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %91 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %90, i32 0, i32 16
  %92 = call i32 @archive_string_init(%struct.TYPE_18__* %91)
  %93 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %94 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %93, i32 0, i32 16
  %95 = call i32 @archive_strcpy(%struct.TYPE_18__* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %96 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %97 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %96, i32 0, i32 15
  %98 = call i32 @archive_string_init(%struct.TYPE_18__* %97)
  %99 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %100 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %99, i32 0, i32 14
  %101 = call i32 @archive_string_init(%struct.TYPE_18__* %100)
  %102 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %103 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %102, i32 0, i32 13
  %104 = call i32 @archive_string_init(%struct.TYPE_18__* %103)
  %105 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %106 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %105, i32 0, i32 13
  %107 = call i8* (...) @archive_version_string()
  %108 = call i32 @archive_strcpy(%struct.TYPE_18__* %106, i8* %107)
  %109 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %110 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %109, i32 0, i32 12
  %111 = call i32 @archive_string_init(%struct.TYPE_18__* %110)
  %112 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %113 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %112, i32 0, i32 11
  %114 = call i32 @archive_string_init(%struct.TYPE_18__* %113)
  %115 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %116 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %115, i32 0, i32 10
  %117 = call i32 @archive_string_init(%struct.TYPE_18__* %116)
  %118 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %119 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %118, i32 0, i32 9
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 6
  %121 = call i32 @archive_string_init(%struct.TYPE_18__* %120)
  %122 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %123 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %122, i32 0, i32 9
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 7
  store i32* null, i32** %124, align 8
  %125 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %126 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %125, i32 0, i32 9
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 6
  %128 = call i32 @archive_strcpy(%struct.TYPE_18__* %127, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %129 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %130 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %129, i32 0, i32 9
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 5
  %132 = call i32 @archive_string_init(%struct.TYPE_18__* %131)
  %133 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %134 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %133, i32 0, i32 9
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 4
  store i32* null, i32** %135, align 8
  %136 = load i32, i32* @BOOT_PLATFORM_X86, align 4
  %137 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %138 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %137, i32 0, i32 9
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 3
  store i32 %136, i32* %139, align 8
  %140 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %141 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %140, i32 0, i32 9
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 2
  %143 = call i32 @archive_string_init(%struct.TYPE_18__* %142)
  %144 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %145 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %144, i32 0, i32 9
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  store i64 0, i64* %146, align 8
  %147 = load i32, i32* @BOOT_LOAD_SIZE, align 4
  %148 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %149 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %148, i32 0, i32 9
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  %151 = load i32, i32* @OPT_ABSTRACT_FILE_DEFAULT, align 4
  %152 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %153 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %152, i32 0, i32 7
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 20
  store i32 %151, i32* %154, align 8
  %155 = load i32, i32* @OPT_APPLICATION_ID_DEFAULT, align 4
  %156 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %157 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %156, i32 0, i32 7
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 19
  store i32 %155, i32* %158, align 4
  %159 = load i32, i32* @OPT_ALLOW_VERNUM_DEFAULT, align 4
  %160 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %161 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %160, i32 0, i32 7
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 18
  store i32 %159, i32* %162, align 8
  %163 = load i32, i32* @OPT_BIBLIO_FILE_DEFAULT, align 4
  %164 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %165 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %164, i32 0, i32 7
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 17
  store i32 %163, i32* %166, align 4
  %167 = load i32, i32* @OPT_BOOT_DEFAULT, align 4
  %168 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %169 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %168, i32 0, i32 7
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 16
  store i32 %167, i32* %170, align 8
  %171 = load i32, i32* @OPT_BOOT_CATALOG_DEFAULT, align 4
  %172 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %173 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %172, i32 0, i32 7
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 15
  store i32 %171, i32* %174, align 4
  %175 = load i32, i32* @OPT_BOOT_INFO_TABLE_DEFAULT, align 4
  %176 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %177 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %176, i32 0, i32 7
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 14
  store i32 %175, i32* %178, align 8
  %179 = load i32, i32* @OPT_BOOT_LOAD_SEG_DEFAULT, align 4
  %180 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %181 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %180, i32 0, i32 7
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 13
  store i32 %179, i32* %182, align 4
  %183 = load i32, i32* @OPT_BOOT_LOAD_SIZE_DEFAULT, align 4
  %184 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %185 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %184, i32 0, i32 7
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 12
  store i32 %183, i32* %186, align 8
  %187 = load i32, i32* @OPT_BOOT_TYPE_DEFAULT, align 4
  %188 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %189 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %188, i32 0, i32 7
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 11
  store i32 %187, i32* %190, align 4
  %191 = load i32, i32* @OPT_COMPRESSION_LEVEL_DEFAULT, align 4
  %192 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %193 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %192, i32 0, i32 7
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 10
  store i32 %191, i32* %194, align 8
  %195 = load i32, i32* @OPT_COPYRIGHT_FILE_DEFAULT, align 4
  %196 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %197 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %196, i32 0, i32 7
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 9
  store i32 %195, i32* %198, align 4
  %199 = load i32, i32* @OPT_ISO_LEVEL_DEFAULT, align 4
  %200 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %201 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %200, i32 0, i32 7
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 8
  store i32 %199, i32* %202, align 8
  %203 = load i32, i32* @OPT_JOLIET_DEFAULT, align 4
  %204 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %205 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %204, i32 0, i32 7
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 7
  store i32 %203, i32* %206, align 4
  %207 = load i32, i32* @OPT_LIMIT_DEPTH_DEFAULT, align 4
  %208 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %209 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %208, i32 0, i32 7
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 6
  store i32 %207, i32* %210, align 8
  %211 = load i32, i32* @OPT_LIMIT_DIRS_DEFAULT, align 4
  %212 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %213 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %212, i32 0, i32 7
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 5
  store i32 %211, i32* %214, align 4
  %215 = load i32, i32* @OPT_PAD_DEFAULT, align 4
  %216 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %217 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %216, i32 0, i32 7
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 4
  store i32 %215, i32* %218, align 8
  %219 = load i32, i32* @OPT_PUBLISHER_DEFAULT, align 4
  %220 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %221 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %220, i32 0, i32 7
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 3
  store i32 %219, i32* %222, align 4
  %223 = load i32, i32* @OPT_RR_DEFAULT, align 4
  %224 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %225 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %224, i32 0, i32 7
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 2
  store i32 %223, i32* %226, align 8
  %227 = load i32, i32* @OPT_VOLUME_ID_DEFAULT, align 4
  %228 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %229 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %228, i32 0, i32 7
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 1
  store i32 %227, i32* %230, align 4
  %231 = load i32, i32* @OPT_ZISOFS_DEFAULT, align 4
  %232 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %233 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %232, i32 0, i32 7
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 0
  store i32 %231, i32* %234, align 8
  %235 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %236 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %237 = call %struct.TYPE_17__* @isoent_create_virtual_dir(%struct.archive_write* %235, %struct.iso9660* %236, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %238 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %239 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %238, i32 0, i32 5
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 0
  store %struct.TYPE_17__* %237, %struct.TYPE_17__** %240, align 8
  %241 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %242 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %241, i32 0, i32 5
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %243, align 8
  %245 = icmp eq %struct.TYPE_17__* %244, null
  br i1 %245, label %246, label %254

246:                                              ; preds = %32
  %247 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %248 = call i32 @free(%struct.iso9660* %247)
  %249 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %250 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %249, i32 0, i32 1
  %251 = load i32, i32* @ENOMEM, align 4
  %252 = call i32 @archive_set_error(%struct.TYPE_11__* %250, i32 %251, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %253 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %253, i32* %2, align 4
  br label %315

254:                                              ; preds = %32
  %255 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %256 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %255, i32 0, i32 5
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %257, align 8
  %259 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %260 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %259, i32 0, i32 5
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 0
  store %struct.TYPE_17__* %258, %struct.TYPE_17__** %263, align 8
  %264 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %265 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %264, i32 0, i32 5
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %266, align 8
  %268 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %269 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %268, i32 0, i32 6
  store %struct.TYPE_17__* %267, %struct.TYPE_17__** %269, align 8
  %270 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %271 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %270, i32 0, i32 4
  %272 = call i32 @archive_string_init(%struct.TYPE_18__* %271)
  %273 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %274 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %273, i32 0, i32 4
  %275 = call i32 @archive_string_ensure(%struct.TYPE_18__* %274, i32 1)
  %276 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %277 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %276, i32 0, i32 4
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 0
  %279 = load i64*, i64** %278, align 8
  %280 = getelementptr inbounds i64, i64* %279, i64 0
  store i64 0, i64* %280, align 8
  %281 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %282 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %281, i32 0, i32 3
  store i32* null, i32** %282, align 8
  %283 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %284 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %283, i32 0, i32 2
  store i32* null, i32** %284, align 8
  %285 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %286 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %287 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %286, i32 0, i32 8
  store %struct.iso9660* %285, %struct.iso9660** %287, align 8
  %288 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %289 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %288, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %289, align 8
  %290 = load i32, i32* @iso9660_options, align 4
  %291 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %292 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %291, i32 0, i32 7
  store i32 %290, i32* %292, align 8
  %293 = load i32, i32* @iso9660_write_header, align 4
  %294 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %295 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %294, i32 0, i32 6
  store i32 %293, i32* %295, align 4
  %296 = load i32, i32* @iso9660_write_data, align 4
  %297 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %298 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %297, i32 0, i32 5
  store i32 %296, i32* %298, align 8
  %299 = load i32, i32* @iso9660_finish_entry, align 4
  %300 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %301 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %300, i32 0, i32 4
  store i32 %299, i32* %301, align 4
  %302 = load i32, i32* @iso9660_close, align 4
  %303 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %304 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %303, i32 0, i32 3
  store i32 %302, i32* %304, align 8
  %305 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %306 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %305, i32 0, i32 2
  store i32 (%struct.archive_write*)* @iso9660_free, i32 (%struct.archive_write*)** %306, align 8
  %307 = load i32, i32* @ARCHIVE_FORMAT_ISO9660, align 4
  %308 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %309 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 1
  store i32 %307, i32* %310, align 8
  %311 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %312 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %313, align 8
  %314 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %314, i32* %2, align 4
  br label %315

315:                                              ; preds = %254, %246, %26
  %316 = load i32, i32* %2, align 4
  ret i32 %316
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local %struct.iso9660* @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @isofile_init_entry_list(%struct.iso9660*) #1

declare dso_local i32 @isofile_init_entry_data_file_list(%struct.iso9660*) #1

declare dso_local i32 @isofile_init_hardlinks(%struct.iso9660*) #1

declare dso_local i32 @wb_buffmax(...) #1

declare dso_local i32 @archive_string_init(%struct.TYPE_18__*) #1

declare dso_local i32 @archive_strcpy(%struct.TYPE_18__*, i8*) #1

declare dso_local i8* @archive_version_string(...) #1

declare dso_local %struct.TYPE_17__* @isoent_create_virtual_dir(%struct.archive_write*, %struct.iso9660*, i8*) #1

declare dso_local i32 @free(%struct.iso9660*) #1

declare dso_local i32 @archive_string_ensure(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @iso9660_free(%struct.archive_write*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
