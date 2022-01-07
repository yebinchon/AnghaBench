; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_iso9660_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_iso9660_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, %struct.iso9660* }
%struct.iso9660 = type { %struct.TYPE_6__, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i8 }
%struct.TYPE_4__ = type { i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"abstract-file\00", align 1
@ABSTRACT_FILE_SIZE = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"application-id\00", align 1
@APPLICATION_IDENTIFIER_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"allow-vernum\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"biblio-file\00", align 1
@BIBLIO_FILE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"boot-catalog\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"boot-info-table\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"boot-load-seg\00", align 1
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"Invalid value(over 0xffff) for option ``%s''\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"boot-load-size\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"boot-type\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"no-emulation\00", align 1
@OPT_BOOT_TYPE_NO_EMU = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@OPT_BOOT_TYPE_FD = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"hard-disk\00", align 1
@OPT_BOOT_TYPE_HARD_DISK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [18 x i8] c"compression-level\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"Option ``%s'' is not supported on this platform.\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"copyright-file\00", align 1
@COPYRIGHT_FILE_SIZE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [10 x i8] c"iso-level\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"joliet\00", align 1
@OPT_JOLIET_DISABLE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@OPT_JOLIET_ENABLE = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@OPT_JOLIET_LONGNAME = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [12 x i8] c"limit-depth\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"limit-dirs\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"publisher\00", align 1
@PUBLISHER_IDENTIFIER_SIZE = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [10 x i8] c"rockridge\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"Rockridge\00", align 1
@OPT_RR_DISABLED = common dso_local global i8* null, align 8
@OPT_RR_USEFUL = common dso_local global i8* null, align 8
@.str.27 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@OPT_RR_STRICT = common dso_local global i8* null, align 8
@.str.28 = private unnamed_addr constant [7 x i8] c"useful\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"volume-id\00", align 1
@VOLUME_IDENTIFIER_SIZE = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"zisofs\00", align 1
@OPT_ZISOFS_DISABLED = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [46 x i8] c"``zisofs'' is not supported on this platform.\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [32 x i8] c"Invalid value for option ``%s''\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@OPT_ZISOFS_DIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i8*, i8*)* @iso9660_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso9660_options(%struct.archive_write* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iso9660*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %14 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %13, i32 0, i32 1
  %15 = load %struct.iso9660*, %struct.iso9660** %14, align 8
  store %struct.iso9660* %15, %struct.iso9660** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %597 [
    i32 97, label %20
    i32 98, label %73
    i32 99, label %341
    i32 105, label %373
    i32 106, label %411
    i32 108, label %447
    i32 112, label %472
    i32 114, label %505
    i32 118, label %555
    i32 122, label %576
  ]

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %26 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %27 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %26, i32 0, i32 9
  %28 = load i32, i32* @ABSTRACT_FILE_SIZE, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @get_str_opt(%struct.archive_write* %25, i32* %27, i32 %28, i8* %29, i8* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @ARCHIVE_OK, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %37 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %606

40:                                               ; preds = %20
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %46 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %47 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %46, i32 0, i32 8
  %48 = load i32, i32* @APPLICATION_IDENTIFIER_SIZE, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @get_str_opt(%struct.archive_write* %45, i32* %47, i32 %48, i8* %49, i8* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @ARCHIVE_OK, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %57 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %4, align 4
  br label %606

60:                                               ; preds = %40
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i8*, i8** %7, align 8
  %66 = icmp ne i8* %65, null
  %67 = zext i1 %66 to i32
  %68 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %69 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 20
  store i32 %67, i32* %70, align 8
  %71 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %71, i32* %4, align 4
  br label %606

72:                                               ; preds = %60
  br label %597

73:                                               ; preds = %3
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %73
  %78 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %79 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %80 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %79, i32 0, i32 7
  %81 = load i32, i32* @BIBLIO_FILE_SIZE, align 4
  %82 = load i8*, i8** %6, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @get_str_opt(%struct.archive_write* %78, i32* %80, i32 %81, i8* %82, i8* %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @ARCHIVE_OK, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %90 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 8
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %4, align 4
  br label %606

93:                                               ; preds = %73
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %93
  %98 = load i8*, i8** %7, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %102 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 3
  store i32 0, i32* %103, align 4
  br label %113

104:                                              ; preds = %97
  %105 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %106 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  store i32 1, i32* %107, align 4
  %108 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %109 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 @archive_strcpy(i32* %110, i8* %111)
  br label %113

113:                                              ; preds = %104, %100
  %114 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %114, i32* %4, align 4
  br label %606

115:                                              ; preds = %93
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %115
  %120 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %121 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %122 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %121, i32 0, i32 6
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i8*, i8** %6, align 8
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 @get_str_opt(%struct.archive_write* %120, i32* %123, i32 1024, i8* %124, i8* %125)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @ARCHIVE_OK, align 4
  %129 = icmp eq i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %132 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 4
  store i32 %130, i32* %133, align 8
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %4, align 4
  br label %606

135:                                              ; preds = %115
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 @strcmp(i8* %136, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %135
  %140 = load i8*, i8** %7, align 8
  %141 = icmp ne i8* %140, null
  %142 = zext i1 %141 to i32
  %143 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %144 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 19
  store i32 %142, i32* %145, align 4
  %146 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %146, i32* %4, align 4
  br label %606

147:                                              ; preds = %135
  %148 = load i8*, i8** %6, align 8
  %149 = call i32 @strcmp(i8* %148, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %271

151:                                              ; preds = %147
  %152 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %153 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 5
  store i32 0, i32* %154, align 4
  %155 = load i8*, i8** %7, align 8
  %156 = icmp eq i8* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %599

158:                                              ; preds = %151
  store i32 0, i32* %11, align 4
  %159 = load i8*, i8** %7, align 8
  store i8* %159, i8** %9, align 8
  %160 = load i8*, i8** %9, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 0
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 48
  br i1 %164, label %165, label %180

165:                                              ; preds = %158
  %166 = load i8*, i8** %9, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 1
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 120
  br i1 %170, label %177, label %171

171:                                              ; preds = %165
  %172 = load i8*, i8** %9, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 88
  br i1 %176, label %177, label %180

177:                                              ; preds = %171, %165
  %178 = load i8*, i8** %9, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 2
  store i8* %179, i8** %9, align 8
  br label %180

180:                                              ; preds = %177, %171, %158
  br label %181

181:                                              ; preds = %257, %180
  %182 = load i8*, i8** %9, align 8
  %183 = load i8, i8* %182, align 1
  %184 = icmp ne i8 %183, 0
  br i1 %184, label %185, label %260

185:                                              ; preds = %181
  %186 = load i32, i32* %11, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load i32, i32* %11, align 4
  %190 = shl i32 %189, 4
  store i32 %190, i32* %11, align 4
  br label %191

191:                                              ; preds = %188, %185
  %192 = load i8*, i8** %9, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp sge i32 %194, 65
  br i1 %195, label %196, label %209

196:                                              ; preds = %191
  %197 = load i8*, i8** %9, align 8
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp sle i32 %199, 70
  br i1 %200, label %201, label %209

201:                                              ; preds = %196
  %202 = load i8*, i8** %9, align 8
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = sub nsw i32 %204, 65
  %206 = add nsw i32 %205, 10
  %207 = load i32, i32* %11, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %11, align 4
  br label %247

209:                                              ; preds = %196, %191
  %210 = load i8*, i8** %9, align 8
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp sge i32 %212, 97
  br i1 %213, label %214, label %227

214:                                              ; preds = %209
  %215 = load i8*, i8** %9, align 8
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp sle i32 %217, 102
  br i1 %218, label %219, label %227

219:                                              ; preds = %214
  %220 = load i8*, i8** %9, align 8
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = sub nsw i32 %222, 97
  %224 = add nsw i32 %223, 10
  %225 = load i32, i32* %11, align 4
  %226 = add nsw i32 %225, %224
  store i32 %226, i32* %11, align 4
  br label %246

227:                                              ; preds = %214, %209
  %228 = load i8*, i8** %9, align 8
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp sge i32 %230, 48
  br i1 %231, label %232, label %244

232:                                              ; preds = %227
  %233 = load i8*, i8** %9, align 8
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp sle i32 %235, 57
  br i1 %236, label %237, label %244

237:                                              ; preds = %232
  %238 = load i8*, i8** %9, align 8
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = sub nsw i32 %240, 48
  %242 = load i32, i32* %11, align 4
  %243 = add nsw i32 %242, %241
  store i32 %243, i32* %11, align 4
  br label %245

244:                                              ; preds = %232, %227
  br label %599

245:                                              ; preds = %237
  br label %246

246:                                              ; preds = %245, %219
  br label %247

247:                                              ; preds = %246, %201
  %248 = load i32, i32* %11, align 4
  %249 = icmp sgt i32 %248, 65535
  br i1 %249, label %250, label %257

250:                                              ; preds = %247
  %251 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %252 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %251, i32 0, i32 0
  %253 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %254 = load i8*, i8** %6, align 8
  %255 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %252, i32 %253, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i8* %254)
  %256 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %256, i32* %4, align 4
  br label %606

257:                                              ; preds = %247
  %258 = load i8*, i8** %9, align 8
  %259 = getelementptr inbounds i8, i8* %258, i32 1
  store i8* %259, i8** %9, align 8
  br label %181

260:                                              ; preds = %181
  %261 = load i32, i32* %11, align 4
  %262 = sext i32 %261 to i64
  %263 = inttoptr i64 %262 to i8*
  %264 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %265 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %264, i32 0, i32 6
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 1
  store i8* %263, i8** %266, align 8
  %267 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %268 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 5
  store i32 1, i32* %269, align 4
  %270 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %270, i32* %4, align 4
  br label %606

271:                                              ; preds = %147
  %272 = load i8*, i8** %6, align 8
  %273 = call i32 @strcmp(i8* %272, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %300

275:                                              ; preds = %271
  store i32 0, i32* %12, align 4
  %276 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %277 = load i8*, i8** %6, align 8
  %278 = load i8*, i8** %7, align 8
  %279 = call i32 @get_num_opt(%struct.archive_write* %276, i32* %12, i32 65535, i32 1, i8* %277, i8* %278)
  store i32 %279, i32* %10, align 4
  %280 = load i32, i32* %10, align 4
  %281 = load i32, i32* @ARCHIVE_OK, align 4
  %282 = icmp eq i32 %280, %281
  %283 = zext i1 %282 to i32
  %284 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %285 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 6
  store i32 %283, i32* %286, align 8
  %287 = load i32, i32* %10, align 4
  %288 = load i32, i32* @ARCHIVE_OK, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %290, label %292

290:                                              ; preds = %275
  %291 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %291, i32* %4, align 4
  br label %606

292:                                              ; preds = %275
  %293 = load i32, i32* %12, align 4
  %294 = sext i32 %293 to i64
  %295 = inttoptr i64 %294 to i8*
  %296 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %297 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %296, i32 0, i32 6
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 0
  store i8* %295, i8** %298, align 8
  %299 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %299, i32* %4, align 4
  br label %606

300:                                              ; preds = %271
  %301 = load i8*, i8** %6, align 8
  %302 = call i32 @strcmp(i8* %301, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %340

304:                                              ; preds = %300
  %305 = load i8*, i8** %7, align 8
  %306 = icmp eq i8* %305, null
  br i1 %306, label %307, label %308

307:                                              ; preds = %304
  br label %599

308:                                              ; preds = %304
  %309 = load i8*, i8** %7, align 8
  %310 = call i32 @strcmp(i8* %309, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %308
  %313 = load i32, i32* @OPT_BOOT_TYPE_NO_EMU, align 4
  %314 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %315 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 18
  store i32 %313, i32* %316, align 8
  br label %338

317:                                              ; preds = %308
  %318 = load i8*, i8** %7, align 8
  %319 = call i32 @strcmp(i8* %318, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %326

321:                                              ; preds = %317
  %322 = load i32, i32* @OPT_BOOT_TYPE_FD, align 4
  %323 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %324 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 18
  store i32 %322, i32* %325, align 8
  br label %337

326:                                              ; preds = %317
  %327 = load i8*, i8** %7, align 8
  %328 = call i32 @strcmp(i8* %327, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %335

330:                                              ; preds = %326
  %331 = load i32, i32* @OPT_BOOT_TYPE_HARD_DISK, align 4
  %332 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %333 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 18
  store i32 %331, i32* %334, align 8
  br label %336

335:                                              ; preds = %326
  br label %599

336:                                              ; preds = %330
  br label %337

337:                                              ; preds = %336, %321
  br label %338

338:                                              ; preds = %337, %312
  %339 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %339, i32* %4, align 4
  br label %606

340:                                              ; preds = %300
  br label %597

341:                                              ; preds = %3
  %342 = load i8*, i8** %6, align 8
  %343 = call i32 @strcmp(i8* %342, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %352

345:                                              ; preds = %341
  %346 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %347 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %346, i32 0, i32 0
  %348 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %349 = load i8*, i8** %6, align 8
  %350 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %347, i32 %348, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0), i8* %349)
  %351 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %351, i32* %4, align 4
  br label %606

352:                                              ; preds = %341
  %353 = load i8*, i8** %6, align 8
  %354 = call i32 @strcmp(i8* %353, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %372

356:                                              ; preds = %352
  %357 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %358 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %359 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %358, i32 0, i32 4
  %360 = load i32, i32* @COPYRIGHT_FILE_SIZE, align 4
  %361 = load i8*, i8** %6, align 8
  %362 = load i8*, i8** %7, align 8
  %363 = call i32 @get_str_opt(%struct.archive_write* %357, i32* %359, i32 %360, i8* %361, i8* %362)
  store i32 %363, i32* %10, align 4
  %364 = load i32, i32* %10, align 4
  %365 = load i32, i32* @ARCHIVE_OK, align 4
  %366 = icmp eq i32 %364, %365
  %367 = zext i1 %366 to i32
  %368 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %369 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 8
  store i32 %367, i32* %370, align 8
  %371 = load i32, i32* %10, align 4
  store i32 %371, i32* %4, align 4
  br label %606

372:                                              ; preds = %352
  br label %597

373:                                              ; preds = %3
  %374 = load i8*, i8** %6, align 8
  %375 = call i32 @strcmp(i8* %374, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %410

377:                                              ; preds = %373
  %378 = load i8*, i8** %7, align 8
  %379 = icmp ne i8* %378, null
  br i1 %379, label %380, label %409

380:                                              ; preds = %377
  %381 = load i8*, i8** %7, align 8
  %382 = getelementptr inbounds i8, i8* %381, i64 1
  %383 = load i8, i8* %382, align 1
  %384 = sext i8 %383 to i32
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %409

386:                                              ; preds = %380
  %387 = load i8*, i8** %7, align 8
  %388 = getelementptr inbounds i8, i8* %387, i64 0
  %389 = load i8, i8* %388, align 1
  %390 = sext i8 %389 to i32
  %391 = icmp sge i32 %390, 49
  br i1 %391, label %392, label %409

392:                                              ; preds = %386
  %393 = load i8*, i8** %7, align 8
  %394 = getelementptr inbounds i8, i8* %393, i64 0
  %395 = load i8, i8* %394, align 1
  %396 = sext i8 %395 to i32
  %397 = icmp sle i32 %396, 52
  br i1 %397, label %398, label %409

398:                                              ; preds = %392
  %399 = load i8*, i8** %7, align 8
  %400 = getelementptr inbounds i8, i8* %399, i64 0
  %401 = load i8, i8* %400, align 1
  %402 = sext i8 %401 to i32
  %403 = sub nsw i32 %402, 48
  %404 = trunc i32 %403 to i8
  %405 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %406 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i32 0, i32 9
  store i8 %404, i8* %407, align 4
  %408 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %408, i32* %4, align 4
  br label %606

409:                                              ; preds = %392, %386, %380, %377
  br label %599

410:                                              ; preds = %373
  br label %597

411:                                              ; preds = %3
  %412 = load i8*, i8** %6, align 8
  %413 = call i32 @strcmp(i8* %412, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %446

415:                                              ; preds = %411
  %416 = load i8*, i8** %7, align 8
  %417 = icmp eq i8* %416, null
  br i1 %417, label %418, label %423

418:                                              ; preds = %415
  %419 = load i32, i32* @OPT_JOLIET_DISABLE, align 4
  %420 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %421 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %421, i32 0, i32 17
  store i32 %419, i32* %422, align 4
  br label %444

423:                                              ; preds = %415
  %424 = load i8*, i8** %7, align 8
  %425 = call i32 @strcmp(i8* %424, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %432

427:                                              ; preds = %423
  %428 = load i32, i32* @OPT_JOLIET_ENABLE, align 4
  %429 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %430 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i32 0, i32 17
  store i32 %428, i32* %431, align 4
  br label %443

432:                                              ; preds = %423
  %433 = load i8*, i8** %7, align 8
  %434 = call i32 @strcmp(i8* %433, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %441

436:                                              ; preds = %432
  %437 = load i32, i32* @OPT_JOLIET_LONGNAME, align 4
  %438 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %439 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i32 0, i32 17
  store i32 %437, i32* %440, align 4
  br label %442

441:                                              ; preds = %432
  br label %599

442:                                              ; preds = %436
  br label %443

443:                                              ; preds = %442, %427
  br label %444

444:                                              ; preds = %443, %418
  %445 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %445, i32* %4, align 4
  br label %606

446:                                              ; preds = %411
  br label %597

447:                                              ; preds = %3
  %448 = load i8*, i8** %6, align 8
  %449 = call i32 @strcmp(i8* %448, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %451, label %459

451:                                              ; preds = %447
  %452 = load i8*, i8** %7, align 8
  %453 = icmp ne i8* %452, null
  %454 = zext i1 %453 to i32
  %455 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %456 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %455, i32 0, i32 0
  %457 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %456, i32 0, i32 16
  store i32 %454, i32* %457, align 8
  %458 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %458, i32* %4, align 4
  br label %606

459:                                              ; preds = %447
  %460 = load i8*, i8** %6, align 8
  %461 = call i32 @strcmp(i8* %460, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %463, label %471

463:                                              ; preds = %459
  %464 = load i8*, i8** %7, align 8
  %465 = icmp ne i8* %464, null
  %466 = zext i1 %465 to i32
  %467 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %468 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %468, i32 0, i32 15
  store i32 %466, i32* %469, align 4
  %470 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %470, i32* %4, align 4
  br label %606

471:                                              ; preds = %459
  br label %597

472:                                              ; preds = %3
  %473 = load i8*, i8** %6, align 8
  %474 = call i32 @strcmp(i8* %473, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %484

476:                                              ; preds = %472
  %477 = load i8*, i8** %7, align 8
  %478 = icmp ne i8* %477, null
  %479 = zext i1 %478 to i32
  %480 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %481 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %481, i32 0, i32 14
  store i32 %479, i32* %482, align 8
  %483 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %483, i32* %4, align 4
  br label %606

484:                                              ; preds = %472
  %485 = load i8*, i8** %6, align 8
  %486 = call i32 @strcmp(i8* %485, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %504

488:                                              ; preds = %484
  %489 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %490 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %491 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %490, i32 0, i32 2
  %492 = load i32, i32* @PUBLISHER_IDENTIFIER_SIZE, align 4
  %493 = load i8*, i8** %6, align 8
  %494 = load i8*, i8** %7, align 8
  %495 = call i32 @get_str_opt(%struct.archive_write* %489, i32* %491, i32 %492, i8* %493, i8* %494)
  store i32 %495, i32* %10, align 4
  %496 = load i32, i32* %10, align 4
  %497 = load i32, i32* @ARCHIVE_OK, align 4
  %498 = icmp eq i32 %496, %497
  %499 = zext i1 %498 to i32
  %500 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %501 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %500, i32 0, i32 0
  %502 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %501, i32 0, i32 10
  store i32 %499, i32* %502, align 8
  %503 = load i32, i32* %10, align 4
  store i32 %503, i32* %4, align 4
  br label %606

504:                                              ; preds = %484
  br label %597

505:                                              ; preds = %3
  %506 = load i8*, i8** %6, align 8
  %507 = call i32 @strcmp(i8* %506, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0))
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %513, label %509

509:                                              ; preds = %505
  %510 = load i8*, i8** %6, align 8
  %511 = call i32 @strcmp(i8* %510, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %554

513:                                              ; preds = %509, %505
  %514 = load i8*, i8** %7, align 8
  %515 = icmp eq i8* %514, null
  br i1 %515, label %516, label %521

516:                                              ; preds = %513
  %517 = load i8*, i8** @OPT_RR_DISABLED, align 8
  %518 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %519 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %518, i32 0, i32 0
  %520 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %519, i32 0, i32 13
  store i8* %517, i8** %520, align 8
  br label %552

521:                                              ; preds = %513
  %522 = load i8*, i8** %7, align 8
  %523 = call i32 @strcmp(i8* %522, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %530

525:                                              ; preds = %521
  %526 = load i8*, i8** @OPT_RR_USEFUL, align 8
  %527 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %528 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %527, i32 0, i32 0
  %529 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %528, i32 0, i32 13
  store i8* %526, i8** %529, align 8
  br label %551

530:                                              ; preds = %521
  %531 = load i8*, i8** %7, align 8
  %532 = call i32 @strcmp(i8* %531, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %539

534:                                              ; preds = %530
  %535 = load i8*, i8** @OPT_RR_STRICT, align 8
  %536 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %537 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %536, i32 0, i32 0
  %538 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %537, i32 0, i32 13
  store i8* %535, i8** %538, align 8
  br label %550

539:                                              ; preds = %530
  %540 = load i8*, i8** %7, align 8
  %541 = call i32 @strcmp(i8* %540, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0))
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %543, label %548

543:                                              ; preds = %539
  %544 = load i8*, i8** @OPT_RR_USEFUL, align 8
  %545 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %546 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %545, i32 0, i32 0
  %547 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %546, i32 0, i32 13
  store i8* %544, i8** %547, align 8
  br label %549

548:                                              ; preds = %539
  br label %599

549:                                              ; preds = %543
  br label %550

550:                                              ; preds = %549, %534
  br label %551

551:                                              ; preds = %550, %525
  br label %552

552:                                              ; preds = %551, %516
  %553 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %553, i32* %4, align 4
  br label %606

554:                                              ; preds = %509
  br label %597

555:                                              ; preds = %3
  %556 = load i8*, i8** %6, align 8
  %557 = call i32 @strcmp(i8* %556, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0))
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %559, label %575

559:                                              ; preds = %555
  %560 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %561 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %562 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %561, i32 0, i32 1
  %563 = load i32, i32* @VOLUME_IDENTIFIER_SIZE, align 4
  %564 = load i8*, i8** %6, align 8
  %565 = load i8*, i8** %7, align 8
  %566 = call i32 @get_str_opt(%struct.archive_write* %560, i32* %562, i32 %563, i8* %564, i8* %565)
  store i32 %566, i32* %10, align 4
  %567 = load i32, i32* %10, align 4
  %568 = load i32, i32* @ARCHIVE_OK, align 4
  %569 = icmp eq i32 %567, %568
  %570 = zext i1 %569 to i32
  %571 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %572 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %571, i32 0, i32 0
  %573 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %572, i32 0, i32 11
  store i32 %570, i32* %573, align 4
  %574 = load i32, i32* %10, align 4
  store i32 %574, i32* %4, align 4
  br label %606

575:                                              ; preds = %555
  br label %597

576:                                              ; preds = %3
  %577 = load i8*, i8** %6, align 8
  %578 = call i32 @strcmp(i8* %577, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0))
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %580, label %596

580:                                              ; preds = %576
  %581 = load i8*, i8** %7, align 8
  %582 = icmp eq i8* %581, null
  br i1 %582, label %583, label %588

583:                                              ; preds = %580
  %584 = load i32, i32* @OPT_ZISOFS_DISABLED, align 4
  %585 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %586 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %585, i32 0, i32 0
  %587 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %586, i32 0, i32 12
  store i32 %584, i32* %587, align 8
  br label %594

588:                                              ; preds = %580
  %589 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %590 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %589, i32 0, i32 0
  %591 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %592 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %590, i32 %591, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.31, i64 0, i64 0))
  %593 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %593, i32* %4, align 4
  br label %606

594:                                              ; preds = %583
  %595 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %595, i32* %4, align 4
  br label %606

596:                                              ; preds = %576
  br label %597

597:                                              ; preds = %3, %596, %575, %554, %504, %471, %446, %410, %372, %340, %72
  %598 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %598, i32* %4, align 4
  br label %606

599:                                              ; preds = %548, %441, %409, %335, %307, %244, %157
  %600 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %601 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %600, i32 0, i32 0
  %602 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %603 = load i8*, i8** %6, align 8
  %604 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %601, i32 %602, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i64 0, i64 0), i8* %603)
  %605 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %605, i32* %4, align 4
  br label %606

606:                                              ; preds = %599, %597, %594, %588, %559, %552, %488, %476, %463, %451, %444, %398, %356, %345, %338, %292, %290, %260, %250, %139, %119, %113, %77, %64, %44, %24
  %607 = load i32, i32* %4, align 4
  ret i32 %607
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @get_str_opt(%struct.archive_write*, i32*, i32, i8*, i8*) #1

declare dso_local i32 @archive_strcpy(i32*, i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i32 @get_num_opt(%struct.archive_write*, i32*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
