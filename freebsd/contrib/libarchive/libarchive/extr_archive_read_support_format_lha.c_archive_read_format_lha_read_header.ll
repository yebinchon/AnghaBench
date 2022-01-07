; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_archive_read_format_lha_read_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_archive_read_format_lha_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.archive_entry = type { i32 }
%struct.archive_string = type { i32, i32 }
%struct.lha = type { i32, i32, i8, i8*, i32, i32, i64, i32, i32, i32, i64, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.archive_string, %struct.archive_string, i64, i64, i32*, %struct.archive_string, %struct.archive_string, i32*, i64, i64, i64, i64 }

@ARCHIVE_FORMAT_LHA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lha\00", align 1
@H_SIZE = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Bad LHa file\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@H_LEVEL_OFFSET = common dso_local global i64 0, align 8
@H_METHOD_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"lhd\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"lh0\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"lz4\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Unsupported LHa header level %d\00", align 1
@AE_IFMT = common dso_local global i32 0, align 4
@AE_IFLNK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Unknown symlink-name\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@AE_IFDIR = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@UNIX_MODE_IS_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"Can't allocate memory for Pathname\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"Pathname cannot be converted from %s to current locale.\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Can't allocate memory for Linkname\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"Linkname cannot be converted from %s to current locale.\00", align 1
@BIRTHTIME_IS_SET = common dso_local global i32 0, align 4
@ATIME_IS_SET = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"Invalid LHa entry size\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"lha -%c%c%c-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*)* @archive_read_format_lha_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_lha_read_header(%struct.archive_read* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.archive_string, align 4
  %7 = alloca %struct.archive_string, align 4
  %8 = alloca %struct.lha*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %12 = call i32 (...) @lha_crc16_init()
  %13 = load i32, i32* @ARCHIVE_FORMAT_LHA, align 4
  %14 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %15 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 8
  %17 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %18 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %24 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %28 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.lha*
  store %struct.lha* %32, %struct.lha** %8, align 8
  %33 = load %struct.lha*, %struct.lha** %8, align 8
  %34 = getelementptr inbounds %struct.lha, %struct.lha* %33, i32 0, i32 32
  store i64 0, i64* %34, align 8
  %35 = load %struct.lha*, %struct.lha** %8, align 8
  %36 = getelementptr inbounds %struct.lha, %struct.lha* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.lha*, %struct.lha** %8, align 8
  %38 = getelementptr inbounds %struct.lha, %struct.lha* %37, i32 0, i32 31
  store i64 0, i64* %38, align 8
  %39 = load %struct.lha*, %struct.lha** %8, align 8
  %40 = getelementptr inbounds %struct.lha, %struct.lha* %39, i32 0, i32 30
  store i64 0, i64* %40, align 8
  %41 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %42 = load i32, i32* @H_SIZE, align 4
  %43 = call i8* @__archive_read_ahead(%struct.archive_read* %41, i32 %42, i32* null)
  store i8* %43, i8** %9, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %26
  %46 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %47 = call i8* @__archive_read_ahead(%struct.archive_read* %46, i32 1, i32* null)
  store i8* %47, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %10, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50, %45
  %57 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %57, i32* %3, align 4
  br label %611

58:                                               ; preds = %50
  %59 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %60 = call i32 @truncated_error(%struct.archive_read* %59)
  store i32 %60, i32* %3, align 4
  br label %611

61:                                               ; preds = %26
  %62 = load i8*, i8** %9, align 8
  store i8* %62, i8** %10, align 8
  %63 = load %struct.lha*, %struct.lha** %8, align 8
  %64 = getelementptr inbounds %struct.lha, %struct.lha* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %96

67:                                               ; preds = %61
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 77
  br i1 %72, label %73, label %96

73:                                               ; preds = %67
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 90
  br i1 %78, label %79, label %96

79:                                               ; preds = %73
  %80 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %81 = call i32 @lha_skip_sfx(%struct.archive_read* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @ARCHIVE_WARN, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %3, align 4
  br label %611

87:                                               ; preds = %79
  %88 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %89 = call i8* @__archive_read_ahead(%struct.archive_read* %88, i32 1, i32* null)
  store i8* %89, i8** %9, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %93 = call i32 @truncated_error(%struct.archive_read* %92)
  store i32 %93, i32* %3, align 4
  br label %611

94:                                               ; preds = %87
  %95 = load i8*, i8** %9, align 8
  store i8* %95, i8** %10, align 8
  br label %96

96:                                               ; preds = %94, %73, %67, %61
  %97 = load i8*, i8** %10, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %103, i32* %3, align 4
  br label %611

104:                                              ; preds = %96
  %105 = load i8*, i8** %9, align 8
  %106 = call i64 @lha_check_header_format(i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %110 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %109, i32 0, i32 0
  %111 = load i64, i64* @ARCHIVE_ERRNO_FILE_FORMAT, align 8
  %112 = call i32 (%struct.TYPE_4__*, i64, i8*, ...) @archive_set_error(%struct.TYPE_4__* %110, i64 %111, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %113, i32* %3, align 4
  br label %611

114:                                              ; preds = %104
  %115 = load %struct.lha*, %struct.lha** %8, align 8
  %116 = getelementptr inbounds %struct.lha, %struct.lha* %115, i32 0, i32 1
  store i32 1, i32* %116, align 4
  %117 = load %struct.lha*, %struct.lha** %8, align 8
  %118 = getelementptr inbounds %struct.lha, %struct.lha* %117, i32 0, i32 29
  store i64 0, i64* %118, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = load i64, i64* @H_LEVEL_OFFSET, align 8
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = load %struct.lha*, %struct.lha** %8, align 8
  %124 = getelementptr inbounds %struct.lha, %struct.lha* %123, i32 0, i32 2
  store i8 %122, i8* %124, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = load i32, i32* @H_METHOD_OFFSET, align 4
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = load %struct.lha*, %struct.lha** %8, align 8
  %132 = getelementptr inbounds %struct.lha, %struct.lha* %131, i32 0, i32 3
  %133 = load i8*, i8** %132, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 0
  store i8 %130, i8* %134, align 1
  %135 = load i8*, i8** %9, align 8
  %136 = load i32, i32* @H_METHOD_OFFSET, align 4
  %137 = add nsw i32 %136, 2
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %135, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = load %struct.lha*, %struct.lha** %8, align 8
  %142 = getelementptr inbounds %struct.lha, %struct.lha* %141, i32 0, i32 3
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  store i8 %140, i8* %144, align 1
  %145 = load i8*, i8** %9, align 8
  %146 = load i32, i32* @H_METHOD_OFFSET, align 4
  %147 = add nsw i32 %146, 3
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %145, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = load %struct.lha*, %struct.lha** %8, align 8
  %152 = getelementptr inbounds %struct.lha, %struct.lha* %151, i32 0, i32 3
  %153 = load i8*, i8** %152, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 2
  store i8 %150, i8* %154, align 1
  %155 = load %struct.lha*, %struct.lha** %8, align 8
  %156 = getelementptr inbounds %struct.lha, %struct.lha* %155, i32 0, i32 3
  %157 = load i8*, i8** %156, align 8
  %158 = call i64 @memcmp(i8* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %114
  %161 = load %struct.lha*, %struct.lha** %8, align 8
  %162 = getelementptr inbounds %struct.lha, %struct.lha* %161, i32 0, i32 4
  store i32 1, i32* %162, align 8
  br label %166

163:                                              ; preds = %114
  %164 = load %struct.lha*, %struct.lha** %8, align 8
  %165 = getelementptr inbounds %struct.lha, %struct.lha* %164, i32 0, i32 4
  store i32 0, i32* %165, align 8
  br label %166

166:                                              ; preds = %163, %160
  %167 = load %struct.lha*, %struct.lha** %8, align 8
  %168 = getelementptr inbounds %struct.lha, %struct.lha* %167, i32 0, i32 3
  %169 = load i8*, i8** %168, align 8
  %170 = call i64 @memcmp(i8* %169, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %166
  %173 = load %struct.lha*, %struct.lha** %8, align 8
  %174 = getelementptr inbounds %struct.lha, %struct.lha* %173, i32 0, i32 3
  %175 = load i8*, i8** %174, align 8
  %176 = call i64 @memcmp(i8* %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %172, %166
  %179 = load %struct.lha*, %struct.lha** %8, align 8
  %180 = getelementptr inbounds %struct.lha, %struct.lha* %179, i32 0, i32 5
  store i32 0, i32* %180, align 4
  br label %184

181:                                              ; preds = %172
  %182 = load %struct.lha*, %struct.lha** %8, align 8
  %183 = getelementptr inbounds %struct.lha, %struct.lha* %182, i32 0, i32 5
  store i32 1, i32* %183, align 4
  br label %184

184:                                              ; preds = %181, %178
  %185 = load %struct.lha*, %struct.lha** %8, align 8
  %186 = getelementptr inbounds %struct.lha, %struct.lha* %185, i32 0, i32 6
  store i64 0, i64* %186, align 8
  %187 = load %struct.lha*, %struct.lha** %8, align 8
  %188 = getelementptr inbounds %struct.lha, %struct.lha* %187, i32 0, i32 14
  store i64 0, i64* %188, align 8
  %189 = load %struct.lha*, %struct.lha** %8, align 8
  %190 = getelementptr inbounds %struct.lha, %struct.lha* %189, i32 0, i32 7
  store i32 0, i32* %190, align 8
  %191 = load %struct.lha*, %struct.lha** %8, align 8
  %192 = getelementptr inbounds %struct.lha, %struct.lha* %191, i32 0, i32 20
  store i64 0, i64* %192, align 8
  %193 = load %struct.lha*, %struct.lha** %8, align 8
  %194 = getelementptr inbounds %struct.lha, %struct.lha* %193, i32 0, i32 19
  store i64 0, i64* %194, align 8
  %195 = load %struct.lha*, %struct.lha** %8, align 8
  %196 = getelementptr inbounds %struct.lha, %struct.lha* %195, i32 0, i32 18
  store i64 0, i64* %196, align 8
  %197 = load %struct.lha*, %struct.lha** %8, align 8
  %198 = getelementptr inbounds %struct.lha, %struct.lha* %197, i32 0, i32 17
  store i64 0, i64* %198, align 8
  %199 = load %struct.lha*, %struct.lha** %8, align 8
  %200 = getelementptr inbounds %struct.lha, %struct.lha* %199, i32 0, i32 16
  store i64 0, i64* %200, align 8
  %201 = load %struct.lha*, %struct.lha** %8, align 8
  %202 = getelementptr inbounds %struct.lha, %struct.lha* %201, i32 0, i32 15
  store i64 0, i64* %202, align 8
  %203 = load %struct.lha*, %struct.lha** %8, align 8
  %204 = getelementptr inbounds %struct.lha, %struct.lha* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  %207 = zext i1 %206 to i64
  %208 = select i1 %206, i32 511, i32 438
  %209 = load %struct.lha*, %struct.lha** %8, align 8
  %210 = getelementptr inbounds %struct.lha, %struct.lha* %209, i32 0, i32 8
  store i32 %208, i32* %210, align 4
  %211 = load %struct.lha*, %struct.lha** %8, align 8
  %212 = getelementptr inbounds %struct.lha, %struct.lha* %211, i32 0, i32 24
  store i64 0, i64* %212, align 8
  %213 = load %struct.lha*, %struct.lha** %8, align 8
  %214 = getelementptr inbounds %struct.lha, %struct.lha* %213, i32 0, i32 23
  store i64 0, i64* %214, align 8
  %215 = load %struct.lha*, %struct.lha** %8, align 8
  %216 = getelementptr inbounds %struct.lha, %struct.lha* %215, i32 0, i32 26
  %217 = call i32 @archive_string_empty(%struct.archive_string* %216)
  %218 = load %struct.lha*, %struct.lha** %8, align 8
  %219 = getelementptr inbounds %struct.lha, %struct.lha* %218, i32 0, i32 27
  %220 = call i32 @archive_string_empty(%struct.archive_string* %219)
  %221 = load %struct.lha*, %struct.lha** %8, align 8
  %222 = getelementptr inbounds %struct.lha, %struct.lha* %221, i32 0, i32 9
  store i32 0, i32* %222, align 8
  %223 = load %struct.lha*, %struct.lha** %8, align 8
  %224 = getelementptr inbounds %struct.lha, %struct.lha* %223, i32 0, i32 28
  %225 = load i32*, i32** %224, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %227, label %233

227:                                              ; preds = %184
  %228 = load %struct.lha*, %struct.lha** %8, align 8
  %229 = getelementptr inbounds %struct.lha, %struct.lha* %228, i32 0, i32 28
  %230 = load i32*, i32** %229, align 8
  %231 = load %struct.lha*, %struct.lha** %8, align 8
  %232 = getelementptr inbounds %struct.lha, %struct.lha* %231, i32 0, i32 25
  store i32* %230, i32** %232, align 8
  br label %236

233:                                              ; preds = %184
  %234 = load %struct.lha*, %struct.lha** %8, align 8
  %235 = getelementptr inbounds %struct.lha, %struct.lha* %234, i32 0, i32 25
  store i32* null, i32** %235, align 8
  br label %236

236:                                              ; preds = %233, %227
  %237 = load i8*, i8** %9, align 8
  %238 = load i64, i64* @H_LEVEL_OFFSET, align 8
  %239 = getelementptr inbounds i8, i8* %237, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  switch i32 %241, label %258 [
    i32 0, label %242
    i32 1, label %246
    i32 2, label %250
    i32 3, label %254
  ]

242:                                              ; preds = %236
  %243 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %244 = load %struct.lha*, %struct.lha** %8, align 8
  %245 = call i32 @lha_read_file_header_0(%struct.archive_read* %243, %struct.lha* %244)
  store i32 %245, i32* %11, align 4
  br label %269

246:                                              ; preds = %236
  %247 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %248 = load %struct.lha*, %struct.lha** %8, align 8
  %249 = call i32 @lha_read_file_header_1(%struct.archive_read* %247, %struct.lha* %248)
  store i32 %249, i32* %11, align 4
  br label %269

250:                                              ; preds = %236
  %251 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %252 = load %struct.lha*, %struct.lha** %8, align 8
  %253 = call i32 @lha_read_file_header_2(%struct.archive_read* %251, %struct.lha* %252)
  store i32 %253, i32* %11, align 4
  br label %269

254:                                              ; preds = %236
  %255 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %256 = load %struct.lha*, %struct.lha** %8, align 8
  %257 = call i32 @lha_read_file_header_3(%struct.archive_read* %255, %struct.lha* %256)
  store i32 %257, i32* %11, align 4
  br label %269

258:                                              ; preds = %236
  %259 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %260 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %259, i32 0, i32 0
  %261 = load i64, i64* @ARCHIVE_ERRNO_FILE_FORMAT, align 8
  %262 = load i8*, i8** %9, align 8
  %263 = load i64, i64* @H_LEVEL_OFFSET, align 8
  %264 = getelementptr inbounds i8, i8* %262, i64 %263
  %265 = load i8, i8* %264, align 1
  %266 = zext i8 %265 to i32
  %267 = call i32 (%struct.TYPE_4__*, i64, i8*, ...) @archive_set_error(%struct.TYPE_4__* %260, i64 %261, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %266)
  %268 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %268, i32* %11, align 4
  br label %269

269:                                              ; preds = %258, %254, %250, %246, %242
  %270 = load i32, i32* %11, align 4
  %271 = load i32, i32* @ARCHIVE_WARN, align 4
  %272 = icmp slt i32 %270, %271
  br i1 %272, label %273, label %275

273:                                              ; preds = %269
  %274 = load i32, i32* %11, align 4
  store i32 %274, i32* %3, align 4
  br label %611

275:                                              ; preds = %269
  %276 = load %struct.lha*, %struct.lha** %8, align 8
  %277 = getelementptr inbounds %struct.lha, %struct.lha* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 8
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %288, label %280

280:                                              ; preds = %275
  %281 = load %struct.lha*, %struct.lha** %8, align 8
  %282 = getelementptr inbounds %struct.lha, %struct.lha* %281, i32 0, i32 27
  %283 = call i64 @archive_strlen(%struct.archive_string* %282)
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %280
  %286 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %287 = call i32 @truncated_error(%struct.archive_read* %286)
  store i32 %287, i32* %3, align 4
  br label %611

288:                                              ; preds = %280, %275
  %289 = load %struct.lha*, %struct.lha** %8, align 8
  %290 = getelementptr inbounds %struct.lha, %struct.lha* %289, i32 0, i32 26
  %291 = load %struct.lha*, %struct.lha** %8, align 8
  %292 = getelementptr inbounds %struct.lha, %struct.lha* %291, i32 0, i32 27
  %293 = call i32 @archive_string_concat(%struct.archive_string* %290, %struct.archive_string* %292)
  %294 = call i32 @archive_string_init(%struct.archive_string* %7)
  %295 = call i32 @archive_string_init(%struct.archive_string* %6)
  %296 = load %struct.lha*, %struct.lha** %8, align 8
  %297 = getelementptr inbounds %struct.lha, %struct.lha* %296, i32 0, i32 26
  %298 = call i32 @archive_string_copy(%struct.archive_string* %7, %struct.archive_string* %297)
  %299 = load %struct.lha*, %struct.lha** %8, align 8
  %300 = getelementptr inbounds %struct.lha, %struct.lha* %299, i32 0, i32 8
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @AE_IFMT, align 4
  %303 = and i32 %301, %302
  %304 = load i32, i32* @AE_IFLNK, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %318

306:                                              ; preds = %288
  %307 = call i32 @lha_parse_linkname(%struct.archive_string* %6, %struct.archive_string* %7)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %317, label %309

309:                                              ; preds = %306
  %310 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %311 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %310, i32 0, i32 0
  %312 = load i64, i64* @ARCHIVE_ERRNO_FILE_FORMAT, align 8
  %313 = call i32 (%struct.TYPE_4__*, i64, i8*, ...) @archive_set_error(%struct.TYPE_4__* %311, i64 %312, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %314 = call i32 @archive_string_free(%struct.archive_string* %7)
  %315 = call i32 @archive_string_free(%struct.archive_string* %6)
  %316 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %316, i32* %3, align 4
  br label %611

317:                                              ; preds = %306
  br label %338

318:                                              ; preds = %288
  %319 = load %struct.lha*, %struct.lha** %8, align 8
  %320 = getelementptr inbounds %struct.lha, %struct.lha* %319, i32 0, i32 8
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @AE_IFMT, align 4
  %323 = xor i32 %322, -1
  %324 = and i32 %321, %323
  %325 = load %struct.lha*, %struct.lha** %8, align 8
  %326 = getelementptr inbounds %struct.lha, %struct.lha* %325, i32 0, i32 4
  %327 = load i32, i32* %326, align 8
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %318
  %330 = load i32, i32* @AE_IFDIR, align 4
  br label %333

331:                                              ; preds = %318
  %332 = load i32, i32* @AE_IFREG, align 4
  br label %333

333:                                              ; preds = %331, %329
  %334 = phi i32 [ %330, %329 ], [ %332, %331 ]
  %335 = or i32 %324, %334
  %336 = load %struct.lha*, %struct.lha** %8, align 8
  %337 = getelementptr inbounds %struct.lha, %struct.lha* %336, i32 0, i32 8
  store i32 %335, i32* %337, align 4
  br label %338

338:                                              ; preds = %333, %317
  %339 = load %struct.lha*, %struct.lha** %8, align 8
  %340 = getelementptr inbounds %struct.lha, %struct.lha* %339, i32 0, i32 7
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* @UNIX_MODE_IS_SET, align 4
  %343 = and i32 %341, %342
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %356

345:                                              ; preds = %338
  %346 = load %struct.lha*, %struct.lha** %8, align 8
  %347 = getelementptr inbounds %struct.lha, %struct.lha* %346, i32 0, i32 9
  %348 = load i32, i32* %347, align 8
  %349 = and i32 %348, 1
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %356

351:                                              ; preds = %345
  %352 = load %struct.lha*, %struct.lha** %8, align 8
  %353 = getelementptr inbounds %struct.lha, %struct.lha* %352, i32 0, i32 8
  %354 = load i32, i32* %353, align 4
  %355 = and i32 %354, -147
  store i32 %355, i32* %353, align 4
  br label %356

356:                                              ; preds = %351, %345, %338
  %357 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %358 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %7, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %7, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.lha*, %struct.lha** %8, align 8
  %363 = getelementptr inbounds %struct.lha, %struct.lha* %362, i32 0, i32 25
  %364 = load i32*, i32** %363, align 8
  %365 = call i64 @archive_entry_copy_pathname_l(%struct.archive_entry* %357, i32 %359, i32 %361, i32* %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %387

367:                                              ; preds = %356
  %368 = load i64, i64* @errno, align 8
  %369 = load i64, i64* @ENOMEM, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %377

371:                                              ; preds = %367
  %372 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %373 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %372, i32 0, i32 0
  %374 = load i64, i64* @ENOMEM, align 8
  %375 = call i32 (%struct.TYPE_4__*, i64, i8*, ...) @archive_set_error(%struct.TYPE_4__* %373, i64 %374, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %376 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %376, i32* %3, align 4
  br label %611

377:                                              ; preds = %367
  %378 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %379 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %378, i32 0, i32 0
  %380 = load i64, i64* @ARCHIVE_ERRNO_FILE_FORMAT, align 8
  %381 = load %struct.lha*, %struct.lha** %8, align 8
  %382 = getelementptr inbounds %struct.lha, %struct.lha* %381, i32 0, i32 25
  %383 = load i32*, i32** %382, align 8
  %384 = call i32 @archive_string_conversion_charset_name(i32* %383)
  %385 = call i32 (%struct.TYPE_4__*, i64, i8*, ...) @archive_set_error(%struct.TYPE_4__* %379, i64 %380, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i32 %384)
  %386 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %386, i32* %11, align 4
  br label %387

387:                                              ; preds = %377, %356
  %388 = call i32 @archive_string_free(%struct.archive_string* %7)
  %389 = call i64 @archive_strlen(%struct.archive_string* %6)
  %390 = icmp sgt i64 %389, 0
  br i1 %390, label %391, label %423

391:                                              ; preds = %387
  %392 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %393 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %6, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %6, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.lha*, %struct.lha** %8, align 8
  %398 = getelementptr inbounds %struct.lha, %struct.lha* %397, i32 0, i32 25
  %399 = load i32*, i32** %398, align 8
  %400 = call i64 @archive_entry_copy_symlink_l(%struct.archive_entry* %392, i32 %394, i32 %396, i32* %399)
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %422

402:                                              ; preds = %391
  %403 = load i64, i64* @errno, align 8
  %404 = load i64, i64* @ENOMEM, align 8
  %405 = icmp eq i64 %403, %404
  br i1 %405, label %406, label %412

406:                                              ; preds = %402
  %407 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %408 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %407, i32 0, i32 0
  %409 = load i64, i64* @ENOMEM, align 8
  %410 = call i32 (%struct.TYPE_4__*, i64, i8*, ...) @archive_set_error(%struct.TYPE_4__* %408, i64 %409, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %411 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %411, i32* %3, align 4
  br label %611

412:                                              ; preds = %402
  %413 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %414 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %413, i32 0, i32 0
  %415 = load i64, i64* @ARCHIVE_ERRNO_FILE_FORMAT, align 8
  %416 = load %struct.lha*, %struct.lha** %8, align 8
  %417 = getelementptr inbounds %struct.lha, %struct.lha* %416, i32 0, i32 25
  %418 = load i32*, i32** %417, align 8
  %419 = call i32 @archive_string_conversion_charset_name(i32* %418)
  %420 = call i32 (%struct.TYPE_4__*, i64, i8*, ...) @archive_set_error(%struct.TYPE_4__* %414, i64 %415, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0), i32 %419)
  %421 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %421, i32* %11, align 4
  br label %422

422:                                              ; preds = %412, %391
  br label %426

423:                                              ; preds = %387
  %424 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %425 = call i32 @archive_entry_set_symlink(%struct.archive_entry* %424, i32* null)
  br label %426

426:                                              ; preds = %423, %422
  %427 = call i32 @archive_string_free(%struct.archive_string* %6)
  %428 = load i8*, i8** %9, align 8
  %429 = load i64, i64* @H_LEVEL_OFFSET, align 8
  %430 = getelementptr inbounds i8, i8* %428, i64 %429
  %431 = load i8, i8* %430, align 1
  %432 = zext i8 %431 to i32
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %438

434:                                              ; preds = %426
  %435 = load %struct.lha*, %struct.lha** %8, align 8
  %436 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %437 = call i32 @lha_replace_path_separator(%struct.lha* %435, %struct.archive_entry* %436)
  br label %438

438:                                              ; preds = %434, %426
  %439 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %440 = load %struct.lha*, %struct.lha** %8, align 8
  %441 = getelementptr inbounds %struct.lha, %struct.lha* %440, i32 0, i32 8
  %442 = load i32, i32* %441, align 4
  %443 = call i32 @archive_entry_set_mode(%struct.archive_entry* %439, i32 %442)
  %444 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %445 = load %struct.lha*, %struct.lha** %8, align 8
  %446 = getelementptr inbounds %struct.lha, %struct.lha* %445, i32 0, i32 24
  %447 = load i64, i64* %446, align 8
  %448 = call i32 @archive_entry_set_uid(%struct.archive_entry* %444, i64 %447)
  %449 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %450 = load %struct.lha*, %struct.lha** %8, align 8
  %451 = getelementptr inbounds %struct.lha, %struct.lha* %450, i32 0, i32 23
  %452 = load i64, i64* %451, align 8
  %453 = call i32 @archive_entry_set_gid(%struct.archive_entry* %449, i64 %452)
  %454 = load %struct.lha*, %struct.lha** %8, align 8
  %455 = getelementptr inbounds %struct.lha, %struct.lha* %454, i32 0, i32 22
  %456 = call i64 @archive_strlen(%struct.archive_string* %455)
  %457 = icmp sgt i64 %456, 0
  br i1 %457, label %458, label %465

458:                                              ; preds = %438
  %459 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %460 = load %struct.lha*, %struct.lha** %8, align 8
  %461 = getelementptr inbounds %struct.lha, %struct.lha* %460, i32 0, i32 22
  %462 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = call i32 @archive_entry_set_uname(%struct.archive_entry* %459, i32 %463)
  br label %465

465:                                              ; preds = %458, %438
  %466 = load %struct.lha*, %struct.lha** %8, align 8
  %467 = getelementptr inbounds %struct.lha, %struct.lha* %466, i32 0, i32 21
  %468 = call i64 @archive_strlen(%struct.archive_string* %467)
  %469 = icmp sgt i64 %468, 0
  br i1 %469, label %470, label %477

470:                                              ; preds = %465
  %471 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %472 = load %struct.lha*, %struct.lha** %8, align 8
  %473 = getelementptr inbounds %struct.lha, %struct.lha* %472, i32 0, i32 21
  %474 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = call i32 @archive_entry_set_gname(%struct.archive_entry* %471, i32 %475)
  br label %477

477:                                              ; preds = %470, %465
  %478 = load %struct.lha*, %struct.lha** %8, align 8
  %479 = getelementptr inbounds %struct.lha, %struct.lha* %478, i32 0, i32 7
  %480 = load i32, i32* %479, align 8
  %481 = load i32, i32* @BIRTHTIME_IS_SET, align 4
  %482 = and i32 %480, %481
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %501

484:                                              ; preds = %477
  %485 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %486 = load %struct.lha*, %struct.lha** %8, align 8
  %487 = getelementptr inbounds %struct.lha, %struct.lha* %486, i32 0, i32 20
  %488 = load i64, i64* %487, align 8
  %489 = load %struct.lha*, %struct.lha** %8, align 8
  %490 = getelementptr inbounds %struct.lha, %struct.lha* %489, i32 0, i32 19
  %491 = load i64, i64* %490, align 8
  %492 = call i32 @archive_entry_set_birthtime(%struct.archive_entry* %485, i64 %488, i64 %491)
  %493 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %494 = load %struct.lha*, %struct.lha** %8, align 8
  %495 = getelementptr inbounds %struct.lha, %struct.lha* %494, i32 0, i32 20
  %496 = load i64, i64* %495, align 8
  %497 = load %struct.lha*, %struct.lha** %8, align 8
  %498 = getelementptr inbounds %struct.lha, %struct.lha* %497, i32 0, i32 19
  %499 = load i64, i64* %498, align 8
  %500 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %493, i64 %496, i64 %499)
  br label %506

501:                                              ; preds = %477
  %502 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %503 = call i32 @archive_entry_unset_birthtime(%struct.archive_entry* %502)
  %504 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %505 = call i32 @archive_entry_unset_ctime(%struct.archive_entry* %504)
  br label %506

506:                                              ; preds = %501, %484
  %507 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %508 = load %struct.lha*, %struct.lha** %8, align 8
  %509 = getelementptr inbounds %struct.lha, %struct.lha* %508, i32 0, i32 18
  %510 = load i64, i64* %509, align 8
  %511 = load %struct.lha*, %struct.lha** %8, align 8
  %512 = getelementptr inbounds %struct.lha, %struct.lha* %511, i32 0, i32 17
  %513 = load i64, i64* %512, align 8
  %514 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %507, i64 %510, i64 %513)
  %515 = load %struct.lha*, %struct.lha** %8, align 8
  %516 = getelementptr inbounds %struct.lha, %struct.lha* %515, i32 0, i32 7
  %517 = load i32, i32* %516, align 8
  %518 = load i32, i32* @ATIME_IS_SET, align 4
  %519 = and i32 %517, %518
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %530

521:                                              ; preds = %506
  %522 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %523 = load %struct.lha*, %struct.lha** %8, align 8
  %524 = getelementptr inbounds %struct.lha, %struct.lha* %523, i32 0, i32 16
  %525 = load i64, i64* %524, align 8
  %526 = load %struct.lha*, %struct.lha** %8, align 8
  %527 = getelementptr inbounds %struct.lha, %struct.lha* %526, i32 0, i32 15
  %528 = load i64, i64* %527, align 8
  %529 = call i32 @archive_entry_set_atime(%struct.archive_entry* %522, i64 %525, i64 %528)
  br label %533

530:                                              ; preds = %506
  %531 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %532 = call i32 @archive_entry_unset_atime(%struct.archive_entry* %531)
  br label %533

533:                                              ; preds = %530, %521
  %534 = load %struct.lha*, %struct.lha** %8, align 8
  %535 = getelementptr inbounds %struct.lha, %struct.lha* %534, i32 0, i32 4
  %536 = load i32, i32* %535, align 8
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %542, label %538

538:                                              ; preds = %533
  %539 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %540 = call i32* @archive_entry_symlink(%struct.archive_entry* %539)
  %541 = icmp ne i32* %540, null
  br i1 %541, label %542, label %545

542:                                              ; preds = %538, %533
  %543 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %544 = call i32 @archive_entry_unset_size(%struct.archive_entry* %543)
  br label %551

545:                                              ; preds = %538
  %546 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %547 = load %struct.lha*, %struct.lha** %8, align 8
  %548 = getelementptr inbounds %struct.lha, %struct.lha* %547, i32 0, i32 14
  %549 = load i64, i64* %548, align 8
  %550 = call i32 @archive_entry_set_size(%struct.archive_entry* %546, i64 %549)
  br label %551

551:                                              ; preds = %545, %542
  %552 = load %struct.lha*, %struct.lha** %8, align 8
  %553 = getelementptr inbounds %struct.lha, %struct.lha* %552, i32 0, i32 6
  %554 = load i64, i64* %553, align 8
  %555 = load %struct.lha*, %struct.lha** %8, align 8
  %556 = getelementptr inbounds %struct.lha, %struct.lha* %555, i32 0, i32 10
  store i64 %554, i64* %556, align 8
  %557 = load %struct.lha*, %struct.lha** %8, align 8
  %558 = getelementptr inbounds %struct.lha, %struct.lha* %557, i32 0, i32 10
  %559 = load i64, i64* %558, align 8
  %560 = icmp slt i64 %559, 0
  br i1 %560, label %561, label %567

561:                                              ; preds = %551
  %562 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %563 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %562, i32 0, i32 0
  %564 = load i64, i64* @ARCHIVE_ERRNO_FILE_FORMAT, align 8
  %565 = call i32 (%struct.TYPE_4__*, i64, i8*, ...) @archive_set_error(%struct.TYPE_4__* %563, i64 %564, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %566 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %566, i32* %3, align 4
  br label %611

567:                                              ; preds = %551
  %568 = load %struct.lha*, %struct.lha** %8, align 8
  %569 = getelementptr inbounds %struct.lha, %struct.lha* %568, i32 0, i32 13
  store i64 0, i64* %569, align 8
  %570 = load %struct.lha*, %struct.lha** %8, align 8
  %571 = getelementptr inbounds %struct.lha, %struct.lha* %570, i32 0, i32 12
  store i64 0, i64* %571, align 8
  %572 = load %struct.lha*, %struct.lha** %8, align 8
  %573 = getelementptr inbounds %struct.lha, %struct.lha* %572, i32 0, i32 4
  %574 = load i32, i32* %573, align 8
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %581, label %576

576:                                              ; preds = %567
  %577 = load %struct.lha*, %struct.lha** %8, align 8
  %578 = getelementptr inbounds %struct.lha, %struct.lha* %577, i32 0, i32 6
  %579 = load i64, i64* %578, align 8
  %580 = icmp eq i64 %579, 0
  br i1 %580, label %581, label %584

581:                                              ; preds = %576, %567
  %582 = load %struct.lha*, %struct.lha** %8, align 8
  %583 = getelementptr inbounds %struct.lha, %struct.lha* %582, i32 0, i32 0
  store i32 1, i32* %583, align 8
  br label %584

584:                                              ; preds = %581, %576
  %585 = load %struct.lha*, %struct.lha** %8, align 8
  %586 = getelementptr inbounds %struct.lha, %struct.lha* %585, i32 0, i32 11
  %587 = load i8*, i8** %586, align 8
  %588 = load %struct.lha*, %struct.lha** %8, align 8
  %589 = getelementptr inbounds %struct.lha, %struct.lha* %588, i32 0, i32 3
  %590 = load i8*, i8** %589, align 8
  %591 = getelementptr inbounds i8, i8* %590, i64 0
  %592 = load i8, i8* %591, align 1
  %593 = load %struct.lha*, %struct.lha** %8, align 8
  %594 = getelementptr inbounds %struct.lha, %struct.lha* %593, i32 0, i32 3
  %595 = load i8*, i8** %594, align 8
  %596 = getelementptr inbounds i8, i8* %595, i64 1
  %597 = load i8, i8* %596, align 1
  %598 = load %struct.lha*, %struct.lha** %8, align 8
  %599 = getelementptr inbounds %struct.lha, %struct.lha* %598, i32 0, i32 3
  %600 = load i8*, i8** %599, align 8
  %601 = getelementptr inbounds i8, i8* %600, i64 2
  %602 = load i8, i8* %601, align 1
  %603 = call i32 @sprintf(i8* %587, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8 zeroext %592, i8 zeroext %597, i8 zeroext %602)
  %604 = load %struct.lha*, %struct.lha** %8, align 8
  %605 = getelementptr inbounds %struct.lha, %struct.lha* %604, i32 0, i32 11
  %606 = load i8*, i8** %605, align 8
  %607 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %608 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %607, i32 0, i32 0
  %609 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %608, i32 0, i32 0
  store i8* %606, i8** %609, align 8
  %610 = load i32, i32* %11, align 4
  store i32 %610, i32* %3, align 4
  br label %611

611:                                              ; preds = %584, %561, %406, %371, %309, %285, %273, %108, %102, %91, %85, %58, %56
  %612 = load i32, i32* %3, align 4
  ret i32 %612
}

declare dso_local i32 @lha_crc16_init(...) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i32 @truncated_error(%struct.archive_read*) #1

declare dso_local i32 @lha_skip_sfx(%struct.archive_read*) #1

declare dso_local i64 @lha_check_header_format(i8*) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_4__*, i64, i8*, ...) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @archive_string_empty(%struct.archive_string*) #1

declare dso_local i32 @lha_read_file_header_0(%struct.archive_read*, %struct.lha*) #1

declare dso_local i32 @lha_read_file_header_1(%struct.archive_read*, %struct.lha*) #1

declare dso_local i32 @lha_read_file_header_2(%struct.archive_read*, %struct.lha*) #1

declare dso_local i32 @lha_read_file_header_3(%struct.archive_read*, %struct.lha*) #1

declare dso_local i64 @archive_strlen(%struct.archive_string*) #1

declare dso_local i32 @archive_string_concat(%struct.archive_string*, %struct.archive_string*) #1

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i32 @archive_string_copy(%struct.archive_string*, %struct.archive_string*) #1

declare dso_local i32 @lha_parse_linkname(%struct.archive_string*, %struct.archive_string*) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

declare dso_local i64 @archive_entry_copy_pathname_l(%struct.archive_entry*, i32, i32, i32*) #1

declare dso_local i32 @archive_string_conversion_charset_name(i32*) #1

declare dso_local i64 @archive_entry_copy_symlink_l(%struct.archive_entry*, i32, i32, i32*) #1

declare dso_local i32 @archive_entry_set_symlink(%struct.archive_entry*, i32*) #1

declare dso_local i32 @lha_replace_path_separator(%struct.lha*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_uid(%struct.archive_entry*, i64) #1

declare dso_local i32 @archive_entry_set_gid(%struct.archive_entry*, i64) #1

declare dso_local i32 @archive_entry_set_uname(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_gname(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_birthtime(%struct.archive_entry*, i64, i64) #1

declare dso_local i32 @archive_entry_set_ctime(%struct.archive_entry*, i64, i64) #1

declare dso_local i32 @archive_entry_unset_birthtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_unset_ctime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i64, i64) #1

declare dso_local i32 @archive_entry_set_atime(%struct.archive_entry*, i64, i64) #1

declare dso_local i32 @archive_entry_unset_atime(%struct.archive_entry*) #1

declare dso_local i32* @archive_entry_symlink(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_unset_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
