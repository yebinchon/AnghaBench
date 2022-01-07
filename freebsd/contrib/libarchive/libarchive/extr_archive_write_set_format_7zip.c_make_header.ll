; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_make_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_make_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i64 }
%struct.coder = type { i32 }
%struct._7zip = type { i32, i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.file* }
%struct.file = type { i64, i32*, i32, i32, i64, %struct.file* }

@kHeader = common dso_local global i32 0, align 4
@kMainStreamsInfo = common dso_local global i32 0, align 4
@kFilesInfo = common dso_local global i32 0, align 4
@kEmptyStream = common dso_local global i32 0, align 4
@ARCHIVE_Z_RUN = common dso_local global i32 0, align 4
@kEmptyFile = common dso_local global i32 0, align 4
@kName = common dso_local global i32 0, align 4
@kMTime = common dso_local global i32 0, align 4
@MTIME_IS_SET = common dso_local global i32 0, align 4
@MTIME = common dso_local global i32 0, align 4
@kCTime = common dso_local global i32 0, align 4
@CTIME_IS_SET = common dso_local global i32 0, align 4
@CTIME = common dso_local global i32 0, align 4
@kATime = common dso_local global i32 0, align 4
@ATIME_IS_SET = common dso_local global i32 0, align 4
@ATIME = common dso_local global i32 0, align 4
@kAttributes = common dso_local global i32 0, align 4
@kEnd = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i32, i32, i32, i32, %struct.coder*)* @make_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_header(%struct.archive_write* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.coder* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.archive_write*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.coder*, align 8
  %14 = alloca %struct._7zip*, align 8
  %15 = alloca %struct.file*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.coder* %5, %struct.coder** %13, align 8
  %21 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %22 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct._7zip*
  store %struct._7zip* %24, %struct._7zip** %14, align 8
  %25 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %26 = load i32, i32* @kHeader, align 4
  %27 = call i32 @enc_uint64(%struct.archive_write* %25, i32 %26)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load i32, i32* %16, align 4
  store i32 %31, i32* %7, align 4
  br label %420

32:                                               ; preds = %6
  %33 = load %struct._7zip*, %struct._7zip** %14, align 8
  %34 = getelementptr inbounds %struct._7zip, %struct._7zip* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %32
  %38 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %39 = load i32, i32* @kMainStreamsInfo, align 4
  %40 = call i32 @enc_uint64(%struct.archive_write* %38, i32 %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %16, align 4
  store i32 %44, i32* %7, align 4
  br label %420

45:                                               ; preds = %37
  %46 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.coder*, %struct.coder** %13, align 8
  %52 = call i32 @make_streamsInfo(%struct.archive_write* %46, i32 %47, i32 %48, i32 %49, i32 %50, %struct.coder* %51, i32 1, i32 0)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* %16, align 4
  store i32 %56, i32* %7, align 4
  br label %420

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %32
  %59 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %60 = load i32, i32* @kFilesInfo, align 4
  %61 = call i32 @enc_uint64(%struct.archive_write* %59, i32 %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %16, align 4
  store i32 %65, i32* %7, align 4
  br label %420

66:                                               ; preds = %58
  %67 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %68 = load %struct._7zip*, %struct._7zip** %14, align 8
  %69 = getelementptr inbounds %struct._7zip, %struct._7zip* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @enc_uint64(%struct.archive_write* %67, i32 %70)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* %16, align 4
  store i32 %75, i32* %7, align 4
  br label %420

76:                                               ; preds = %66
  %77 = load %struct._7zip*, %struct._7zip** %14, align 8
  %78 = getelementptr inbounds %struct._7zip, %struct._7zip* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %152

81:                                               ; preds = %76
  %82 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %83 = load i32, i32* @kEmptyStream, align 4
  %84 = call i32 @enc_uint64(%struct.archive_write* %82, i32 %83)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* %16, align 4
  store i32 %88, i32* %7, align 4
  br label %420

89:                                               ; preds = %81
  %90 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %91 = load %struct._7zip*, %struct._7zip** %14, align 8
  %92 = getelementptr inbounds %struct._7zip, %struct._7zip* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 7
  %95 = ashr i32 %94, 3
  %96 = call i32 @enc_uint64(%struct.archive_write* %90, i32 %95)
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = load i32, i32* %16, align 4
  store i32 %100, i32* %7, align 4
  br label %420

101:                                              ; preds = %89
  store i32 0, i32* %17, align 4
  store i32 128, i32* %18, align 4
  %102 = load %struct._7zip*, %struct._7zip** %14, align 8
  %103 = getelementptr inbounds %struct._7zip, %struct._7zip* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load %struct.file*, %struct.file** %104, align 8
  store %struct.file* %105, %struct.file** %15, align 8
  br label %106

106:                                              ; preds = %134, %101
  %107 = load %struct.file*, %struct.file** %15, align 8
  %108 = icmp ne %struct.file* %107, null
  br i1 %108, label %109, label %138

109:                                              ; preds = %106
  %110 = load %struct.file*, %struct.file** %15, align 8
  %111 = getelementptr inbounds %struct.file, %struct.file* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* %17, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %17, align 4
  br label %118

118:                                              ; preds = %114, %109
  %119 = load i32, i32* %18, align 4
  %120 = ashr i32 %119, 1
  store i32 %120, i32* %18, align 4
  %121 = load i32, i32* %18, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %118
  %124 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %125 = load i32, i32* @ARCHIVE_Z_RUN, align 4
  %126 = call i64 @compress_out(%struct.archive_write* %124, i32* %17, i32 1, i32 %125)
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %16, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = load i32, i32* %16, align 4
  store i32 %131, i32* %7, align 4
  br label %420

132:                                              ; preds = %123
  store i32 128, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %133

133:                                              ; preds = %132, %118
  br label %134

134:                                              ; preds = %133
  %135 = load %struct.file*, %struct.file** %15, align 8
  %136 = getelementptr inbounds %struct.file, %struct.file* %135, i32 0, i32 5
  %137 = load %struct.file*, %struct.file** %136, align 8
  store %struct.file* %137, %struct.file** %15, align 8
  br label %106

138:                                              ; preds = %106
  %139 = load i32, i32* %18, align 4
  %140 = icmp ne i32 %139, 128
  br i1 %140, label %141, label %151

141:                                              ; preds = %138
  %142 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %143 = load i32, i32* @ARCHIVE_Z_RUN, align 4
  %144 = call i64 @compress_out(%struct.archive_write* %142, i32* %17, i32 1, i32 %143)
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %16, align 4
  %146 = load i32, i32* %16, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = load i32, i32* %16, align 4
  store i32 %149, i32* %7, align 4
  br label %420

150:                                              ; preds = %141
  br label %151

151:                                              ; preds = %150, %138
  br label %152

152:                                              ; preds = %151, %76
  %153 = load %struct._7zip*, %struct._7zip** %14, align 8
  %154 = getelementptr inbounds %struct._7zip, %struct._7zip* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct._7zip*, %struct._7zip** %14, align 8
  %157 = getelementptr inbounds %struct._7zip, %struct._7zip* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = icmp sgt i32 %155, %158
  br i1 %159, label %160, label %237

160:                                              ; preds = %152
  %161 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %162 = load i32, i32* @kEmptyFile, align 4
  %163 = call i32 @enc_uint64(%struct.archive_write* %161, i32 %162)
  store i32 %163, i32* %16, align 4
  %164 = load i32, i32* %16, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = load i32, i32* %16, align 4
  store i32 %167, i32* %7, align 4
  br label %420

168:                                              ; preds = %160
  %169 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %170 = load %struct._7zip*, %struct._7zip** %14, align 8
  %171 = getelementptr inbounds %struct._7zip, %struct._7zip* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 7
  %174 = ashr i32 %173, 3
  %175 = call i32 @enc_uint64(%struct.archive_write* %169, i32 %174)
  store i32 %175, i32* %16, align 4
  %176 = load i32, i32* %16, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %168
  %179 = load i32, i32* %16, align 4
  store i32 %179, i32* %7, align 4
  br label %420

180:                                              ; preds = %168
  store i32 0, i32* %17, align 4
  store i32 128, i32* %18, align 4
  %181 = load %struct._7zip*, %struct._7zip** %14, align 8
  %182 = getelementptr inbounds %struct._7zip, %struct._7zip* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load %struct.file*, %struct.file** %183, align 8
  store %struct.file* %184, %struct.file** %15, align 8
  br label %185

185:                                              ; preds = %219, %180
  %186 = load %struct.file*, %struct.file** %15, align 8
  %187 = icmp ne %struct.file* %186, null
  br i1 %187, label %188, label %223

188:                                              ; preds = %185
  %189 = load %struct.file*, %struct.file** %15, align 8
  %190 = getelementptr inbounds %struct.file, %struct.file* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %219

194:                                              ; preds = %188
  %195 = load %struct.file*, %struct.file** %15, align 8
  %196 = getelementptr inbounds %struct.file, %struct.file* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %194
  %200 = load i32, i32* %18, align 4
  %201 = load i32, i32* %17, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %17, align 4
  br label %203

203:                                              ; preds = %199, %194
  %204 = load i32, i32* %18, align 4
  %205 = ashr i32 %204, 1
  store i32 %205, i32* %18, align 4
  %206 = load i32, i32* %18, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %218

208:                                              ; preds = %203
  %209 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %210 = load i32, i32* @ARCHIVE_Z_RUN, align 4
  %211 = call i64 @compress_out(%struct.archive_write* %209, i32* %17, i32 1, i32 %210)
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %16, align 4
  %213 = load i32, i32* %16, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %208
  %216 = load i32, i32* %16, align 4
  store i32 %216, i32* %7, align 4
  br label %420

217:                                              ; preds = %208
  store i32 128, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %218

218:                                              ; preds = %217, %203
  br label %219

219:                                              ; preds = %218, %193
  %220 = load %struct.file*, %struct.file** %15, align 8
  %221 = getelementptr inbounds %struct.file, %struct.file* %220, i32 0, i32 5
  %222 = load %struct.file*, %struct.file** %221, align 8
  store %struct.file* %222, %struct.file** %15, align 8
  br label %185

223:                                              ; preds = %185
  %224 = load i32, i32* %18, align 4
  %225 = icmp ne i32 %224, 128
  br i1 %225, label %226, label %236

226:                                              ; preds = %223
  %227 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %228 = load i32, i32* @ARCHIVE_Z_RUN, align 4
  %229 = call i64 @compress_out(%struct.archive_write* %227, i32* %17, i32 1, i32 %228)
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %16, align 4
  %231 = load i32, i32* %16, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %226
  %234 = load i32, i32* %16, align 4
  store i32 %234, i32* %7, align 4
  br label %420

235:                                              ; preds = %226
  br label %236

236:                                              ; preds = %235, %223
  br label %237

237:                                              ; preds = %236, %152
  %238 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %239 = load i32, i32* @kName, align 4
  %240 = call i32 @enc_uint64(%struct.archive_write* %238, i32 %239)
  store i32 %240, i32* %16, align 4
  %241 = load i32, i32* %16, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %237
  %244 = load i32, i32* %16, align 4
  store i32 %244, i32* %7, align 4
  br label %420

245:                                              ; preds = %237
  %246 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %247 = load %struct._7zip*, %struct._7zip** %14, align 8
  %248 = getelementptr inbounds %struct._7zip, %struct._7zip* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, 1
  %251 = call i32 @enc_uint64(%struct.archive_write* %246, i32 %250)
  store i32 %251, i32* %16, align 4
  %252 = load i32, i32* %16, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %245
  %255 = load i32, i32* %16, align 4
  store i32 %255, i32* %7, align 4
  br label %420

256:                                              ; preds = %245
  %257 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %258 = call i32 @enc_uint64(%struct.archive_write* %257, i32 0)
  store i32 %258, i32* %16, align 4
  %259 = load i32, i32* %16, align 4
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %256
  %262 = load i32, i32* %16, align 4
  store i32 %262, i32* %7, align 4
  br label %420

263:                                              ; preds = %256
  %264 = load %struct._7zip*, %struct._7zip** %14, align 8
  %265 = getelementptr inbounds %struct._7zip, %struct._7zip* %264, i32 0, i32 4
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 0
  %267 = load %struct.file*, %struct.file** %266, align 8
  store %struct.file* %267, %struct.file** %15, align 8
  br label %268

268:                                              ; preds = %288, %263
  %269 = load %struct.file*, %struct.file** %15, align 8
  %270 = icmp ne %struct.file* %269, null
  br i1 %270, label %271, label %292

271:                                              ; preds = %268
  %272 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %273 = load %struct.file*, %struct.file** %15, align 8
  %274 = getelementptr inbounds %struct.file, %struct.file* %273, i32 0, i32 1
  %275 = load i32*, i32** %274, align 8
  %276 = load %struct.file*, %struct.file** %15, align 8
  %277 = getelementptr inbounds %struct.file, %struct.file* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = add nsw i32 %278, 2
  %280 = load i32, i32* @ARCHIVE_Z_RUN, align 4
  %281 = call i64 @compress_out(%struct.archive_write* %272, i32* %275, i32 %279, i32 %280)
  %282 = trunc i64 %281 to i32
  store i32 %282, i32* %16, align 4
  %283 = load i32, i32* %16, align 4
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %271
  %286 = load i32, i32* %16, align 4
  store i32 %286, i32* %7, align 4
  br label %420

287:                                              ; preds = %271
  br label %288

288:                                              ; preds = %287
  %289 = load %struct.file*, %struct.file** %15, align 8
  %290 = getelementptr inbounds %struct.file, %struct.file* %289, i32 0, i32 5
  %291 = load %struct.file*, %struct.file** %290, align 8
  store %struct.file* %291, %struct.file** %15, align 8
  br label %268

292:                                              ; preds = %268
  %293 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %294 = load i32, i32* @kMTime, align 4
  %295 = load i32, i32* @MTIME_IS_SET, align 4
  %296 = load i32, i32* @MTIME, align 4
  %297 = call i32 @make_time(%struct.archive_write* %293, i32 %294, i32 %295, i32 %296)
  store i32 %297, i32* %16, align 4
  %298 = load i32, i32* %16, align 4
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %300, label %302

300:                                              ; preds = %292
  %301 = load i32, i32* %16, align 4
  store i32 %301, i32* %7, align 4
  br label %420

302:                                              ; preds = %292
  %303 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %304 = load i32, i32* @kCTime, align 4
  %305 = load i32, i32* @CTIME_IS_SET, align 4
  %306 = load i32, i32* @CTIME, align 4
  %307 = call i32 @make_time(%struct.archive_write* %303, i32 %304, i32 %305, i32 %306)
  store i32 %307, i32* %16, align 4
  %308 = load i32, i32* %16, align 4
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %302
  %311 = load i32, i32* %16, align 4
  store i32 %311, i32* %7, align 4
  br label %420

312:                                              ; preds = %302
  %313 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %314 = load i32, i32* @kATime, align 4
  %315 = load i32, i32* @ATIME_IS_SET, align 4
  %316 = load i32, i32* @ATIME, align 4
  %317 = call i32 @make_time(%struct.archive_write* %313, i32 %314, i32 %315, i32 %316)
  store i32 %317, i32* %16, align 4
  %318 = load i32, i32* %16, align 4
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %312
  %321 = load i32, i32* %16, align 4
  store i32 %321, i32* %7, align 4
  br label %420

322:                                              ; preds = %312
  %323 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %324 = load i32, i32* @kAttributes, align 4
  %325 = call i32 @enc_uint64(%struct.archive_write* %323, i32 %324)
  store i32 %325, i32* %16, align 4
  %326 = load i32, i32* %16, align 4
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %322
  %329 = load i32, i32* %16, align 4
  store i32 %329, i32* %7, align 4
  br label %420

330:                                              ; preds = %322
  %331 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %332 = load %struct._7zip*, %struct._7zip** %14, align 8
  %333 = getelementptr inbounds %struct._7zip, %struct._7zip* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = mul nsw i32 %334, 4
  %336 = add nsw i32 2, %335
  %337 = call i32 @enc_uint64(%struct.archive_write* %331, i32 %336)
  store i32 %337, i32* %16, align 4
  %338 = load i32, i32* %16, align 4
  %339 = icmp slt i32 %338, 0
  br i1 %339, label %340, label %342

340:                                              ; preds = %330
  %341 = load i32, i32* %16, align 4
  store i32 %341, i32* %7, align 4
  br label %420

342:                                              ; preds = %330
  %343 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %344 = call i32 @enc_uint64(%struct.archive_write* %343, i32 1)
  store i32 %344, i32* %16, align 4
  %345 = load i32, i32* %16, align 4
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %342
  %348 = load i32, i32* %16, align 4
  store i32 %348, i32* %7, align 4
  br label %420

349:                                              ; preds = %342
  %350 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %351 = call i32 @enc_uint64(%struct.archive_write* %350, i32 0)
  store i32 %351, i32* %16, align 4
  %352 = load i32, i32* %16, align 4
  %353 = icmp slt i32 %352, 0
  br i1 %353, label %354, label %356

354:                                              ; preds = %349
  %355 = load i32, i32* %16, align 4
  store i32 %355, i32* %7, align 4
  br label %420

356:                                              ; preds = %349
  %357 = load %struct._7zip*, %struct._7zip** %14, align 8
  %358 = getelementptr inbounds %struct._7zip, %struct._7zip* %357, i32 0, i32 4
  %359 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %358, i32 0, i32 0
  %360 = load %struct.file*, %struct.file** %359, align 8
  store %struct.file* %360, %struct.file** %15, align 8
  br label %361

361:                                              ; preds = %398, %356
  %362 = load %struct.file*, %struct.file** %15, align 8
  %363 = icmp ne %struct.file* %362, null
  br i1 %363, label %364, label %402

364:                                              ; preds = %361
  %365 = load %struct.file*, %struct.file** %15, align 8
  %366 = getelementptr inbounds %struct.file, %struct.file* %365, i32 0, i32 4
  %367 = load i64, i64* %366, align 8
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %364
  store i32 32784, i32* %20, align 4
  br label %371

370:                                              ; preds = %364
  store i32 32800, i32* %20, align 4
  br label %371

371:                                              ; preds = %370, %369
  %372 = load %struct.file*, %struct.file** %15, align 8
  %373 = getelementptr inbounds %struct.file, %struct.file* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 4
  %375 = and i32 %374, 146
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %371
  %378 = load i32, i32* %20, align 4
  %379 = or i32 %378, 1
  store i32 %379, i32* %20, align 4
  br label %380

380:                                              ; preds = %377, %371
  %381 = load %struct.file*, %struct.file** %15, align 8
  %382 = getelementptr inbounds %struct.file, %struct.file* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 4
  %384 = shl i32 %383, 16
  %385 = load i32, i32* %20, align 4
  %386 = or i32 %385, %384
  store i32 %386, i32* %20, align 4
  %387 = load i32, i32* %20, align 4
  %388 = call i32 @archive_le32enc(i32* %19, i32 %387)
  %389 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %390 = load i32, i32* @ARCHIVE_Z_RUN, align 4
  %391 = call i64 @compress_out(%struct.archive_write* %389, i32* %19, i32 4, i32 %390)
  %392 = trunc i64 %391 to i32
  store i32 %392, i32* %16, align 4
  %393 = load i32, i32* %16, align 4
  %394 = icmp slt i32 %393, 0
  br i1 %394, label %395, label %397

395:                                              ; preds = %380
  %396 = load i32, i32* %16, align 4
  store i32 %396, i32* %7, align 4
  br label %420

397:                                              ; preds = %380
  br label %398

398:                                              ; preds = %397
  %399 = load %struct.file*, %struct.file** %15, align 8
  %400 = getelementptr inbounds %struct.file, %struct.file* %399, i32 0, i32 5
  %401 = load %struct.file*, %struct.file** %400, align 8
  store %struct.file* %401, %struct.file** %15, align 8
  br label %361

402:                                              ; preds = %361
  %403 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %404 = load i32, i32* @kEnd, align 4
  %405 = call i32 @enc_uint64(%struct.archive_write* %403, i32 %404)
  store i32 %405, i32* %16, align 4
  %406 = load i32, i32* %16, align 4
  %407 = icmp slt i32 %406, 0
  br i1 %407, label %408, label %410

408:                                              ; preds = %402
  %409 = load i32, i32* %16, align 4
  store i32 %409, i32* %7, align 4
  br label %420

410:                                              ; preds = %402
  %411 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %412 = load i32, i32* @kEnd, align 4
  %413 = call i32 @enc_uint64(%struct.archive_write* %411, i32 %412)
  store i32 %413, i32* %16, align 4
  %414 = load i32, i32* %16, align 4
  %415 = icmp slt i32 %414, 0
  br i1 %415, label %416, label %418

416:                                              ; preds = %410
  %417 = load i32, i32* %16, align 4
  store i32 %417, i32* %7, align 4
  br label %420

418:                                              ; preds = %410
  %419 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %419, i32* %7, align 4
  br label %420

420:                                              ; preds = %418, %416, %408, %395, %354, %347, %340, %328, %320, %310, %300, %285, %261, %254, %243, %233, %215, %178, %166, %148, %130, %99, %87, %74, %64, %55, %43, %30
  %421 = load i32, i32* %7, align 4
  ret i32 %421
}

declare dso_local i32 @enc_uint64(%struct.archive_write*, i32) #1

declare dso_local i32 @make_streamsInfo(%struct.archive_write*, i32, i32, i32, i32, %struct.coder*, i32, i32) #1

declare dso_local i64 @compress_out(%struct.archive_write*, i32*, i32, i32) #1

declare dso_local i32 @make_time(%struct.archive_write*, i32, i32, i32) #1

declare dso_local i32 @archive_le32enc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
