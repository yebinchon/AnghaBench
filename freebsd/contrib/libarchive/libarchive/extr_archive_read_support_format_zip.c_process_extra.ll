; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_process_extra.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_process_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.archive_entry = type { i32 }
%struct.zip_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i8, i8 }
%struct.zip = type { i64 (i32, i8*, i32)*, i32*, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Too-small extra data: Need at least 4 bytes, but only found %d bytes\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Extra data overflow: Need %d bytes but only found %d bytes\00", align 1
@LA_USED_ZIP64 = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Malformed 64-bit uncompressed size\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Malformed 64-bit compressed size\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Malformed 64-bit local header offset\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Incomplete extended time field\00", align 1
@AE_IFDIR = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Incomplete AES field\00", align 1
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*, i8*, i64, %struct.zip_entry*)* @process_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_extra(%struct.archive_read* %0, %struct.archive_entry* %1, i8* %2, i64 %3, %struct.zip_entry* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_read*, align 8
  %8 = alloca %struct.archive_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.zip_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.zip*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %7, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.zip_entry* %4, %struct.zip_entry** %11, align 8
  store i32 0, i32* %12, align 4
  %31 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %32 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.zip*
  store %struct.zip* %36, %struct.zip** %13, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %5
  %40 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %40, i32* %6, align 4
  br label %824

41:                                               ; preds = %5
  %42 = load i64, i64* %10, align 8
  %43 = icmp ult i64 %42, 4
  br i1 %43, label %44, label %70

44:                                               ; preds = %41
  store i64 0, i64* %14, align 8
  br label %45

45:                                               ; preds = %65, %44
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = load i8*, i8** %9, align 8
  %51 = load i64, i64* %14, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %58 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %57, i32 0, i32 0
  %59 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %60 = load i64, i64* %10, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %58, i32 %59, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %63, i32* %6, align 4
  br label %824

64:                                               ; preds = %49
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %14, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %14, align 8
  br label %45

68:                                               ; preds = %45
  %69 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %69, i32* %6, align 4
  br label %824

70:                                               ; preds = %41
  br label %71

71:                                               ; preds = %817, %70
  %72 = load i32, i32* %12, align 4
  %73 = zext i32 %72 to i64
  %74 = load i64, i64* %10, align 8
  %75 = sub i64 %74, 4
  %76 = icmp ule i64 %73, %75
  br i1 %76, label %77, label %822

77:                                               ; preds = %71
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* %12, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = call i32 @archive_le16dec(i8* %81)
  %83 = trunc i32 %82 to i16
  store i16 %83, i16* %15, align 2
  %84 = load i8*, i8** %9, align 8
  %85 = load i32, i32* %12, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = getelementptr inbounds i8, i8* %87, i64 2
  %89 = call i32 @archive_le16dec(i8* %88)
  %90 = trunc i32 %89 to i16
  store i16 %90, i16* %16, align 2
  %91 = load i32, i32* %12, align 4
  %92 = add i32 %91, 4
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i16, i16* %16, align 2
  %95 = zext i16 %94 to i32
  %96 = add i32 %93, %95
  %97 = zext i32 %96 to i64
  %98 = load i64, i64* %10, align 8
  %99 = icmp ugt i64 %97, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %77
  %101 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %102 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %101, i32 0, i32 0
  %103 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %104 = load i16, i16* %16, align 2
  %105 = zext i16 %104 to i32
  %106 = load i64, i64* %10, align 8
  %107 = load i32, i32* %12, align 4
  %108 = zext i32 %107 to i64
  %109 = sub i64 %106, %108
  %110 = trunc i64 %109 to i32
  %111 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %102, i32 %103, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %110)
  %112 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %112, i32* %6, align 4
  br label %824

113:                                              ; preds = %77
  %114 = load i16, i16* %15, align 2
  %115 = zext i16 %114 to i32
  switch i32 %115, label %816 [
    i32 1, label %116
    i32 21589, label %224
    i32 22613, label %314
    i32 27768, label %356
    i32 28789, label %544
    i32 30805, label %620
    i32 30837, label %646
    i32 39169, label %760
  ]

116:                                              ; preds = %113
  %117 = load i32, i32* @LA_USED_ZIP64, align 4
  %118 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %119 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %118, i32 0, i32 11
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %123 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %155

126:                                              ; preds = %116
  store i8* null, i8** %17, align 8
  %127 = load i16, i16* %16, align 2
  %128 = zext i16 %127 to i32
  %129 = icmp slt i32 %128, 8
  br i1 %129, label %138, label %130

130:                                              ; preds = %126
  %131 = load i8*, i8** %9, align 8
  %132 = load i32, i32* %12, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = call i8* @archive_le64dec(i8* %134)
  store i8* %135, i8** %17, align 8
  %136 = load i8*, i8** @INT64_MAX, align 8
  %137 = icmp ugt i8* %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %130, %126
  %139 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %140 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %139, i32 0, i32 0
  %141 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %142 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %140, i32 %141, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %143 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %143, i32* %6, align 4
  br label %824

144:                                              ; preds = %130
  %145 = load i8*, i8** %17, align 8
  %146 = ptrtoint i8* %145 to i32
  %147 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %148 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* %12, align 4
  %150 = add i32 %149, 8
  store i32 %150, i32* %12, align 4
  %151 = load i16, i16* %16, align 2
  %152 = zext i16 %151 to i32
  %153 = sub nsw i32 %152, 8
  %154 = trunc i32 %153 to i16
  store i16 %154, i16* %16, align 2
  br label %155

155:                                              ; preds = %144, %116
  %156 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %157 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %160, label %189

160:                                              ; preds = %155
  store i8* null, i8** %18, align 8
  %161 = load i16, i16* %16, align 2
  %162 = zext i16 %161 to i32
  %163 = icmp slt i32 %162, 8
  br i1 %163, label %172, label %164

164:                                              ; preds = %160
  %165 = load i8*, i8** %9, align 8
  %166 = load i32, i32* %12, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  %169 = call i8* @archive_le64dec(i8* %168)
  store i8* %169, i8** %18, align 8
  %170 = load i8*, i8** @INT64_MAX, align 8
  %171 = icmp ugt i8* %169, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %164, %160
  %173 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %174 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %173, i32 0, i32 0
  %175 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %176 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %174, i32 %175, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %177 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %177, i32* %6, align 4
  br label %824

178:                                              ; preds = %164
  %179 = load i8*, i8** %18, align 8
  %180 = ptrtoint i8* %179 to i32
  %181 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %182 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* %12, align 4
  %184 = add i32 %183, 8
  store i32 %184, i32* %12, align 4
  %185 = load i16, i16* %16, align 2
  %186 = zext i16 %185 to i32
  %187 = sub nsw i32 %186, 8
  %188 = trunc i32 %187 to i16
  store i16 %188, i16* %16, align 2
  br label %189

189:                                              ; preds = %178, %155
  %190 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %191 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, -1
  br i1 %193, label %194, label %223

194:                                              ; preds = %189
  store i8* null, i8** %19, align 8
  %195 = load i16, i16* %16, align 2
  %196 = zext i16 %195 to i32
  %197 = icmp slt i32 %196, 8
  br i1 %197, label %206, label %198

198:                                              ; preds = %194
  %199 = load i8*, i8** %9, align 8
  %200 = load i32, i32* %12, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  %203 = call i8* @archive_le64dec(i8* %202)
  store i8* %203, i8** %19, align 8
  %204 = load i8*, i8** @INT64_MAX, align 8
  %205 = icmp ugt i8* %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %198, %194
  %207 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %208 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %207, i32 0, i32 0
  %209 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %210 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %208, i32 %209, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %211 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %211, i32* %6, align 4
  br label %824

212:                                              ; preds = %198
  %213 = load i8*, i8** %19, align 8
  %214 = ptrtoint i8* %213 to i32
  %215 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %216 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %215, i32 0, i32 2
  store i32 %214, i32* %216, align 4
  %217 = load i32, i32* %12, align 4
  %218 = add i32 %217, 8
  store i32 %218, i32* %12, align 4
  %219 = load i16, i16* %16, align 2
  %220 = zext i16 %219 to i32
  %221 = sub nsw i32 %220, 8
  %222 = trunc i32 %221 to i16
  store i16 %222, i16* %16, align 2
  br label %223

223:                                              ; preds = %212, %189
  br label %817

224:                                              ; preds = %113
  %225 = load i16, i16* %16, align 2
  %226 = zext i16 %225 to i32
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %224
  %229 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %230 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %229, i32 0, i32 0
  %231 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %232 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %230, i32 %231, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %233 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %233, i32* %6, align 4
  br label %824

234:                                              ; preds = %224
  %235 = load i8*, i8** %9, align 8
  %236 = load i32, i32* %12, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds i8, i8* %235, i64 %237
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  store i32 %240, i32* %20, align 4
  %241 = load i32, i32* %12, align 4
  %242 = add i32 %241, 1
  store i32 %242, i32* %12, align 4
  %243 = load i16, i16* %16, align 2
  %244 = add i16 %243, -1
  store i16 %244, i16* %16, align 2
  %245 = load i32, i32* %20, align 4
  %246 = and i32 %245, 1
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %267

248:                                              ; preds = %234
  %249 = load i16, i16* %16, align 2
  %250 = zext i16 %249 to i32
  %251 = icmp slt i32 %250, 4
  br i1 %251, label %252, label %253

252:                                              ; preds = %248
  br label %817

253:                                              ; preds = %248
  %254 = load i8*, i8** %9, align 8
  %255 = load i32, i32* %12, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %254, i64 %256
  %258 = call i32 @archive_le32dec(i8* %257)
  %259 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %260 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %259, i32 0, i32 3
  store i32 %258, i32* %260, align 4
  %261 = load i32, i32* %12, align 4
  %262 = add i32 %261, 4
  store i32 %262, i32* %12, align 4
  %263 = load i16, i16* %16, align 2
  %264 = zext i16 %263 to i32
  %265 = sub nsw i32 %264, 4
  %266 = trunc i32 %265 to i16
  store i16 %266, i16* %16, align 2
  br label %267

267:                                              ; preds = %253, %234
  %268 = load i32, i32* %20, align 4
  %269 = and i32 %268, 2
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %290

271:                                              ; preds = %267
  %272 = load i16, i16* %16, align 2
  %273 = zext i16 %272 to i32
  %274 = icmp slt i32 %273, 4
  br i1 %274, label %275, label %276

275:                                              ; preds = %271
  br label %817

276:                                              ; preds = %271
  %277 = load i8*, i8** %9, align 8
  %278 = load i32, i32* %12, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds i8, i8* %277, i64 %279
  %281 = call i32 @archive_le32dec(i8* %280)
  %282 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %283 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %282, i32 0, i32 4
  store i32 %281, i32* %283, align 4
  %284 = load i32, i32* %12, align 4
  %285 = add i32 %284, 4
  store i32 %285, i32* %12, align 4
  %286 = load i16, i16* %16, align 2
  %287 = zext i16 %286 to i32
  %288 = sub nsw i32 %287, 4
  %289 = trunc i32 %288 to i16
  store i16 %289, i16* %16, align 2
  br label %290

290:                                              ; preds = %276, %267
  %291 = load i32, i32* %20, align 4
  %292 = and i32 %291, 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %313

294:                                              ; preds = %290
  %295 = load i16, i16* %16, align 2
  %296 = zext i16 %295 to i32
  %297 = icmp slt i32 %296, 4
  br i1 %297, label %298, label %299

298:                                              ; preds = %294
  br label %817

299:                                              ; preds = %294
  %300 = load i8*, i8** %9, align 8
  %301 = load i32, i32* %12, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds i8, i8* %300, i64 %302
  %304 = call i32 @archive_le32dec(i8* %303)
  %305 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %306 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %305, i32 0, i32 5
  store i32 %304, i32* %306, align 4
  %307 = load i32, i32* %12, align 4
  %308 = add i32 %307, 4
  store i32 %308, i32* %12, align 4
  %309 = load i16, i16* %16, align 2
  %310 = zext i16 %309 to i32
  %311 = sub nsw i32 %310, 4
  %312 = trunc i32 %311 to i16
  store i16 %312, i16* %16, align 2
  br label %313

313:                                              ; preds = %299, %290
  br label %817

314:                                              ; preds = %113
  %315 = load i16, i16* %16, align 2
  %316 = zext i16 %315 to i32
  %317 = icmp sge i32 %316, 8
  br i1 %317, label %318, label %334

318:                                              ; preds = %314
  %319 = load i8*, i8** %9, align 8
  %320 = load i32, i32* %12, align 4
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds i8, i8* %319, i64 %321
  %323 = call i32 @archive_le32dec(i8* %322)
  %324 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %325 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %324, i32 0, i32 4
  store i32 %323, i32* %325, align 4
  %326 = load i8*, i8** %9, align 8
  %327 = load i32, i32* %12, align 4
  %328 = zext i32 %327 to i64
  %329 = getelementptr inbounds i8, i8* %326, i64 %328
  %330 = getelementptr inbounds i8, i8* %329, i64 4
  %331 = call i32 @archive_le32dec(i8* %330)
  %332 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %333 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %332, i32 0, i32 3
  store i32 %331, i32* %333, align 4
  br label %334

334:                                              ; preds = %318, %314
  %335 = load i16, i16* %16, align 2
  %336 = zext i16 %335 to i32
  %337 = icmp sge i32 %336, 12
  br i1 %337, label %338, label %355

338:                                              ; preds = %334
  %339 = load i8*, i8** %9, align 8
  %340 = load i32, i32* %12, align 4
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds i8, i8* %339, i64 %341
  %343 = getelementptr inbounds i8, i8* %342, i64 8
  %344 = call i32 @archive_le16dec(i8* %343)
  %345 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %346 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %345, i32 0, i32 6
  store i32 %344, i32* %346, align 4
  %347 = load i8*, i8** %9, align 8
  %348 = load i32, i32* %12, align 4
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds i8, i8* %347, i64 %349
  %351 = getelementptr inbounds i8, i8* %350, i64 10
  %352 = call i32 @archive_le16dec(i8* %351)
  %353 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %354 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %353, i32 0, i32 7
  store i32 %352, i32* %354, align 4
  br label %355

355:                                              ; preds = %338, %334
  br label %817

356:                                              ; preds = %113
  %357 = load i16, i16* %16, align 2
  %358 = zext i16 %357 to i32
  %359 = icmp slt i32 %358, 1
  br i1 %359, label %360, label %361

360:                                              ; preds = %356
  br label %817

361:                                              ; preds = %356
  %362 = load i8*, i8** %9, align 8
  %363 = load i32, i32* %12, align 4
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds i8, i8* %362, i64 %364
  %366 = load i8, i8* %365, align 1
  %367 = sext i8 %366 to i32
  %368 = and i32 255, %367
  store i32 %368, i32* %21, align 4
  store i32 %368, i32* %22, align 4
  %369 = load i32, i32* %12, align 4
  %370 = add i32 %369, 1
  store i32 %370, i32* %12, align 4
  %371 = load i16, i16* %16, align 2
  %372 = zext i16 %371 to i32
  %373 = sub nsw i32 %372, 1
  %374 = trunc i32 %373 to i16
  store i16 %374, i16* %16, align 2
  br label %375

375:                                              ; preds = %385, %361
  %376 = load i32, i32* %22, align 4
  %377 = and i32 %376, 128
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %383

379:                                              ; preds = %375
  %380 = load i16, i16* %16, align 2
  %381 = zext i16 %380 to i32
  %382 = icmp sge i32 %381, 1
  br label %383

383:                                              ; preds = %379, %375
  %384 = phi i1 [ false, %375 ], [ %382, %379 ]
  br i1 %384, label %385, label %398

385:                                              ; preds = %383
  %386 = load i8*, i8** %9, align 8
  %387 = load i32, i32* %12, align 4
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds i8, i8* %386, i64 %388
  %390 = load i8, i8* %389, align 1
  %391 = sext i8 %390 to i32
  store i32 %391, i32* %22, align 4
  %392 = load i32, i32* %12, align 4
  %393 = add i32 %392, 1
  store i32 %393, i32* %12, align 4
  %394 = load i16, i16* %16, align 2
  %395 = zext i16 %394 to i32
  %396 = sub nsw i32 %395, 1
  %397 = trunc i32 %396 to i16
  store i16 %397, i16* %16, align 2
  br label %375

398:                                              ; preds = %383
  %399 = load i32, i32* %21, align 4
  %400 = and i32 %399, 1
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %422

402:                                              ; preds = %398
  %403 = load i16, i16* %16, align 2
  %404 = zext i16 %403 to i32
  %405 = icmp slt i32 %404, 2
  br i1 %405, label %406, label %407

406:                                              ; preds = %402
  br label %817

407:                                              ; preds = %402
  %408 = load i8*, i8** %9, align 8
  %409 = load i32, i32* %12, align 4
  %410 = zext i32 %409 to i64
  %411 = getelementptr inbounds i8, i8* %408, i64 %410
  %412 = call i32 @archive_le16dec(i8* %411)
  %413 = ashr i32 %412, 8
  %414 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %415 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %414, i32 0, i32 8
  store i32 %413, i32* %415, align 4
  %416 = load i32, i32* %12, align 4
  %417 = add i32 %416, 2
  store i32 %417, i32* %12, align 4
  %418 = load i16, i16* %16, align 2
  %419 = zext i16 %418 to i32
  %420 = sub nsw i32 %419, 2
  %421 = trunc i32 %420 to i16
  store i16 %421, i16* %16, align 2
  br label %422

422:                                              ; preds = %407, %398
  %423 = load i32, i32* %21, align 4
  %424 = and i32 %423, 2
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %444

426:                                              ; preds = %422
  %427 = load i16, i16* %16, align 2
  %428 = zext i16 %427 to i32
  %429 = icmp slt i32 %428, 2
  br i1 %429, label %430, label %431

430:                                              ; preds = %426
  br label %817

431:                                              ; preds = %426
  %432 = load i8*, i8** %9, align 8
  %433 = load i32, i32* %12, align 4
  %434 = zext i32 %433 to i64
  %435 = getelementptr inbounds i8, i8* %432, i64 %434
  %436 = call i32 @archive_le16dec(i8* %435)
  store i32 %436, i32* %23, align 4
  %437 = load i32, i32* %23, align 4
  %438 = load i32, i32* %12, align 4
  %439 = add i32 %438, 2
  store i32 %439, i32* %12, align 4
  %440 = load i16, i16* %16, align 2
  %441 = zext i16 %440 to i32
  %442 = sub nsw i32 %441, 2
  %443 = trunc i32 %442 to i16
  store i16 %443, i16* %16, align 2
  br label %444

444:                                              ; preds = %431, %422
  %445 = load i32, i32* %21, align 4
  %446 = and i32 %445, 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %508

448:                                              ; preds = %444
  %449 = load i16, i16* %16, align 2
  %450 = zext i16 %449 to i32
  %451 = icmp slt i32 %450, 4
  br i1 %451, label %452, label %453

452:                                              ; preds = %448
  br label %817

453:                                              ; preds = %448
  %454 = load i8*, i8** %9, align 8
  %455 = load i32, i32* %12, align 4
  %456 = zext i32 %455 to i64
  %457 = getelementptr inbounds i8, i8* %454, i64 %456
  %458 = call i32 @archive_le32dec(i8* %457)
  store i32 %458, i32* %24, align 4
  %459 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %460 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %459, i32 0, i32 8
  %461 = load i32, i32* %460, align 4
  %462 = icmp eq i32 %461, 3
  br i1 %462, label %463, label %468

463:                                              ; preds = %453
  %464 = load i32, i32* %24, align 4
  %465 = ashr i32 %464, 16
  %466 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %467 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %466, i32 0, i32 9
  store i32 %465, i32* %467, align 4
  br label %501

468:                                              ; preds = %453
  %469 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %470 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %469, i32 0, i32 8
  %471 = load i32, i32* %470, align 4
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %497

473:                                              ; preds = %468
  %474 = load i32, i32* %24, align 4
  %475 = and i32 %474, 16
  %476 = icmp eq i32 16, %475
  br i1 %476, label %477, label %482

477:                                              ; preds = %473
  %478 = load i32, i32* @AE_IFDIR, align 4
  %479 = or i32 %478, 509
  %480 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %481 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %480, i32 0, i32 9
  store i32 %479, i32* %481, align 4
  br label %487

482:                                              ; preds = %473
  %483 = load i32, i32* @AE_IFREG, align 4
  %484 = or i32 %483, 436
  %485 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %486 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %485, i32 0, i32 9
  store i32 %484, i32* %486, align 4
  br label %487

487:                                              ; preds = %482, %477
  %488 = load i32, i32* %24, align 4
  %489 = and i32 %488, 1
  %490 = icmp eq i32 1, %489
  br i1 %490, label %491, label %496

491:                                              ; preds = %487
  %492 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %493 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %492, i32 0, i32 9
  %494 = load i32, i32* %493, align 4
  %495 = and i32 %494, 365
  store i32 %495, i32* %493, align 4
  br label %496

496:                                              ; preds = %491, %487
  br label %500

497:                                              ; preds = %468
  %498 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %499 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %498, i32 0, i32 9
  store i32 0, i32* %499, align 4
  br label %500

500:                                              ; preds = %497, %496
  br label %501

501:                                              ; preds = %500, %463
  %502 = load i32, i32* %12, align 4
  %503 = add i32 %502, 4
  store i32 %503, i32* %12, align 4
  %504 = load i16, i16* %16, align 2
  %505 = zext i16 %504 to i32
  %506 = sub nsw i32 %505, 4
  %507 = trunc i32 %506 to i16
  store i16 %507, i16* %16, align 2
  br label %508

508:                                              ; preds = %501, %444
  %509 = load i32, i32* %21, align 4
  %510 = and i32 %509, 8
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %543

512:                                              ; preds = %508
  %513 = load i16, i16* %16, align 2
  %514 = zext i16 %513 to i32
  %515 = icmp slt i32 %514, 2
  br i1 %515, label %516, label %517

516:                                              ; preds = %512
  br label %817

517:                                              ; preds = %512
  %518 = load i8*, i8** %9, align 8
  %519 = load i32, i32* %12, align 4
  %520 = zext i32 %519 to i64
  %521 = getelementptr inbounds i8, i8* %518, i64 %520
  %522 = call i32 @archive_le16dec(i8* %521)
  store i32 %522, i32* %25, align 4
  %523 = load i32, i32* %12, align 4
  %524 = add i32 %523, 2
  store i32 %524, i32* %12, align 4
  %525 = load i16, i16* %16, align 2
  %526 = zext i16 %525 to i32
  %527 = sub nsw i32 %526, 2
  %528 = trunc i32 %527 to i16
  store i16 %528, i16* %16, align 2
  %529 = load i16, i16* %16, align 2
  %530 = zext i16 %529 to i32
  %531 = load i32, i32* %25, align 4
  %532 = icmp slt i32 %530, %531
  br i1 %532, label %533, label %534

533:                                              ; preds = %517
  br label %817

534:                                              ; preds = %517
  %535 = load i32, i32* %25, align 4
  %536 = load i32, i32* %12, align 4
  %537 = add i32 %536, %535
  store i32 %537, i32* %12, align 4
  %538 = load i32, i32* %25, align 4
  %539 = load i16, i16* %16, align 2
  %540 = zext i16 %539 to i32
  %541 = sub nsw i32 %540, %538
  %542 = trunc i32 %541 to i16
  store i16 %542, i16* %16, align 2
  br label %543

543:                                              ; preds = %534, %508
  br label %817

544:                                              ; preds = %113
  %545 = load i16, i16* %16, align 2
  %546 = zext i16 %545 to i32
  %547 = icmp slt i32 %546, 5
  br i1 %547, label %551, label %548

548:                                              ; preds = %544
  %549 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %550 = icmp eq %struct.archive_entry* %549, null
  br i1 %550, label %551, label %552

551:                                              ; preds = %548, %544
  br label %817

552:                                              ; preds = %548
  %553 = load i32, i32* %12, align 4
  %554 = add i32 %553, 5
  store i32 %554, i32* %12, align 4
  %555 = load i16, i16* %16, align 2
  %556 = zext i16 %555 to i32
  %557 = sub nsw i32 %556, 5
  %558 = trunc i32 %557 to i16
  store i16 %558, i16* %16, align 2
  %559 = load %struct.zip*, %struct.zip** %13, align 8
  %560 = getelementptr inbounds %struct.zip, %struct.zip* %559, i32 0, i32 1
  %561 = load i32*, i32** %560, align 8
  %562 = icmp eq i32* %561, null
  br i1 %562, label %563, label %575

563:                                              ; preds = %552
  %564 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %565 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %564, i32 0, i32 0
  %566 = call i32* @archive_string_conversion_from_charset(i32* %565, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %567 = load %struct.zip*, %struct.zip** %13, align 8
  %568 = getelementptr inbounds %struct.zip, %struct.zip* %567, i32 0, i32 1
  store i32* %566, i32** %568, align 8
  %569 = load %struct.zip*, %struct.zip** %13, align 8
  %570 = getelementptr inbounds %struct.zip, %struct.zip* %569, i32 0, i32 1
  %571 = load i32*, i32** %570, align 8
  %572 = icmp eq i32* %571, null
  br i1 %572, label %573, label %574

573:                                              ; preds = %563
  br label %817

574:                                              ; preds = %563
  br label %575

575:                                              ; preds = %574, %552
  %576 = load %struct.zip*, %struct.zip** %13, align 8
  %577 = getelementptr inbounds %struct.zip, %struct.zip* %576, i32 0, i32 2
  %578 = load i32, i32* %577, align 8
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %606, label %580

580:                                              ; preds = %575
  %581 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %582 = call i8* @archive_entry_pathname(%struct.archive_entry* %581)
  store i8* %582, i8** %26, align 8
  %583 = load i8*, i8** %26, align 8
  %584 = icmp ne i8* %583, null
  br i1 %584, label %585, label %605

585:                                              ; preds = %580
  %586 = load %struct.zip*, %struct.zip** %13, align 8
  %587 = getelementptr inbounds %struct.zip, %struct.zip* %586, i32 0, i32 0
  %588 = load i64 (i32, i8*, i32)*, i64 (i32, i8*, i32)** %587, align 8
  %589 = load i8*, i8** %26, align 8
  %590 = load i8*, i8** %26, align 8
  %591 = call i32 @strlen(i8* %590)
  %592 = call i64 %588(i32 0, i8* %589, i32 %591)
  store i64 %592, i64* %27, align 8
  %593 = load i8*, i8** %9, align 8
  %594 = load i32, i32* %12, align 4
  %595 = zext i32 %594 to i64
  %596 = getelementptr inbounds i8, i8* %593, i64 %595
  %597 = getelementptr inbounds i8, i8* %596, i64 -4
  %598 = call i32 @archive_le32dec(i8* %597)
  %599 = sext i32 %598 to i64
  store i64 %599, i64* %28, align 8
  %600 = load i64, i64* %27, align 8
  %601 = load i64, i64* %28, align 8
  %602 = icmp ne i64 %600, %601
  br i1 %602, label %603, label %604

603:                                              ; preds = %585
  br label %817

604:                                              ; preds = %585
  br label %605

605:                                              ; preds = %604, %580
  br label %606

606:                                              ; preds = %605, %575
  %607 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %608 = load i8*, i8** %9, align 8
  %609 = load i32, i32* %12, align 4
  %610 = zext i32 %609 to i64
  %611 = getelementptr inbounds i8, i8* %608, i64 %610
  %612 = load i16, i16* %16, align 2
  %613 = load %struct.zip*, %struct.zip** %13, align 8
  %614 = getelementptr inbounds %struct.zip, %struct.zip* %613, i32 0, i32 1
  %615 = load i32*, i32** %614, align 8
  %616 = call i32 @archive_entry_copy_pathname_l(%struct.archive_entry* %607, i8* %611, i16 zeroext %612, i32* %615)
  %617 = icmp ne i32 %616, 0
  br i1 %617, label %618, label %619

618:                                              ; preds = %606
  br label %619

619:                                              ; preds = %618, %606
  br label %817

620:                                              ; preds = %113
  %621 = load i16, i16* %16, align 2
  %622 = zext i16 %621 to i32
  %623 = icmp sge i32 %622, 2
  br i1 %623, label %624, label %632

624:                                              ; preds = %620
  %625 = load i8*, i8** %9, align 8
  %626 = load i32, i32* %12, align 4
  %627 = zext i32 %626 to i64
  %628 = getelementptr inbounds i8, i8* %625, i64 %627
  %629 = call i32 @archive_le16dec(i8* %628)
  %630 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %631 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %630, i32 0, i32 6
  store i32 %629, i32* %631, align 4
  br label %632

632:                                              ; preds = %624, %620
  %633 = load i16, i16* %16, align 2
  %634 = zext i16 %633 to i32
  %635 = icmp sge i32 %634, 4
  br i1 %635, label %636, label %645

636:                                              ; preds = %632
  %637 = load i8*, i8** %9, align 8
  %638 = load i32, i32* %12, align 4
  %639 = zext i32 %638 to i64
  %640 = getelementptr inbounds i8, i8* %637, i64 %639
  %641 = getelementptr inbounds i8, i8* %640, i64 2
  %642 = call i32 @archive_le16dec(i8* %641)
  %643 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %644 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %643, i32 0, i32 7
  store i32 %642, i32* %644, align 4
  br label %645

645:                                              ; preds = %636, %632
  br label %817

646:                                              ; preds = %113
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %647 = load i16, i16* %16, align 2
  %648 = zext i16 %647 to i32
  %649 = icmp sge i32 %648, 1
  br i1 %649, label %650, label %759

650:                                              ; preds = %646
  %651 = load i8*, i8** %9, align 8
  %652 = load i32, i32* %12, align 4
  %653 = zext i32 %652 to i64
  %654 = getelementptr inbounds i8, i8* %651, i64 %653
  %655 = load i8, i8* %654, align 1
  %656 = sext i8 %655 to i32
  %657 = icmp eq i32 %656, 1
  br i1 %657, label %658, label %759

658:                                              ; preds = %650
  %659 = load i16, i16* %16, align 2
  %660 = zext i16 %659 to i32
  %661 = icmp sge i32 %660, 4
  br i1 %661, label %662, label %700

662:                                              ; preds = %658
  %663 = load i8*, i8** %9, align 8
  %664 = load i32, i32* %12, align 4
  %665 = add i32 %664, 1
  %666 = zext i32 %665 to i64
  %667 = getelementptr inbounds i8, i8* %663, i64 %666
  %668 = load i8, i8* %667, align 1
  %669 = sext i8 %668 to i32
  %670 = and i32 255, %669
  store i32 %670, i32* %29, align 4
  %671 = load i32, i32* %29, align 4
  %672 = icmp eq i32 %671, 2
  br i1 %672, label %673, label %682

673:                                              ; preds = %662
  %674 = load i8*, i8** %9, align 8
  %675 = load i32, i32* %12, align 4
  %676 = zext i32 %675 to i64
  %677 = getelementptr inbounds i8, i8* %674, i64 %676
  %678 = getelementptr inbounds i8, i8* %677, i64 2
  %679 = call i32 @archive_le16dec(i8* %678)
  %680 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %681 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %680, i32 0, i32 6
  store i32 %679, i32* %681, align 4
  br label %699

682:                                              ; preds = %662
  %683 = load i32, i32* %29, align 4
  %684 = icmp eq i32 %683, 4
  br i1 %684, label %685, label %698

685:                                              ; preds = %682
  %686 = load i16, i16* %16, align 2
  %687 = zext i16 %686 to i32
  %688 = icmp sge i32 %687, 6
  br i1 %688, label %689, label %698

689:                                              ; preds = %685
  %690 = load i8*, i8** %9, align 8
  %691 = load i32, i32* %12, align 4
  %692 = zext i32 %691 to i64
  %693 = getelementptr inbounds i8, i8* %690, i64 %692
  %694 = getelementptr inbounds i8, i8* %693, i64 2
  %695 = call i32 @archive_le32dec(i8* %694)
  %696 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %697 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %696, i32 0, i32 6
  store i32 %695, i32* %697, align 4
  br label %698

698:                                              ; preds = %689, %685, %682
  br label %699

699:                                              ; preds = %698, %673
  br label %700

700:                                              ; preds = %699, %658
  %701 = load i16, i16* %16, align 2
  %702 = zext i16 %701 to i32
  %703 = load i32, i32* %29, align 4
  %704 = add nsw i32 2, %703
  %705 = add nsw i32 %704, 3
  %706 = icmp sge i32 %702, %705
  br i1 %706, label %707, label %758

707:                                              ; preds = %700
  %708 = load i8*, i8** %9, align 8
  %709 = load i32, i32* %12, align 4
  %710 = add i32 %709, 2
  %711 = load i32, i32* %29, align 4
  %712 = add i32 %710, %711
  %713 = zext i32 %712 to i64
  %714 = getelementptr inbounds i8, i8* %708, i64 %713
  %715 = load i8, i8* %714, align 1
  %716 = sext i8 %715 to i32
  %717 = and i32 255, %716
  store i32 %717, i32* %30, align 4
  %718 = load i32, i32* %30, align 4
  %719 = icmp eq i32 %718, 2
  br i1 %719, label %720, label %733

720:                                              ; preds = %707
  %721 = load i8*, i8** %9, align 8
  %722 = load i32, i32* %12, align 4
  %723 = zext i32 %722 to i64
  %724 = getelementptr inbounds i8, i8* %721, i64 %723
  %725 = getelementptr inbounds i8, i8* %724, i64 2
  %726 = load i32, i32* %29, align 4
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds i8, i8* %725, i64 %727
  %729 = getelementptr inbounds i8, i8* %728, i64 1
  %730 = call i32 @archive_le16dec(i8* %729)
  %731 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %732 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %731, i32 0, i32 7
  store i32 %730, i32* %732, align 4
  br label %757

733:                                              ; preds = %707
  %734 = load i32, i32* %30, align 4
  %735 = icmp eq i32 %734, 4
  br i1 %735, label %736, label %756

736:                                              ; preds = %733
  %737 = load i16, i16* %16, align 2
  %738 = zext i16 %737 to i32
  %739 = load i32, i32* %29, align 4
  %740 = add nsw i32 2, %739
  %741 = add nsw i32 %740, 5
  %742 = icmp sge i32 %738, %741
  br i1 %742, label %743, label %756

743:                                              ; preds = %736
  %744 = load i8*, i8** %9, align 8
  %745 = load i32, i32* %12, align 4
  %746 = zext i32 %745 to i64
  %747 = getelementptr inbounds i8, i8* %744, i64 %746
  %748 = getelementptr inbounds i8, i8* %747, i64 2
  %749 = load i32, i32* %29, align 4
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds i8, i8* %748, i64 %750
  %752 = getelementptr inbounds i8, i8* %751, i64 1
  %753 = call i32 @archive_le32dec(i8* %752)
  %754 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %755 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %754, i32 0, i32 7
  store i32 %753, i32* %755, align 4
  br label %756

756:                                              ; preds = %743, %736, %733
  br label %757

757:                                              ; preds = %756, %720
  br label %758

758:                                              ; preds = %757, %700
  br label %759

759:                                              ; preds = %758, %650, %646
  br label %817

760:                                              ; preds = %113
  %761 = load i16, i16* %16, align 2
  %762 = zext i16 %761 to i32
  %763 = icmp slt i32 %762, 6
  br i1 %763, label %764, label %770

764:                                              ; preds = %760
  %765 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %766 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %765, i32 0, i32 0
  %767 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %768 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %766, i32 %767, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %769 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %769, i32* %6, align 4
  br label %824

770:                                              ; preds = %760
  %771 = load i8*, i8** %9, align 8
  %772 = load i32, i32* %12, align 4
  %773 = add i32 %772, 2
  %774 = zext i32 %773 to i64
  %775 = getelementptr inbounds i8, i8* %771, i64 %774
  %776 = load i8, i8* %775, align 1
  %777 = sext i8 %776 to i32
  %778 = icmp eq i32 %777, 65
  br i1 %778, label %779, label %815

779:                                              ; preds = %770
  %780 = load i8*, i8** %9, align 8
  %781 = load i32, i32* %12, align 4
  %782 = add i32 %781, 3
  %783 = zext i32 %782 to i64
  %784 = getelementptr inbounds i8, i8* %780, i64 %783
  %785 = load i8, i8* %784, align 1
  %786 = sext i8 %785 to i32
  %787 = icmp eq i32 %786, 69
  br i1 %787, label %788, label %815

788:                                              ; preds = %779
  %789 = load i8*, i8** %9, align 8
  %790 = load i32, i32* %12, align 4
  %791 = zext i32 %790 to i64
  %792 = getelementptr inbounds i8, i8* %789, i64 %791
  %793 = call i32 @archive_le16dec(i8* %792)
  %794 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %795 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %794, i32 0, i32 10
  %796 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %795, i32 0, i32 0
  store i32 %793, i32* %796, align 4
  %797 = load i8*, i8** %9, align 8
  %798 = load i32, i32* %12, align 4
  %799 = add i32 %798, 4
  %800 = zext i32 %799 to i64
  %801 = getelementptr inbounds i8, i8* %797, i64 %800
  %802 = load i8, i8* %801, align 1
  %803 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %804 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %803, i32 0, i32 10
  %805 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %804, i32 0, i32 1
  store i8 %802, i8* %805, align 4
  %806 = load i8*, i8** %9, align 8
  %807 = load i32, i32* %12, align 4
  %808 = add i32 %807, 5
  %809 = zext i32 %808 to i64
  %810 = getelementptr inbounds i8, i8* %806, i64 %809
  %811 = load i8, i8* %810, align 1
  %812 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8
  %813 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %812, i32 0, i32 10
  %814 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %813, i32 0, i32 2
  store i8 %811, i8* %814, align 1
  br label %815

815:                                              ; preds = %788, %779, %770
  br label %817

816:                                              ; preds = %113
  br label %817

817:                                              ; preds = %816, %815, %759, %645, %619, %603, %573, %551, %543, %533, %516, %452, %430, %406, %360, %355, %313, %298, %275, %252, %223
  %818 = load i16, i16* %16, align 2
  %819 = zext i16 %818 to i32
  %820 = load i32, i32* %12, align 4
  %821 = add i32 %820, %819
  store i32 %821, i32* %12, align 4
  br label %71

822:                                              ; preds = %71
  %823 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %823, i32* %6, align 4
  br label %824

824:                                              ; preds = %822, %764, %228, %206, %172, %138, %100, %68, %56, %39
  %825 = load i32, i32* %6, align 4
  ret i32 %825
}

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i32 @archive_le16dec(i8*) #1

declare dso_local i8* @archive_le64dec(i8*) #1

declare dso_local i32 @archive_le32dec(i8*) #1

declare dso_local i32* @archive_string_conversion_from_charset(i32*, i8*, i32) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @archive_entry_copy_pathname_l(%struct.archive_entry*, i8*, i16 zeroext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
