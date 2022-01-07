; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_read_SubStreamsInfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_read_SubStreamsInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct._7z_substream_info = type { i64, i32*, i8*, i64*, i32* }
%struct._7z_folder = type { i32, i32, i64 }
%struct._7z_digests = type { i64, i32*, i8*, i64*, i32* }

@kNumUnPackStream = common dso_local global i32 0, align 4
@UMAX_ENTRY = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i64 0, align 8
@kSize = common dso_local global i32 0, align 4
@kCRC = common dso_local global i32 0, align 4
@kEnd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct._7z_substream_info*, %struct._7z_folder*, i64)* @read_SubStreamsInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_SubStreamsInfo(%struct.archive_read* %0, %struct._7z_substream_info* %1, %struct._7z_folder* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca %struct._7z_substream_info*, align 8
  %8 = alloca %struct._7z_folder*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct._7z_digests, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store %struct._7z_substream_info* %1, %struct._7z_substream_info** %7, align 8
  store %struct._7z_folder* %2, %struct._7z_folder** %8, align 8
  store i64 %3, i64* %9, align 8
  %23 = load %struct._7z_substream_info*, %struct._7z_substream_info** %7, align 8
  %24 = call i32 @memset(%struct._7z_substream_info* %23, i32 0, i32 40)
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %36, %4
  %26 = load i32, i32* %14, align 4
  %27 = zext i32 %26 to i64
  %28 = load i64, i64* %9, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct._7z_folder*, %struct._7z_folder** %8, align 8
  %32 = load i32, i32* %14, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %31, i64 %33
  %35 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %14, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %14, align 4
  br label %25

39:                                               ; preds = %25
  %40 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %41 = call i8* @header_bytes(%struct.archive_read* %40, i32 1)
  store i8* %41, i8** %10, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 -1, i32* %5, align 4
  br label %388

44:                                               ; preds = %39
  %45 = load i8*, i8** %10, align 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @kNumUnPackStream, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %107

51:                                               ; preds = %44
  store i64 0, i64* %12, align 8
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %95, %51
  %53 = load i32, i32* %14, align 4
  %54 = zext i32 %53 to i64
  %55 = load i64, i64* %9, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %98

57:                                               ; preds = %52
  %58 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %59 = load %struct._7z_folder*, %struct._7z_folder** %8, align 8
  %60 = load i32, i32* %14, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %59, i64 %61
  %63 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %62, i32 0, i32 0
  %64 = call i64 @parse_7zip_uint64(%struct.archive_read* %58, i32* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i32 -1, i32* %5, align 4
  br label %388

67:                                               ; preds = %57
  %68 = load i64, i64* @UMAX_ENTRY, align 8
  %69 = load %struct._7z_folder*, %struct._7z_folder** %8, align 8
  %70 = load i32, i32* %14, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %69, i64 %71
  %73 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = icmp ult i64 %68, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  store i32 -1, i32* %5, align 4
  br label %388

78:                                               ; preds = %67
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* @SIZE_MAX, align 8
  %81 = load i64, i64* @UMAX_ENTRY, align 8
  %82 = sub i64 %80, %81
  %83 = icmp ugt i64 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 -1, i32* %5, align 4
  br label %388

85:                                               ; preds = %78
  %86 = load %struct._7z_folder*, %struct._7z_folder** %8, align 8
  %87 = load i32, i32* %14, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %86, i64 %88
  %90 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %12, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %12, align 8
  br label %95

95:                                               ; preds = %85
  %96 = load i32, i32* %14, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %14, align 4
  br label %52

98:                                               ; preds = %52
  %99 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %100 = call i8* @header_bytes(%struct.archive_read* %99, i32 1)
  store i8* %100, i8** %10, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 -1, i32* %5, align 4
  br label %388

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  store i32 %106, i32* %13, align 4
  br label %109

107:                                              ; preds = %44
  %108 = load i64, i64* %9, align 8
  store i64 %108, i64* %12, align 8
  br label %109

109:                                              ; preds = %107, %103
  %110 = load i64, i64* %12, align 8
  %111 = load %struct._7z_substream_info*, %struct._7z_substream_info** %7, align 8
  %112 = getelementptr inbounds %struct._7z_substream_info, %struct._7z_substream_info* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load i64, i64* %12, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %146

115:                                              ; preds = %109
  %116 = load i64, i64* %12, align 8
  %117 = call i8* @calloc(i64 %116, i32 4)
  %118 = bitcast i8* %117 to i32*
  %119 = load %struct._7z_substream_info*, %struct._7z_substream_info** %7, align 8
  %120 = getelementptr inbounds %struct._7z_substream_info, %struct._7z_substream_info* %119, i32 0, i32 1
  store i32* %118, i32** %120, align 8
  %121 = load i64, i64* %12, align 8
  %122 = call i8* @calloc(i64 %121, i32 1)
  %123 = load %struct._7z_substream_info*, %struct._7z_substream_info** %7, align 8
  %124 = getelementptr inbounds %struct._7z_substream_info, %struct._7z_substream_info* %123, i32 0, i32 2
  store i8* %122, i8** %124, align 8
  %125 = load i64, i64* %12, align 8
  %126 = call i8* @calloc(i64 %125, i32 8)
  %127 = bitcast i8* %126 to i64*
  %128 = load %struct._7z_substream_info*, %struct._7z_substream_info** %7, align 8
  %129 = getelementptr inbounds %struct._7z_substream_info, %struct._7z_substream_info* %128, i32 0, i32 3
  store i64* %127, i64** %129, align 8
  %130 = load %struct._7z_substream_info*, %struct._7z_substream_info** %7, align 8
  %131 = getelementptr inbounds %struct._7z_substream_info, %struct._7z_substream_info* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %144, label %134

134:                                              ; preds = %115
  %135 = load %struct._7z_substream_info*, %struct._7z_substream_info** %7, align 8
  %136 = getelementptr inbounds %struct._7z_substream_info, %struct._7z_substream_info* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = icmp eq i8* %137, null
  br i1 %138, label %144, label %139

139:                                              ; preds = %134
  %140 = load %struct._7z_substream_info*, %struct._7z_substream_info** %7, align 8
  %141 = getelementptr inbounds %struct._7z_substream_info, %struct._7z_substream_info* %140, i32 0, i32 3
  %142 = load i64*, i64** %141, align 8
  %143 = icmp eq i64* %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %139, %134, %115
  store i32 -1, i32* %5, align 4
  br label %388

145:                                              ; preds = %139
  br label %146

146:                                              ; preds = %145, %109
  %147 = load %struct._7z_substream_info*, %struct._7z_substream_info** %7, align 8
  %148 = getelementptr inbounds %struct._7z_substream_info, %struct._7z_substream_info* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  store i32* %149, i32** %11, align 8
  store i32 0, i32* %14, align 4
  br label %150

150:                                              ; preds = %204, %146
  %151 = load i32, i32* %14, align 4
  %152 = zext i32 %151 to i64
  %153 = load i64, i64* %9, align 8
  %154 = icmp ult i64 %152, %153
  br i1 %154, label %155, label %207

155:                                              ; preds = %150
  %156 = load %struct._7z_folder*, %struct._7z_folder** %8, align 8
  %157 = load i32, i32* %14, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %156, i64 %158
  %160 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  br label %204

164:                                              ; preds = %155
  store i32 0, i32* %17, align 4
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* @kSize, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %194

168:                                              ; preds = %164
  store i32 1, i32* %16, align 4
  br label %169

169:                                              ; preds = %190, %168
  %170 = load i32, i32* %16, align 4
  %171 = load %struct._7z_folder*, %struct._7z_folder** %8, align 8
  %172 = load i32, i32* %14, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %171, i64 %173
  %175 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ult i32 %170, %176
  br i1 %177, label %178, label %193

178:                                              ; preds = %169
  %179 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %180 = load i32*, i32** %11, align 8
  %181 = call i64 @parse_7zip_uint64(%struct.archive_read* %179, i32* %180)
  %182 = icmp slt i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  store i32 -1, i32* %5, align 4
  br label %388

184:                                              ; preds = %178
  %185 = load i32*, i32** %11, align 8
  %186 = getelementptr inbounds i32, i32* %185, i32 1
  store i32* %186, i32** %11, align 8
  %187 = load i32, i32* %185, align 4
  %188 = load i32, i32* %17, align 4
  %189 = add nsw i32 %188, %187
  store i32 %189, i32* %17, align 4
  br label %190

190:                                              ; preds = %184
  %191 = load i32, i32* %16, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %16, align 4
  br label %169

193:                                              ; preds = %169
  br label %194

194:                                              ; preds = %193, %164
  %195 = load %struct._7z_folder*, %struct._7z_folder** %8, align 8
  %196 = load i32, i32* %14, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %195, i64 %197
  %199 = call i32 @folder_uncompressed_size(%struct._7z_folder* %198)
  %200 = load i32, i32* %17, align 4
  %201 = sub nsw i32 %199, %200
  %202 = load i32*, i32** %11, align 8
  %203 = getelementptr inbounds i32, i32* %202, i32 1
  store i32* %203, i32** %11, align 8
  store i32 %201, i32* %202, align 4
  br label %204

204:                                              ; preds = %194, %163
  %205 = load i32, i32* %14, align 4
  %206 = add i32 %205, 1
  store i32 %206, i32* %14, align 4
  br label %150

207:                                              ; preds = %150
  %208 = load i32, i32* %13, align 4
  %209 = load i32, i32* @kSize, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %220

211:                                              ; preds = %207
  %212 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %213 = call i8* @header_bytes(%struct.archive_read* %212, i32 1)
  store i8* %213, i8** %10, align 8
  %214 = icmp eq i8* %213, null
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  store i32 -1, i32* %5, align 4
  br label %388

216:                                              ; preds = %211
  %217 = load i8*, i8** %10, align 8
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i32
  store i32 %219, i32* %13, align 4
  br label %220

220:                                              ; preds = %216, %207
  store i32 0, i32* %14, align 4
  br label %221

221:                                              ; preds = %239, %220
  %222 = load i32, i32* %14, align 4
  %223 = zext i32 %222 to i64
  %224 = load i64, i64* %12, align 8
  %225 = icmp ult i64 %223, %224
  br i1 %225, label %226, label %242

226:                                              ; preds = %221
  %227 = load %struct._7z_substream_info*, %struct._7z_substream_info** %7, align 8
  %228 = getelementptr inbounds %struct._7z_substream_info, %struct._7z_substream_info* %227, i32 0, i32 2
  %229 = load i8*, i8** %228, align 8
  %230 = load i32, i32* %14, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  store i8 0, i8* %232, align 1
  %233 = load %struct._7z_substream_info*, %struct._7z_substream_info** %7, align 8
  %234 = getelementptr inbounds %struct._7z_substream_info, %struct._7z_substream_info* %233, i32 0, i32 3
  %235 = load i64*, i64** %234, align 8
  %236 = load i32, i32* %14, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds i64, i64* %235, i64 %237
  store i64 0, i64* %238, align 8
  br label %239

239:                                              ; preds = %226
  %240 = load i32, i32* %14, align 4
  %241 = add i32 %240, 1
  store i32 %241, i32* %14, align 4
  br label %221

242:                                              ; preds = %221
  store i64 0, i64* %15, align 8
  store i32 0, i32* %14, align 4
  br label %243

243:                                              ; preds = %275, %242
  %244 = load i32, i32* %14, align 4
  %245 = zext i32 %244 to i64
  %246 = load i64, i64* %9, align 8
  %247 = icmp ult i64 %245, %246
  br i1 %247, label %248, label %278

248:                                              ; preds = %243
  %249 = load %struct._7z_folder*, %struct._7z_folder** %8, align 8
  %250 = load i32, i32* %14, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %249, i64 %251
  %253 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 1
  br i1 %255, label %264, label %256

256:                                              ; preds = %248
  %257 = load %struct._7z_folder*, %struct._7z_folder** %8, align 8
  %258 = load i32, i32* %14, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %257, i64 %259
  %261 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %274, label %264

264:                                              ; preds = %256, %248
  %265 = load %struct._7z_folder*, %struct._7z_folder** %8, align 8
  %266 = load i32, i32* %14, align 4
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %265, i64 %267
  %269 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = sext i32 %270 to i64
  %272 = load i64, i64* %15, align 8
  %273 = add nsw i64 %272, %271
  store i64 %273, i64* %15, align 8
  br label %274

274:                                              ; preds = %264, %256
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %14, align 4
  %277 = add i32 %276, 1
  store i32 %277, i32* %14, align 4
  br label %243

278:                                              ; preds = %243
  %279 = load i32, i32* %13, align 4
  %280 = load i32, i32* @kCRC, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %382

282:                                              ; preds = %278
  %283 = load %struct._7z_substream_info*, %struct._7z_substream_info** %7, align 8
  %284 = getelementptr inbounds %struct._7z_substream_info, %struct._7z_substream_info* %283, i32 0, i32 2
  %285 = load i8*, i8** %284, align 8
  store i8* %285, i8** %19, align 8
  %286 = load %struct._7z_substream_info*, %struct._7z_substream_info** %7, align 8
  %287 = getelementptr inbounds %struct._7z_substream_info, %struct._7z_substream_info* %286, i32 0, i32 3
  %288 = load i64*, i64** %287, align 8
  store i64* %288, i64** %20, align 8
  store i32 0, i32* %21, align 4
  %289 = bitcast %struct._7z_digests* %18 to %struct._7z_substream_info*
  %290 = call i32 @memset(%struct._7z_substream_info* %289, i32 0, i32 40)
  %291 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %292 = bitcast %struct._7z_digests* %18 to %struct._7z_substream_info*
  %293 = load i64, i64* %15, align 8
  %294 = call i64 @read_Digests(%struct.archive_read* %291, %struct._7z_substream_info* %292, i64 %293)
  %295 = icmp slt i64 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %282
  %297 = bitcast %struct._7z_digests* %18 to %struct._7z_substream_info*
  %298 = call i32 @free_Digest(%struct._7z_substream_info* %297)
  store i32 -1, i32* %5, align 4
  br label %388

299:                                              ; preds = %282
  store i32 0, i32* %14, align 4
  br label %300

300:                                              ; preds = %368, %299
  %301 = load i32, i32* %14, align 4
  %302 = zext i32 %301 to i64
  %303 = load i64, i64* %9, align 8
  %304 = icmp ult i64 %302, %303
  br i1 %304, label %305, label %371

305:                                              ; preds = %300
  %306 = load %struct._7z_folder*, %struct._7z_folder** %8, align 8
  %307 = load i32, i32* %14, align 4
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %306, i64 %308
  %310 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = icmp eq i32 %311, 1
  br i1 %312, label %313, label %333

313:                                              ; preds = %305
  %314 = load %struct._7z_folder*, %struct._7z_folder** %8, align 8
  %315 = load i32, i32* %14, align 4
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %314, i64 %316
  %318 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %317, i32 0, i32 2
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %333

321:                                              ; preds = %313
  %322 = load i8*, i8** %19, align 8
  %323 = getelementptr inbounds i8, i8* %322, i32 1
  store i8* %323, i8** %19, align 8
  store i8 1, i8* %322, align 1
  %324 = load %struct._7z_folder*, %struct._7z_folder** %8, align 8
  %325 = load i32, i32* %14, align 4
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %324, i64 %326
  %328 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = sext i32 %329 to i64
  %331 = load i64*, i64** %20, align 8
  %332 = getelementptr inbounds i64, i64* %331, i32 1
  store i64* %332, i64** %20, align 8
  store i64 %330, i64* %331, align 8
  br label %367

333:                                              ; preds = %313, %305
  store i32 0, i32* %22, align 4
  br label %334

334:                                              ; preds = %361, %333
  %335 = load i32, i32* %22, align 4
  %336 = load %struct._7z_folder*, %struct._7z_folder** %8, align 8
  %337 = load i32, i32* %14, align 4
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %336, i64 %338
  %340 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = icmp ult i32 %335, %341
  br i1 %342, label %343, label %366

343:                                              ; preds = %334
  %344 = getelementptr inbounds %struct._7z_digests, %struct._7z_digests* %18, i32 0, i32 4
  %345 = load i32*, i32** %344, align 8
  %346 = load i32, i32* %21, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = trunc i32 %349 to i8
  %351 = load i8*, i8** %19, align 8
  %352 = getelementptr inbounds i8, i8* %351, i32 1
  store i8* %352, i8** %19, align 8
  store i8 %350, i8* %351, align 1
  %353 = getelementptr inbounds %struct._7z_digests, %struct._7z_digests* %18, i32 0, i32 3
  %354 = load i64*, i64** %353, align 8
  %355 = load i32, i32* %21, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i64, i64* %354, i64 %356
  %358 = load i64, i64* %357, align 8
  %359 = load i64*, i64** %20, align 8
  %360 = getelementptr inbounds i64, i64* %359, i32 1
  store i64* %360, i64** %20, align 8
  store i64 %358, i64* %359, align 8
  br label %361

361:                                              ; preds = %343
  %362 = load i32, i32* %22, align 4
  %363 = add i32 %362, 1
  store i32 %363, i32* %22, align 4
  %364 = load i32, i32* %21, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %21, align 4
  br label %334

366:                                              ; preds = %334
  br label %367

367:                                              ; preds = %366, %321
  br label %368

368:                                              ; preds = %367
  %369 = load i32, i32* %14, align 4
  %370 = add i32 %369, 1
  store i32 %370, i32* %14, align 4
  br label %300

371:                                              ; preds = %300
  %372 = bitcast %struct._7z_digests* %18 to %struct._7z_substream_info*
  %373 = call i32 @free_Digest(%struct._7z_substream_info* %372)
  %374 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %375 = call i8* @header_bytes(%struct.archive_read* %374, i32 1)
  store i8* %375, i8** %10, align 8
  %376 = icmp eq i8* %375, null
  br i1 %376, label %377, label %378

377:                                              ; preds = %371
  store i32 -1, i32* %5, align 4
  br label %388

378:                                              ; preds = %371
  %379 = load i8*, i8** %10, align 8
  %380 = load i8, i8* %379, align 1
  %381 = zext i8 %380 to i32
  store i32 %381, i32* %13, align 4
  br label %382

382:                                              ; preds = %378, %278
  %383 = load i32, i32* %13, align 4
  %384 = load i32, i32* @kEnd, align 4
  %385 = icmp ne i32 %383, %384
  br i1 %385, label %386, label %387

386:                                              ; preds = %382
  store i32 -1, i32* %5, align 4
  br label %388

387:                                              ; preds = %382
  store i32 0, i32* %5, align 4
  br label %388

388:                                              ; preds = %387, %386, %377, %296, %215, %183, %144, %102, %84, %77, %66, %43
  %389 = load i32, i32* %5, align 4
  ret i32 %389
}

declare dso_local i32 @memset(%struct._7z_substream_info*, i32, i32) #1

declare dso_local i8* @header_bytes(%struct.archive_read*, i32) #1

declare dso_local i64 @parse_7zip_uint64(%struct.archive_read*, i32*) #1

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i32 @folder_uncompressed_size(%struct._7z_folder*) #1

declare dso_local i64 @read_Digests(%struct.archive_read*, %struct._7z_substream_info*, i64) #1

declare dso_local i32 @free_Digest(%struct._7z_substream_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
