; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_parse_file_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_parse_file_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.file_info = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.file_info*, i32, i64, i64, i64, i32*, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32*, i32** }
%struct.iso9660 = type { i32, i8, i32, %struct.file_info*, i64, i64, i64, i64 }

@DR_length_offset = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Invalid length of directory record\00", align 1
@DR_name_len_offset = common dso_local global i64 0, align 8
@DR_extent_offset = common dso_local global i32 0, align 4
@DR_size_offset = common dso_local global i32 0, align 4
@DR_size_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Invalid length of file identifier\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Invalid location of extent of file\00", align 1
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Directory structure contains loop\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"No memory for file entry\00", align 1
@DR_date_offset = common dso_local global i32 0, align 4
@DR_name_offset = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"No memory for file name\00", align 1
@DR_flags_offset = common dso_local global i64 0, align 8
@AE_IFDIR = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"SP\07\01\BE\EF\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@AE_IFMT = common dso_local global i32 0, align 4
@AE_IFLNK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"rr_moved\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c".rr_moved\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Invalid Rockridge RE\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Invalid Rockridge RE and CL\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Invalid Rockridge CL\00", align 1
@DR_ext_attr_length_offset = common dso_local global i32 0, align 4
@DR_file_unit_size_offset = common dso_local global i32 0, align 4
@DR_interleave_offset = common dso_local global i32 0, align 4
@DR_volume_sequence_number_offset = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file_info* (%struct.archive_read*, %struct.file_info*, i8*, i64)* @parse_file_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file_info* @parse_file_info(%struct.archive_read* %0, %struct.file_info* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.file_info*, align 8
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca %struct.file_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iso9660*, align 8
  %11 = alloca %struct.file_info*, align 8
  %12 = alloca %struct.file_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.file_info*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store %struct.file_info* %1, %struct.file_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %24 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %25 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.iso9660*
  store %struct.iso9660* %29, %struct.iso9660** %10, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* @DR_length_offset, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i64
  store i64 %37, i64* %17, align 8
  br label %38

38:                                               ; preds = %32, %4
  %39 = load i64, i64* %9, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %17, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %17, align 8
  %47 = icmp ult i64 %46, 34
  br i1 %47, label %48, label %53

48:                                               ; preds = %45, %41, %38
  %49 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %50 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %49, i32 0, i32 0
  %51 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %52 = call i32 @archive_set_error(i32* %50, i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store %struct.file_info* null, %struct.file_info** %5, align 8
  br label %681

53:                                               ; preds = %45
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* @DR_name_len_offset, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i64
  store i64 %58, i64* %13, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* @DR_extent_offset, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = call i64 @archive_le32dec(i8* %62)
  store i64 %63, i64* %20, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* @DR_size_offset, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i32, i32* @DR_size_size, align 4
  %69 = call i32 @toi(i8* %67, i32 %68)
  store i32 %69, i32* %18, align 4
  %70 = load i64, i64* %17, align 8
  %71 = sub i64 %70, 33
  %72 = load i64, i64* %13, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %77, label %74

74:                                               ; preds = %53
  %75 = load i64, i64* %13, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74, %53
  %78 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %79 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %78, i32 0, i32 0
  %80 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %81 = call i32 @archive_set_error(i32* %79, i32 %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store %struct.file_info* null, %struct.file_info** %5, align 8
  br label %681

82:                                               ; preds = %74
  %83 = load i64, i64* %20, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %108

85:                                               ; preds = %82
  %86 = load i64, i64* %20, align 8
  %87 = load i32, i32* %18, align 4
  %88 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  %89 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %87, %90
  %92 = sub nsw i32 %91, 1
  %93 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  %94 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sdiv i32 %92, %95
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %86, %97
  %99 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  %100 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %99, i32 0, i32 7
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %98, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %85
  %104 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %105 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %104, i32 0, i32 0
  %106 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %107 = call i32 @archive_set_error(i32* %105, i32 %106, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store %struct.file_info* null, %struct.file_info** %5, align 8
  br label %681

108:                                              ; preds = %85, %82
  %109 = load i32, i32* %18, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i64, i64* %20, align 8
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %116 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %115, i32 0, i32 0
  %117 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %118 = call i32 @archive_set_error(i32* %116, i32 %117, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store %struct.file_info* null, %struct.file_info** %5, align 8
  br label %681

119:                                              ; preds = %111, %108
  %120 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  %121 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i64, i64* %20, align 8
  %124 = trunc i64 %123 to i32
  %125 = mul nsw i32 %122, %124
  store i32 %125, i32* %19, align 4
  %126 = load %struct.file_info*, %struct.file_info** %7, align 8
  store %struct.file_info* %126, %struct.file_info** %12, align 8
  br label %127

127:                                              ; preds = %142, %119
  %128 = load %struct.file_info*, %struct.file_info** %12, align 8
  %129 = icmp ne %struct.file_info* %128, null
  br i1 %129, label %130, label %146

130:                                              ; preds = %127
  %131 = load %struct.file_info*, %struct.file_info** %12, align 8
  %132 = getelementptr inbounds %struct.file_info, %struct.file_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %19, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %138 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %137, i32 0, i32 0
  %139 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %140 = call i32 @archive_set_error(i32* %138, i32 %139, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store %struct.file_info* null, %struct.file_info** %5, align 8
  br label %681

141:                                              ; preds = %130
  br label %142

142:                                              ; preds = %141
  %143 = load %struct.file_info*, %struct.file_info** %12, align 8
  %144 = getelementptr inbounds %struct.file_info, %struct.file_info* %143, i32 0, i32 12
  %145 = load %struct.file_info*, %struct.file_info** %144, align 8
  store %struct.file_info* %145, %struct.file_info** %12, align 8
  br label %127

146:                                              ; preds = %127
  %147 = call i64 @calloc(i32 1, i32 136)
  %148 = inttoptr i64 %147 to %struct.file_info*
  store %struct.file_info* %148, %struct.file_info** %11, align 8
  %149 = load %struct.file_info*, %struct.file_info** %11, align 8
  %150 = icmp eq %struct.file_info* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %153 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %152, i32 0, i32 0
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = call i32 @archive_set_error(i32* %153, i32 %154, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store %struct.file_info* null, %struct.file_info** %5, align 8
  br label %681

156:                                              ; preds = %146
  %157 = load %struct.file_info*, %struct.file_info** %7, align 8
  %158 = load %struct.file_info*, %struct.file_info** %11, align 8
  %159 = getelementptr inbounds %struct.file_info, %struct.file_info* %158, i32 0, i32 12
  store %struct.file_info* %157, %struct.file_info** %159, align 8
  %160 = load i32, i32* %19, align 4
  %161 = load %struct.file_info*, %struct.file_info** %11, align 8
  %162 = getelementptr inbounds %struct.file_info, %struct.file_info* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* %18, align 4
  %164 = load %struct.file_info*, %struct.file_info** %11, align 8
  %165 = getelementptr inbounds %struct.file_info, %struct.file_info* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load i8*, i8** %8, align 8
  %167 = load i32, i32* @DR_date_offset, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = call i32 @isodate7(i8* %169)
  %171 = load %struct.file_info*, %struct.file_info** %11, align 8
  %172 = getelementptr inbounds %struct.file_info, %struct.file_info* %171, i32 0, i32 19
  store i32 %170, i32* %172, align 8
  %173 = load %struct.file_info*, %struct.file_info** %11, align 8
  %174 = getelementptr inbounds %struct.file_info, %struct.file_info* %173, i32 0, i32 19
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.file_info*, %struct.file_info** %11, align 8
  %177 = getelementptr inbounds %struct.file_info, %struct.file_info* %176, i32 0, i32 20
  store i32 %175, i32* %177, align 4
  %178 = load %struct.file_info*, %struct.file_info** %11, align 8
  %179 = getelementptr inbounds %struct.file_info, %struct.file_info* %178, i32 0, i32 21
  store i32 %175, i32* %179, align 8
  %180 = load %struct.file_info*, %struct.file_info** %11, align 8
  %181 = getelementptr inbounds %struct.file_info, %struct.file_info* %180, i32 0, i32 18
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  store i32* null, i32** %182, align 8
  %183 = load %struct.file_info*, %struct.file_info** %11, align 8
  %184 = getelementptr inbounds %struct.file_info, %struct.file_info* %183, i32 0, i32 18
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load %struct.file_info*, %struct.file_info** %11, align 8
  %187 = getelementptr inbounds %struct.file_info, %struct.file_info* %186, i32 0, i32 18
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  store i32** %185, i32*** %188, align 8
  %189 = load i8*, i8** %8, align 8
  %190 = load i32, i32* @DR_name_offset, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  store i8* %192, i8** %16, align 8
  %193 = load i8*, i8** %16, align 8
  %194 = load i64, i64* %13, align 8
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  %196 = load i64, i64* %13, align 8
  %197 = and i64 %196, 1
  %198 = icmp ne i64 %197, 0
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i32 0, i32 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %195, i64 %201
  store i8* %202, i8** %14, align 8
  %203 = load i8*, i8** %8, align 8
  %204 = load i64, i64* %17, align 8
  %205 = getelementptr inbounds i8, i8* %203, i64 %204
  store i8* %205, i8** %15, align 8
  %206 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  %207 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %206, i32 0, i32 6
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %275

210:                                              ; preds = %156
  %211 = load i64, i64* %13, align 8
  %212 = icmp ugt i64 %211, 206
  br i1 %212, label %213, label %214

213:                                              ; preds = %210
  store i64 206, i64* %13, align 8
  br label %214

214:                                              ; preds = %213, %210
  %215 = load i64, i64* %13, align 8
  %216 = and i64 %215, -2
  store i64 %216, i64* %13, align 8
  %217 = load i64, i64* %13, align 8
  %218 = icmp ugt i64 %217, 4
  br i1 %218, label %219, label %254

219:                                              ; preds = %214
  %220 = load i8*, i8** %16, align 8
  %221 = load i64, i64* %13, align 8
  %222 = sub i64 %221, 4
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %254

227:                                              ; preds = %219
  %228 = load i8*, i8** %16, align 8
  %229 = load i64, i64* %13, align 8
  %230 = sub i64 %229, 3
  %231 = getelementptr inbounds i8, i8* %228, i64 %230
  %232 = load i8, i8* %231, align 1
  %233 = zext i8 %232 to i32
  %234 = icmp eq i32 %233, 59
  br i1 %234, label %235, label %254

235:                                              ; preds = %227
  %236 = load i8*, i8** %16, align 8
  %237 = load i64, i64* %13, align 8
  %238 = sub i64 %237, 2
  %239 = getelementptr inbounds i8, i8* %236, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %254

243:                                              ; preds = %235
  %244 = load i8*, i8** %16, align 8
  %245 = load i64, i64* %13, align 8
  %246 = sub i64 %245, 1
  %247 = getelementptr inbounds i8, i8* %244, i64 %246
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i32
  %250 = icmp eq i32 %249, 49
  br i1 %250, label %251, label %254

251:                                              ; preds = %243
  %252 = load i64, i64* %13, align 8
  %253 = sub i64 %252, 4
  store i64 %253, i64* %13, align 8
  br label %254

254:                                              ; preds = %251, %243, %235, %227, %219, %214
  %255 = load i64, i64* %13, align 8
  %256 = call i32* @malloc(i64 %255)
  %257 = load %struct.file_info*, %struct.file_info** %11, align 8
  %258 = getelementptr inbounds %struct.file_info, %struct.file_info* %257, i32 0, i32 17
  store i32* %256, i32** %258, align 8
  %259 = icmp eq i32* %256, null
  br i1 %259, label %260, label %265

260:                                              ; preds = %254
  %261 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %262 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %261, i32 0, i32 0
  %263 = load i32, i32* @ENOMEM, align 4
  %264 = call i32 @archive_set_error(i32* %262, i32 %263, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %675

265:                                              ; preds = %254
  %266 = load %struct.file_info*, %struct.file_info** %11, align 8
  %267 = getelementptr inbounds %struct.file_info, %struct.file_info* %266, i32 0, i32 17
  %268 = load i32*, i32** %267, align 8
  %269 = load i8*, i8** %16, align 8
  %270 = load i64, i64* %13, align 8
  %271 = call i32 @memcpy(i32* %268, i8* %269, i64 %270)
  %272 = load i64, i64* %13, align 8
  %273 = load %struct.file_info*, %struct.file_info** %11, align 8
  %274 = getelementptr inbounds %struct.file_info, %struct.file_info* %273, i32 0, i32 2
  store i64 %272, i64* %274, align 8
  br label %317

275:                                              ; preds = %156
  %276 = load i64, i64* %13, align 8
  %277 = icmp ugt i64 %276, 2
  br i1 %277, label %278, label %297

278:                                              ; preds = %275
  %279 = load i8*, i8** %16, align 8
  %280 = load i64, i64* %13, align 8
  %281 = sub i64 %280, 2
  %282 = getelementptr inbounds i8, i8* %279, i64 %281
  %283 = load i8, i8* %282, align 1
  %284 = zext i8 %283 to i32
  %285 = icmp eq i32 %284, 59
  br i1 %285, label %286, label %297

286:                                              ; preds = %278
  %287 = load i8*, i8** %16, align 8
  %288 = load i64, i64* %13, align 8
  %289 = sub i64 %288, 1
  %290 = getelementptr inbounds i8, i8* %287, i64 %289
  %291 = load i8, i8* %290, align 1
  %292 = zext i8 %291 to i32
  %293 = icmp eq i32 %292, 49
  br i1 %293, label %294, label %297

294:                                              ; preds = %286
  %295 = load i64, i64* %13, align 8
  %296 = sub i64 %295, 2
  store i64 %296, i64* %13, align 8
  br label %297

297:                                              ; preds = %294, %286, %278, %275
  %298 = load i64, i64* %13, align 8
  %299 = icmp ugt i64 %298, 1
  br i1 %299, label %300, label %311

300:                                              ; preds = %297
  %301 = load i8*, i8** %16, align 8
  %302 = load i64, i64* %13, align 8
  %303 = sub i64 %302, 1
  %304 = getelementptr inbounds i8, i8* %301, i64 %303
  %305 = load i8, i8* %304, align 1
  %306 = zext i8 %305 to i32
  %307 = icmp eq i32 %306, 46
  br i1 %307, label %308, label %311

308:                                              ; preds = %300
  %309 = load i64, i64* %13, align 8
  %310 = add i64 %309, -1
  store i64 %310, i64* %13, align 8
  br label %311

311:                                              ; preds = %308, %300, %297
  %312 = load %struct.file_info*, %struct.file_info** %11, align 8
  %313 = getelementptr inbounds %struct.file_info, %struct.file_info* %312, i32 0, i32 11
  %314 = load i8*, i8** %16, align 8
  %315 = load i64, i64* %13, align 8
  %316 = call i32 @archive_strncpy(%struct.TYPE_7__* %313, i8* %314, i64 %315)
  br label %317

317:                                              ; preds = %311, %265
  %318 = load i8*, i8** %8, align 8
  %319 = load i64, i64* @DR_flags_offset, align 8
  %320 = getelementptr inbounds i8, i8* %318, i64 %319
  %321 = load i8, i8* %320, align 1
  %322 = zext i8 %321 to i32
  store i32 %322, i32* %21, align 4
  %323 = load i32, i32* %21, align 4
  %324 = and i32 %323, 2
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %331

326:                                              ; preds = %317
  %327 = load i32, i32* @AE_IFDIR, align 4
  %328 = or i32 %327, 448
  %329 = load %struct.file_info*, %struct.file_info** %11, align 8
  %330 = getelementptr inbounds %struct.file_info, %struct.file_info* %329, i32 0, i32 3
  store i32 %328, i32* %330, align 8
  br label %336

331:                                              ; preds = %317
  %332 = load i32, i32* @AE_IFREG, align 4
  %333 = or i32 %332, 256
  %334 = load %struct.file_info*, %struct.file_info** %11, align 8
  %335 = getelementptr inbounds %struct.file_info, %struct.file_info* %334, i32 0, i32 3
  store i32 %333, i32* %335, align 8
  br label %336

336:                                              ; preds = %331, %326
  %337 = load i32, i32* %21, align 4
  %338 = and i32 %337, 128
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %336
  %341 = load %struct.file_info*, %struct.file_info** %11, align 8
  %342 = getelementptr inbounds %struct.file_info, %struct.file_info* %341, i32 0, i32 4
  store i32 1, i32* %342, align 4
  br label %346

343:                                              ; preds = %336
  %344 = load %struct.file_info*, %struct.file_info** %11, align 8
  %345 = getelementptr inbounds %struct.file_info, %struct.file_info* %344, i32 0, i32 4
  store i32 0, i32* %345, align 4
  br label %346

346:                                              ; preds = %343, %340
  %347 = load %struct.file_info*, %struct.file_info** %11, align 8
  %348 = getelementptr inbounds %struct.file_info, %struct.file_info* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %359

351:                                              ; preds = %346
  %352 = load i64, i64* %20, align 8
  %353 = icmp sge i64 %352, 0
  br i1 %353, label %354, label %359

354:                                              ; preds = %351
  %355 = load %struct.file_info*, %struct.file_info** %11, align 8
  %356 = getelementptr inbounds %struct.file_info, %struct.file_info* %355, i32 0, i32 5
  store i32 -1, i32* %356, align 8
  %357 = load %struct.file_info*, %struct.file_info** %11, align 8
  %358 = getelementptr inbounds %struct.file_info, %struct.file_info* %357, i32 0, i32 0
  store i32 -1, i32* %358, align 8
  br label %364

359:                                              ; preds = %351, %346
  %360 = load i64, i64* %20, align 8
  %361 = trunc i64 %360 to i32
  %362 = load %struct.file_info*, %struct.file_info** %11, align 8
  %363 = getelementptr inbounds %struct.file_info, %struct.file_info* %362, i32 0, i32 5
  store i32 %361, i32* %363, align 8
  br label %364

364:                                              ; preds = %359, %354
  %365 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  %366 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %365, i32 0, i32 5
  %367 = load i64, i64* %366, align 8
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %446

369:                                              ; preds = %364
  %370 = load %struct.file_info*, %struct.file_info** %7, align 8
  %371 = icmp eq %struct.file_info* %370, null
  br i1 %371, label %372, label %395

372:                                              ; preds = %369
  %373 = load i8*, i8** %15, align 8
  %374 = load i8*, i8** %14, align 8
  %375 = ptrtoint i8* %373 to i64
  %376 = ptrtoint i8* %374 to i64
  %377 = sub i64 %375, %376
  %378 = icmp sge i64 %377, 7
  br i1 %378, label %379, label %395

379:                                              ; preds = %372
  %380 = load i8*, i8** %14, align 8
  store i8* %380, i8** %16, align 8
  %381 = load i8*, i8** %16, align 8
  %382 = call i64 @memcmp(i8* %381, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 6)
  %383 = icmp eq i64 %382, 0
  br i1 %383, label %384, label %394

384:                                              ; preds = %379
  %385 = load i8*, i8** %16, align 8
  %386 = getelementptr inbounds i8, i8* %385, i64 6
  %387 = load i8, i8* %386, align 1
  %388 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  %389 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %388, i32 0, i32 1
  store i8 %387, i8* %389, align 4
  %390 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  %391 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %390, i32 0, i32 2
  store i32 1, i32* %391, align 8
  %392 = load i8*, i8** %14, align 8
  %393 = getelementptr inbounds i8, i8* %392, i64 7
  store i8* %393, i8** %14, align 8
  br label %394

394:                                              ; preds = %384, %379
  br label %395

395:                                              ; preds = %394, %372, %369
  %396 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  %397 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 8
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %442

400:                                              ; preds = %395
  %401 = load %struct.file_info*, %struct.file_info** %11, align 8
  %402 = getelementptr inbounds %struct.file_info, %struct.file_info* %401, i32 0, i32 16
  store i64 0, i64* %402, align 8
  %403 = load %struct.file_info*, %struct.file_info** %11, align 8
  %404 = getelementptr inbounds %struct.file_info, %struct.file_info* %403, i32 0, i32 15
  store i64 0, i64* %404, align 8
  %405 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  %406 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %405, i32 0, i32 1
  %407 = load i8, i8* %406, align 4
  %408 = zext i8 %407 to i32
  %409 = load i8*, i8** %14, align 8
  %410 = sext i32 %408 to i64
  %411 = getelementptr inbounds i8, i8* %409, i64 %410
  store i8* %411, i8** %14, align 8
  %412 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %413 = load %struct.file_info*, %struct.file_info** %11, align 8
  %414 = load i8*, i8** %14, align 8
  %415 = load i8*, i8** %15, align 8
  %416 = call i32 @parse_rockridge(%struct.archive_read* %412, %struct.file_info* %413, i8* %414, i8* %415)
  store i32 %416, i32* %22, align 4
  %417 = load i32, i32* %22, align 4
  %418 = load i32, i32* @ARCHIVE_OK, align 4
  %419 = icmp ne i32 %417, %418
  br i1 %419, label %420, label %421

420:                                              ; preds = %400
  br label %675

421:                                              ; preds = %400
  %422 = load %struct.file_info*, %struct.file_info** %11, align 8
  %423 = getelementptr inbounds %struct.file_info, %struct.file_info* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 4
  %425 = icmp sgt i32 %424, 0
  br i1 %425, label %426, label %441

426:                                              ; preds = %421
  %427 = load %struct.file_info*, %struct.file_info** %11, align 8
  %428 = getelementptr inbounds %struct.file_info, %struct.file_info* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 8
  %430 = load i32, i32* @AE_IFMT, align 4
  %431 = and i32 %429, %430
  %432 = load i32, i32* @AE_IFLNK, align 4
  %433 = icmp eq i32 %431, %432
  br i1 %433, label %434, label %441

434:                                              ; preds = %426
  %435 = load %struct.file_info*, %struct.file_info** %11, align 8
  %436 = getelementptr inbounds %struct.file_info, %struct.file_info* %435, i32 0, i32 1
  store i32 0, i32* %436, align 4
  %437 = load %struct.file_info*, %struct.file_info** %11, align 8
  %438 = getelementptr inbounds %struct.file_info, %struct.file_info* %437, i32 0, i32 5
  store i32 -1, i32* %438, align 8
  %439 = load %struct.file_info*, %struct.file_info** %11, align 8
  %440 = getelementptr inbounds %struct.file_info, %struct.file_info* %439, i32 0, i32 0
  store i32 -1, i32* %440, align 8
  br label %441

441:                                              ; preds = %434, %426, %421
  br label %445

442:                                              ; preds = %395
  %443 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  %444 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %443, i32 0, i32 5
  store i64 0, i64* %444, align 8
  br label %445

445:                                              ; preds = %442, %441
  br label %446

446:                                              ; preds = %445, %364
  %447 = load %struct.file_info*, %struct.file_info** %11, align 8
  %448 = getelementptr inbounds %struct.file_info, %struct.file_info* %447, i32 0, i32 6
  store i32 1, i32* %448, align 4
  %449 = load %struct.file_info*, %struct.file_info** %7, align 8
  %450 = icmp ne %struct.file_info* %449, null
  br i1 %450, label %451, label %460

451:                                              ; preds = %446
  %452 = load i32, i32* %21, align 4
  %453 = and i32 %452, 2
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %460

455:                                              ; preds = %451
  %456 = load %struct.file_info*, %struct.file_info** %7, align 8
  %457 = getelementptr inbounds %struct.file_info, %struct.file_info* %456, i32 0, i32 13
  %458 = load i32, i32* %457, align 8
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %457, align 8
  br label %460

460:                                              ; preds = %455, %451, %446
  %461 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  %462 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %461, i32 0, i32 4
  %463 = load i64, i64* %462, align 8
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %670

465:                                              ; preds = %460
  %466 = load %struct.file_info*, %struct.file_info** %7, align 8
  %467 = icmp ne %struct.file_info* %466, null
  br i1 %467, label %468, label %516

468:                                              ; preds = %465
  %469 = load %struct.file_info*, %struct.file_info** %7, align 8
  %470 = getelementptr inbounds %struct.file_info, %struct.file_info* %469, i32 0, i32 12
  %471 = load %struct.file_info*, %struct.file_info** %470, align 8
  %472 = icmp eq %struct.file_info* %471, null
  br i1 %472, label %473, label %516

473:                                              ; preds = %468
  %474 = load i32, i32* %21, align 4
  %475 = and i32 %474, 2
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %516

477:                                              ; preds = %473
  %478 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  %479 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %478, i32 0, i32 3
  %480 = load %struct.file_info*, %struct.file_info** %479, align 8
  %481 = icmp eq %struct.file_info* %480, null
  br i1 %481, label %482, label %516

482:                                              ; preds = %477
  %483 = load %struct.file_info*, %struct.file_info** %11, align 8
  %484 = getelementptr inbounds %struct.file_info, %struct.file_info* %483, i32 0, i32 11
  %485 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %484, i32 0, i32 0
  %486 = load i64, i64* %485, align 8
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %488, label %516

488:                                              ; preds = %482
  %489 = load %struct.file_info*, %struct.file_info** %11, align 8
  %490 = getelementptr inbounds %struct.file_info, %struct.file_info* %489, i32 0, i32 11
  %491 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %490, i32 0, i32 0
  %492 = load i64, i64* %491, align 8
  %493 = call i64 @strcmp(i64 %492, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %494 = icmp eq i64 %493, 0
  br i1 %494, label %502, label %495

495:                                              ; preds = %488
  %496 = load %struct.file_info*, %struct.file_info** %11, align 8
  %497 = getelementptr inbounds %struct.file_info, %struct.file_info* %496, i32 0, i32 11
  %498 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %497, i32 0, i32 0
  %499 = load i64, i64* %498, align 8
  %500 = call i64 @strcmp(i64 %499, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %501 = icmp eq i64 %500, 0
  br i1 %501, label %502, label %516

502:                                              ; preds = %495, %488
  %503 = load %struct.file_info*, %struct.file_info** %11, align 8
  %504 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  %505 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %504, i32 0, i32 3
  store %struct.file_info* %503, %struct.file_info** %505, align 8
  %506 = load %struct.file_info*, %struct.file_info** %11, align 8
  %507 = getelementptr inbounds %struct.file_info, %struct.file_info* %506, i32 0, i32 7
  store i32 1, i32* %507, align 8
  %508 = load %struct.file_info*, %struct.file_info** %11, align 8
  %509 = getelementptr inbounds %struct.file_info, %struct.file_info* %508, i32 0, i32 8
  store i32 1, i32* %509, align 4
  %510 = load %struct.file_info*, %struct.file_info** %11, align 8
  %511 = getelementptr inbounds %struct.file_info, %struct.file_info* %510, i32 0, i32 14
  store i64 0, i64* %511, align 8
  %512 = load %struct.file_info*, %struct.file_info** %7, align 8
  %513 = getelementptr inbounds %struct.file_info, %struct.file_info* %512, i32 0, i32 13
  %514 = load i32, i32* %513, align 8
  %515 = add nsw i32 %514, -1
  store i32 %515, i32* %513, align 8
  br label %588

516:                                              ; preds = %495, %482, %477, %473, %468, %465
  %517 = load %struct.file_info*, %struct.file_info** %11, align 8
  %518 = getelementptr inbounds %struct.file_info, %struct.file_info* %517, i32 0, i32 14
  %519 = load i64, i64* %518, align 8
  %520 = icmp ne i64 %519, 0
  br i1 %520, label %521, label %554

521:                                              ; preds = %516
  %522 = load %struct.file_info*, %struct.file_info** %7, align 8
  %523 = icmp eq %struct.file_info* %522, null
  br i1 %523, label %529, label %524

524:                                              ; preds = %521
  %525 = load %struct.file_info*, %struct.file_info** %7, align 8
  %526 = getelementptr inbounds %struct.file_info, %struct.file_info* %525, i32 0, i32 7
  %527 = load i32, i32* %526, align 8
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %534

529:                                              ; preds = %524, %521
  %530 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %531 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %530, i32 0, i32 0
  %532 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %533 = call i32 @archive_set_error(i32* %531, i32 %532, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %675

534:                                              ; preds = %524
  %535 = load %struct.file_info*, %struct.file_info** %11, align 8
  %536 = getelementptr inbounds %struct.file_info, %struct.file_info* %535, i32 0, i32 9
  %537 = load i32, i32* %536, align 8
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %544

539:                                              ; preds = %534
  %540 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %541 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %540, i32 0, i32 0
  %542 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %543 = call i32 @archive_set_error(i32* %541, i32 %542, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %675

544:                                              ; preds = %534
  %545 = load i32, i32* %21, align 4
  %546 = and i32 %545, 2
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %553

548:                                              ; preds = %544
  %549 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %550 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %549, i32 0, i32 0
  %551 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %552 = call i32 @archive_set_error(i32* %550, i32 %551, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %675

553:                                              ; preds = %544
  br label %587

554:                                              ; preds = %516
  %555 = load %struct.file_info*, %struct.file_info** %7, align 8
  %556 = icmp ne %struct.file_info* %555, null
  br i1 %556, label %557, label %565

557:                                              ; preds = %554
  %558 = load %struct.file_info*, %struct.file_info** %7, align 8
  %559 = getelementptr inbounds %struct.file_info, %struct.file_info* %558, i32 0, i32 7
  %560 = load i32, i32* %559, align 8
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %562, label %565

562:                                              ; preds = %557
  %563 = load %struct.file_info*, %struct.file_info** %11, align 8
  %564 = getelementptr inbounds %struct.file_info, %struct.file_info* %563, i32 0, i32 8
  store i32 0, i32* %564, align 4
  br label %586

565:                                              ; preds = %557, %554
  %566 = load %struct.file_info*, %struct.file_info** %7, align 8
  %567 = icmp ne %struct.file_info* %566, null
  br i1 %567, label %568, label %585

568:                                              ; preds = %565
  %569 = load i32, i32* %21, align 4
  %570 = and i32 %569, 2
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %585

572:                                              ; preds = %568
  %573 = load %struct.file_info*, %struct.file_info** %7, align 8
  %574 = getelementptr inbounds %struct.file_info, %struct.file_info* %573, i32 0, i32 14
  %575 = load i64, i64* %574, align 8
  %576 = icmp ne i64 %575, 0
  br i1 %576, label %582, label %577

577:                                              ; preds = %572
  %578 = load %struct.file_info*, %struct.file_info** %7, align 8
  %579 = getelementptr inbounds %struct.file_info, %struct.file_info* %578, i32 0, i32 10
  %580 = load i32, i32* %579, align 4
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %582, label %585

582:                                              ; preds = %577, %572
  %583 = load %struct.file_info*, %struct.file_info** %11, align 8
  %584 = getelementptr inbounds %struct.file_info, %struct.file_info* %583, i32 0, i32 10
  store i32 1, i32* %584, align 4
  br label %585

585:                                              ; preds = %582, %577, %568, %565
  br label %586

586:                                              ; preds = %585, %562
  br label %587

587:                                              ; preds = %586, %553
  br label %588

588:                                              ; preds = %587, %502
  %589 = load %struct.file_info*, %struct.file_info** %11, align 8
  %590 = getelementptr inbounds %struct.file_info, %struct.file_info* %589, i32 0, i32 9
  %591 = load i32, i32* %590, align 8
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %669

593:                                              ; preds = %588
  %594 = load %struct.file_info*, %struct.file_info** %7, align 8
  %595 = icmp eq %struct.file_info* %594, null
  br i1 %595, label %601, label %596

596:                                              ; preds = %593
  %597 = load %struct.file_info*, %struct.file_info** %7, align 8
  %598 = getelementptr inbounds %struct.file_info, %struct.file_info* %597, i32 0, i32 12
  %599 = load %struct.file_info*, %struct.file_info** %598, align 8
  %600 = icmp eq %struct.file_info* %599, null
  br i1 %600, label %601, label %606

601:                                              ; preds = %596, %593
  %602 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %603 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %602, i32 0, i32 0
  %604 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %605 = call i32 @archive_set_error(i32* %603, i32 %604, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %675

606:                                              ; preds = %596
  %607 = load i32, i32* %21, align 4
  %608 = and i32 %607, 2
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %610, label %615

610:                                              ; preds = %606
  %611 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %612 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %611, i32 0, i32 0
  %613 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %614 = call i32 @archive_set_error(i32* %612, i32 %613, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %675

615:                                              ; preds = %606
  %616 = load %struct.file_info*, %struct.file_info** %7, align 8
  %617 = getelementptr inbounds %struct.file_info, %struct.file_info* %616, i32 0, i32 13
  %618 = load i32, i32* %617, align 8
  %619 = add nsw i32 %618, 1
  store i32 %619, i32* %617, align 8
  %620 = load %struct.file_info*, %struct.file_info** %11, align 8
  %621 = getelementptr inbounds %struct.file_info, %struct.file_info* %620, i32 0, i32 9
  %622 = load i32, i32* %621, align 8
  %623 = add nsw i32 %622, 1
  %624 = load %struct.file_info*, %struct.file_info** %11, align 8
  %625 = getelementptr inbounds %struct.file_info, %struct.file_info* %624, i32 0, i32 5
  store i32 %623, i32* %625, align 8
  %626 = load %struct.file_info*, %struct.file_info** %11, align 8
  %627 = getelementptr inbounds %struct.file_info, %struct.file_info* %626, i32 0, i32 0
  store i32 %623, i32* %627, align 8
  %628 = load %struct.file_info*, %struct.file_info** %7, align 8
  store %struct.file_info* %628, %struct.file_info** %23, align 8
  br label %629

629:                                              ; preds = %646, %615
  %630 = load %struct.file_info*, %struct.file_info** %23, align 8
  %631 = icmp ne %struct.file_info* %630, null
  br i1 %631, label %632, label %650

632:                                              ; preds = %629
  %633 = load %struct.file_info*, %struct.file_info** %23, align 8
  %634 = getelementptr inbounds %struct.file_info, %struct.file_info* %633, i32 0, i32 0
  %635 = load i32, i32* %634, align 8
  %636 = load %struct.file_info*, %struct.file_info** %11, align 8
  %637 = getelementptr inbounds %struct.file_info, %struct.file_info* %636, i32 0, i32 9
  %638 = load i32, i32* %637, align 8
  %639 = icmp eq i32 %635, %638
  br i1 %639, label %640, label %645

640:                                              ; preds = %632
  %641 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %642 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %641, i32 0, i32 0
  %643 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %644 = call i32 @archive_set_error(i32* %642, i32 %643, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %675

645:                                              ; preds = %632
  br label %646

646:                                              ; preds = %645
  %647 = load %struct.file_info*, %struct.file_info** %23, align 8
  %648 = getelementptr inbounds %struct.file_info, %struct.file_info* %647, i32 0, i32 12
  %649 = load %struct.file_info*, %struct.file_info** %648, align 8
  store %struct.file_info* %649, %struct.file_info** %23, align 8
  br label %629

650:                                              ; preds = %629
  %651 = load %struct.file_info*, %struct.file_info** %11, align 8
  %652 = getelementptr inbounds %struct.file_info, %struct.file_info* %651, i32 0, i32 9
  %653 = load i32, i32* %652, align 8
  %654 = load %struct.file_info*, %struct.file_info** %11, align 8
  %655 = getelementptr inbounds %struct.file_info, %struct.file_info* %654, i32 0, i32 0
  %656 = load i32, i32* %655, align 8
  %657 = icmp eq i32 %653, %656
  br i1 %657, label %663, label %658

658:                                              ; preds = %650
  %659 = load %struct.file_info*, %struct.file_info** %7, align 8
  %660 = getelementptr inbounds %struct.file_info, %struct.file_info* %659, i32 0, i32 7
  %661 = load i32, i32* %660, align 8
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %663, label %668

663:                                              ; preds = %658, %650
  %664 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %665 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %664, i32 0, i32 0
  %666 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %667 = call i32 @archive_set_error(i32* %665, i32 %666, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %675

668:                                              ; preds = %658
  br label %669

669:                                              ; preds = %668, %588
  br label %670

670:                                              ; preds = %669, %460
  %671 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  %672 = load %struct.file_info*, %struct.file_info** %11, align 8
  %673 = call i32 @register_file(%struct.iso9660* %671, %struct.file_info* %672)
  %674 = load %struct.file_info*, %struct.file_info** %11, align 8
  store %struct.file_info* %674, %struct.file_info** %5, align 8
  br label %681

675:                                              ; preds = %663, %640, %610, %601, %548, %539, %529, %420, %260
  %676 = load %struct.file_info*, %struct.file_info** %11, align 8
  %677 = getelementptr inbounds %struct.file_info, %struct.file_info* %676, i32 0, i32 11
  %678 = call i32 @archive_string_free(%struct.TYPE_7__* %677)
  %679 = load %struct.file_info*, %struct.file_info** %11, align 8
  %680 = call i32 @free(%struct.file_info* %679)
  store %struct.file_info* null, %struct.file_info** %5, align 8
  br label %681

681:                                              ; preds = %675, %670, %151, %136, %114, %103, %77, %48
  %682 = load %struct.file_info*, %struct.file_info** %5, align 8
  ret %struct.file_info* %682
}

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i64 @archive_le32dec(i8*) #1

declare dso_local i32 @toi(i8*, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @isodate7(i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @archive_strncpy(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @parse_rockridge(%struct.archive_read*, %struct.file_info*, i8*, i8*) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32 @register_file(%struct.iso9660*, %struct.file_info*) #1

declare dso_local i32 @archive_string_free(%struct.TYPE_7__*) #1

declare dso_local i32 @free(%struct.file_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
