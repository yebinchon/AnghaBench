; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_read_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_read_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.file_info = type { i64, i32, i64, i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.content**, %struct.content* }
%struct.content = type { i64, i32, %struct.content* }
%struct.TYPE_5__ = type { i32 }
%struct.iso9660 = type { i64, i64, i64, i32 }

@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Ignoring out-of-order directory (%s) %jd > %jd\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Directory is beyond end-of-media: %s\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"Failed to read full block when scanning ISO9660 directory list\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@DR_name_len_offset = common dso_local global i32 0, align 4
@DR_name_offset = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"No memory for multi extent\00", align 1
@ARCHIVE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.file_info*)* @read_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_children(%struct.archive_read* %0, %struct.file_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.file_info*, align 8
  %6 = alloca %struct.iso9660*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.file_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.file_info*, align 8
  %14 = alloca %struct.content*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.file_info* %1, %struct.file_info** %5, align 8
  %15 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %16 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.iso9660*
  store %struct.iso9660* %20, %struct.iso9660** %6, align 8
  %21 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %22 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %27 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %28 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @__archive_read_consume(%struct.archive_read* %26, i64 %29)
  %31 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %32 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %25, %2
  %34 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %35 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.file_info*, %struct.file_info** %5, align 8
  %38 = getelementptr inbounds %struct.file_info, %struct.file_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %33
  %42 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %43 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %42, i32 0, i32 0
  %44 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %45 = load %struct.file_info*, %struct.file_info** %5, align 8
  %46 = getelementptr inbounds %struct.file_info, %struct.file_info* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %50 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load %struct.file_info*, %struct.file_info** %5, align 8
  %54 = getelementptr inbounds %struct.file_info, %struct.file_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %43, i32 %44, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %52, i32 %56)
  %58 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %58, i32* %3, align 4
  br label %361

59:                                               ; preds = %33
  %60 = load %struct.file_info*, %struct.file_info** %5, align 8
  %61 = getelementptr inbounds %struct.file_info, %struct.file_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.file_info*, %struct.file_info** %5, align 8
  %64 = getelementptr inbounds %struct.file_info, %struct.file_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %62, %66
  %68 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %69 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %67, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %59
  %73 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %74 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %73, i32 0, i32 0
  %75 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %76 = load %struct.file_info*, %struct.file_info** %5, align 8
  %77 = getelementptr inbounds %struct.file_info, %struct.file_info* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %74, i32 %75, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %81, i32* %3, align 4
  br label %361

82:                                               ; preds = %59
  %83 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %84 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.file_info*, %struct.file_info** %5, align 8
  %87 = getelementptr inbounds %struct.file_info, %struct.file_info* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %85, %88
  br i1 %89, label %90, label %112

90:                                               ; preds = %82
  %91 = load %struct.file_info*, %struct.file_info** %5, align 8
  %92 = getelementptr inbounds %struct.file_info, %struct.file_info* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %95 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %93, %96
  store i64 %97, i64* %12, align 8
  %98 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %99 = load i64, i64* %12, align 8
  %100 = call i64 @__archive_read_consume(%struct.archive_read* %98, i64 %99)
  store i64 %100, i64* %12, align 8
  %101 = load i64, i64* %12, align 8
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %90
  %104 = load i64, i64* %12, align 8
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %3, align 4
  br label %361

106:                                              ; preds = %90
  %107 = load %struct.file_info*, %struct.file_info** %5, align 8
  %108 = getelementptr inbounds %struct.file_info, %struct.file_info* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %111 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %106, %82
  %113 = load %struct.file_info*, %struct.file_info** %5, align 8
  %114 = getelementptr inbounds %struct.file_info, %struct.file_info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %117 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %115, %118
  %120 = sub nsw i32 %119, 1
  %121 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %122 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = sdiv i32 %120, %123
  %125 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %126 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = mul nsw i32 %124, %127
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %10, align 8
  %130 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %131 = load i64, i64* %10, align 8
  %132 = call i8* @__archive_read_ahead(%struct.archive_read* %130, i64 %131, i32* null)
  store i8* %132, i8** %7, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = icmp eq i8* %133, null
  br i1 %134, label %135, label %141

135:                                              ; preds = %112
  %136 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %137 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %136, i32 0, i32 0
  %138 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %139 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %137, i32 %138, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %140 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %140, i32* %3, align 4
  br label %361

141:                                              ; preds = %112
  %142 = load i64, i64* %10, align 8
  %143 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %144 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = add i64 %145, %142
  store i64 %146, i64* %144, align 8
  store %struct.file_info* null, %struct.file_info** %9, align 8
  %147 = load i64, i64* %10, align 8
  store i64 %147, i64* %11, align 8
  br label %148

148:                                              ; preds = %346, %141
  %149 = load i64, i64* %10, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %347

151:                                              ; preds = %148
  %152 = load i8*, i8** %7, align 8
  store i8* %152, i8** %8, align 8
  %153 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %154 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load i8*, i8** %7, align 8
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  store i8* %158, i8** %7, align 8
  %159 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %160 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = load i64, i64* %10, align 8
  %164 = sub i64 %163, %162
  store i64 %164, i64* %10, align 8
  br label %165

165:                                              ; preds = %339, %151
  %166 = load i8*, i8** %8, align 8
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %183

170:                                              ; preds = %165
  %171 = load i8*, i8** %8, align 8
  %172 = load i8*, i8** %7, align 8
  %173 = icmp ult i8* %171, %172
  br i1 %173, label %174, label %183

174:                                              ; preds = %170
  %175 = load i8*, i8** %8, align 8
  %176 = load i8*, i8** %8, align 8
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %175, i64 %179
  %181 = load i8*, i8** %7, align 8
  %182 = icmp ule i8* %180, %181
  br label %183

183:                                              ; preds = %174, %170, %165
  %184 = phi i1 [ false, %170 ], [ false, %165 ], [ %182, %174 ]
  br i1 %184, label %185, label %346

185:                                              ; preds = %183
  %186 = load i8*, i8** %8, align 8
  %187 = load i32, i32* @DR_name_len_offset, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %193, label %202

193:                                              ; preds = %185
  %194 = load i8*, i8** %8, align 8
  %195 = load i32, i32* @DR_name_offset, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %193
  br label %339

202:                                              ; preds = %193, %185
  %203 = load i8*, i8** %8, align 8
  %204 = load i32, i32* @DR_name_len_offset, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %203, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %210, label %219

210:                                              ; preds = %202
  %211 = load i8*, i8** %8, align 8
  %212 = load i32, i32* @DR_name_offset, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %211, i64 %213
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %218, label %219

218:                                              ; preds = %210
  br label %339

219:                                              ; preds = %210, %202
  %220 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %221 = load %struct.file_info*, %struct.file_info** %5, align 8
  %222 = load i8*, i8** %8, align 8
  %223 = load i8*, i8** %7, align 8
  %224 = load i8*, i8** %8, align 8
  %225 = ptrtoint i8* %223 to i64
  %226 = ptrtoint i8* %224 to i64
  %227 = sub i64 %225, %226
  %228 = trunc i64 %227 to i32
  %229 = call %struct.file_info* @parse_file_info(%struct.archive_read* %220, %struct.file_info* %221, i8* %222, i32 %228)
  store %struct.file_info* %229, %struct.file_info** %13, align 8
  %230 = load %struct.file_info*, %struct.file_info** %13, align 8
  %231 = icmp eq %struct.file_info* %230, null
  br i1 %231, label %232, label %237

232:                                              ; preds = %219
  %233 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %234 = load i64, i64* %11, align 8
  %235 = call i64 @__archive_read_consume(%struct.archive_read* %233, i64 %234)
  %236 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %236, i32* %3, align 4
  br label %361

237:                                              ; preds = %219
  %238 = load %struct.file_info*, %struct.file_info** %13, align 8
  %239 = getelementptr inbounds %struct.file_info, %struct.file_info* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %328

242:                                              ; preds = %237
  %243 = load %struct.file_info*, %struct.file_info** %13, align 8
  %244 = getelementptr inbounds %struct.file_info, %struct.file_info* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %250, label %247

247:                                              ; preds = %242
  %248 = load %struct.file_info*, %struct.file_info** %9, align 8
  %249 = icmp ne %struct.file_info* %248, null
  br i1 %249, label %250, label %328

250:                                              ; preds = %247, %242
  %251 = load %struct.file_info*, %struct.file_info** %9, align 8
  %252 = icmp eq %struct.file_info* %251, null
  br i1 %252, label %253, label %264

253:                                              ; preds = %250
  %254 = load %struct.file_info*, %struct.file_info** %13, align 8
  store %struct.file_info* %254, %struct.file_info** %9, align 8
  %255 = load %struct.file_info*, %struct.file_info** %9, align 8
  %256 = getelementptr inbounds %struct.file_info, %struct.file_info* %255, i32 0, i32 4
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 1
  store %struct.content* null, %struct.content** %257, align 8
  %258 = load %struct.file_info*, %struct.file_info** %9, align 8
  %259 = getelementptr inbounds %struct.file_info, %struct.file_info* %258, i32 0, i32 4
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 1
  %261 = load %struct.file_info*, %struct.file_info** %9, align 8
  %262 = getelementptr inbounds %struct.file_info, %struct.file_info* %261, i32 0, i32 4
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 0
  store %struct.content** %260, %struct.content*** %263, align 8
  br label %264

264:                                              ; preds = %253, %250
  %265 = call %struct.content* @malloc(i32 24)
  store %struct.content* %265, %struct.content** %14, align 8
  %266 = load %struct.content*, %struct.content** %14, align 8
  %267 = icmp eq %struct.content* %266, null
  br i1 %267, label %268, label %277

268:                                              ; preds = %264
  %269 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %270 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %269, i32 0, i32 0
  %271 = load i32, i32* @ENOMEM, align 4
  %272 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %270, i32 %271, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %273 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %274 = load i64, i64* %11, align 8
  %275 = call i64 @__archive_read_consume(%struct.archive_read* %273, i64 %274)
  %276 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %276, i32* %3, align 4
  br label %361

277:                                              ; preds = %264
  %278 = load %struct.file_info*, %struct.file_info** %13, align 8
  %279 = getelementptr inbounds %struct.file_info, %struct.file_info* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.content*, %struct.content** %14, align 8
  %282 = getelementptr inbounds %struct.content, %struct.content* %281, i32 0, i32 0
  store i64 %280, i64* %282, align 8
  %283 = load %struct.file_info*, %struct.file_info** %13, align 8
  %284 = getelementptr inbounds %struct.file_info, %struct.file_info* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.content*, %struct.content** %14, align 8
  %287 = getelementptr inbounds %struct.content, %struct.content* %286, i32 0, i32 1
  store i32 %285, i32* %287, align 8
  %288 = load %struct.content*, %struct.content** %14, align 8
  %289 = getelementptr inbounds %struct.content, %struct.content* %288, i32 0, i32 2
  store %struct.content* null, %struct.content** %289, align 8
  %290 = load %struct.content*, %struct.content** %14, align 8
  %291 = load %struct.file_info*, %struct.file_info** %9, align 8
  %292 = getelementptr inbounds %struct.file_info, %struct.file_info* %291, i32 0, i32 4
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 0
  %294 = load %struct.content**, %struct.content*** %293, align 8
  store %struct.content* %290, %struct.content** %294, align 8
  %295 = load %struct.content*, %struct.content** %14, align 8
  %296 = getelementptr inbounds %struct.content, %struct.content* %295, i32 0, i32 2
  %297 = load %struct.file_info*, %struct.file_info** %9, align 8
  %298 = getelementptr inbounds %struct.file_info, %struct.file_info* %297, i32 0, i32 4
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 0
  store %struct.content** %296, %struct.content*** %299, align 8
  %300 = load %struct.file_info*, %struct.file_info** %9, align 8
  %301 = load %struct.file_info*, %struct.file_info** %13, align 8
  %302 = icmp eq %struct.file_info* %300, %301
  br i1 %302, label %303, label %313

303:                                              ; preds = %277
  %304 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %305 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %306 = load %struct.file_info*, %struct.file_info** %13, align 8
  %307 = call i64 @add_entry(%struct.archive_read* %304, %struct.iso9660* %305, %struct.file_info* %306)
  %308 = load i64, i64* @ARCHIVE_OK, align 8
  %309 = icmp ne i64 %307, %308
  br i1 %309, label %310, label %312

310:                                              ; preds = %303
  %311 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %311, i32* %3, align 4
  br label %361

312:                                              ; preds = %303
  br label %327

313:                                              ; preds = %277
  %314 = load %struct.file_info*, %struct.file_info** %13, align 8
  %315 = getelementptr inbounds %struct.file_info, %struct.file_info* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.file_info*, %struct.file_info** %9, align 8
  %318 = getelementptr inbounds %struct.file_info, %struct.file_info* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = add nsw i32 %319, %316
  store i32 %320, i32* %318, align 8
  %321 = load %struct.file_info*, %struct.file_info** %13, align 8
  %322 = getelementptr inbounds %struct.file_info, %struct.file_info* %321, i32 0, i32 3
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %326, label %325

325:                                              ; preds = %313
  store %struct.file_info* null, %struct.file_info** %9, align 8
  br label %326

326:                                              ; preds = %325, %313
  br label %327

327:                                              ; preds = %326, %312
  br label %338

328:                                              ; preds = %247, %237
  %329 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %330 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %331 = load %struct.file_info*, %struct.file_info** %13, align 8
  %332 = call i64 @add_entry(%struct.archive_read* %329, %struct.iso9660* %330, %struct.file_info* %331)
  %333 = load i64, i64* @ARCHIVE_OK, align 8
  %334 = icmp ne i64 %332, %333
  br i1 %334, label %335, label %337

335:                                              ; preds = %328
  %336 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %336, i32* %3, align 4
  br label %361

337:                                              ; preds = %328
  br label %338

338:                                              ; preds = %337, %327
  br label %339

339:                                              ; preds = %338, %218, %201
  %340 = load i8*, i8** %8, align 8
  %341 = load i8, i8* %340, align 1
  %342 = zext i8 %341 to i32
  %343 = load i8*, i8** %8, align 8
  %344 = sext i32 %342 to i64
  %345 = getelementptr inbounds i8, i8* %343, i64 %344
  store i8* %345, i8** %8, align 8
  br label %165

346:                                              ; preds = %183
  br label %148

347:                                              ; preds = %148
  %348 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %349 = load i64, i64* %11, align 8
  %350 = call i64 @__archive_read_consume(%struct.archive_read* %348, i64 %349)
  %351 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %352 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %353 = call i64 @read_CE(%struct.archive_read* %351, %struct.iso9660* %352)
  %354 = load i64, i64* @ARCHIVE_OK, align 8
  %355 = icmp ne i64 %353, %354
  br i1 %355, label %356, label %358

356:                                              ; preds = %347
  %357 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %357, i32* %3, align 4
  br label %361

358:                                              ; preds = %347
  %359 = load i64, i64* @ARCHIVE_OK, align 8
  %360 = trunc i64 %359 to i32
  store i32 %360, i32* %3, align 4
  br label %361

361:                                              ; preds = %358, %356, %335, %310, %268, %232, %135, %103, %72, %41
  %362 = load i32, i32* %3, align 4
  ret i32 %362
}

declare dso_local i64 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i64, i32*) #1

declare dso_local %struct.file_info* @parse_file_info(%struct.archive_read*, %struct.file_info*, i8*, i32) #1

declare dso_local %struct.content* @malloc(i32) #1

declare dso_local i64 @add_entry(%struct.archive_read*, %struct.iso9660*, %struct.file_info*) #1

declare dso_local i64 @read_CE(%struct.archive_read*, %struct.iso9660*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
