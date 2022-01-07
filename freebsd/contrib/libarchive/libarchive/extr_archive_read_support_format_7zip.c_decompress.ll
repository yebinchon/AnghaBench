; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_decompress.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (%struct.TYPE_12__*)*, i32 (i32*, i32*)* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, %struct.archive_read* }
%struct.archive_read = type { i32 }
%struct._7zip = type { i32, i64, i64, i8*, i64, i64, i8*, i64, i32, i64, %struct.TYPE_11__, %struct.TYPE_12__, i32, i32, %struct.TYPE_10__, i32, %struct.TYPE_14__, %struct.TYPE_16__, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_11__ = type { i8*, i64, i8*, i64, i32, i32 }
%struct.TYPE_14__ = type { i64, i8*, i64, i32* }
%struct.TYPE_16__ = type { i8*, i64, i8*, i64 }
%struct.TYPE_13__ = type { i8*, i64, i8*, i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@_7Z_X86 = common dso_local global i64 0, align 8
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@_7Z_X86_BCJ2 = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"BCJ2 conversion Failed\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Decompression internal error\00", align 1
@ppmd_read = common dso_local global i32 0, align 4
@__archive_ppmd7_functions = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to initialize PPMd range decorder\00", align 1
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Failed to decode PPMd\00", align 1
@LZMA_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct._7zip*, i8*, i64*, i8*, i64*)* @decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decompress(%struct.archive_read* %0, %struct._7zip* %1, i8* %2, i64* %3, i8* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.archive_read*, align 8
  %9 = alloca %struct._7zip*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %8, align 8
  store %struct._7zip* %1, %struct._7zip** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64* %3, i64** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64* %5, i64** %13, align 8
  %32 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %32, i32* %23, align 4
  %33 = load i64*, i64** %13, align 8
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %16, align 8
  store i64 %34, i64* %18, align 8
  %35 = load i64*, i64** %11, align 8
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %17, align 8
  store i64 %36, i64* %19, align 8
  %37 = load i8*, i8** %12, align 8
  store i8* %37, i8** %14, align 8
  %38 = load i8*, i8** %10, align 8
  store i8* %38, i8** %15, align 8
  %39 = load %struct._7zip*, %struct._7zip** %9, align 8
  %40 = getelementptr inbounds %struct._7zip, %struct._7zip* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 129
  br i1 %42, label %43, label %116

43:                                               ; preds = %6
  %44 = load %struct._7zip*, %struct._7zip** %9, align 8
  %45 = getelementptr inbounds %struct._7zip, %struct._7zip* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @_7Z_X86, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %116

49:                                               ; preds = %43
  %50 = load i64, i64* %16, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load i64, i64* %19, align 8
  %54 = icmp ult i64 %53, 5
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct._7zip*, %struct._7zip** %9, align 8
  %57 = getelementptr inbounds %struct._7zip, %struct._7zip* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i64*, i64** %13, align 8
  store i64 0, i64* %61, align 8
  %62 = load i64*, i64** %11, align 8
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* %23, align 4
  store i32 %63, i32* %7, align 4
  br label %537

64:                                               ; preds = %55, %52, %49
  store i32 0, i32* %24, align 4
  br label %65

65:                                               ; preds = %91, %64
  %66 = load %struct._7zip*, %struct._7zip** %9, align 8
  %67 = getelementptr inbounds %struct._7zip, %struct._7zip* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i64, i64* %19, align 8
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %70, %65
  %74 = phi i1 [ false, %65 ], [ %72, %70 ]
  br i1 %74, label %75, label %94

75:                                               ; preds = %73
  %76 = load %struct._7zip*, %struct._7zip** %9, align 8
  %77 = getelementptr inbounds %struct._7zip, %struct._7zip* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %24, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = load i8*, i8** %15, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %15, align 8
  store i8 %82, i8* %83, align 1
  %85 = load i64, i64* %19, align 8
  %86 = add i64 %85, -1
  store i64 %86, i64* %19, align 8
  %87 = load %struct._7zip*, %struct._7zip** %9, align 8
  %88 = getelementptr inbounds %struct._7zip, %struct._7zip* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, -1
  store i64 %90, i64* %88, align 8
  br label %91

91:                                               ; preds = %75
  %92 = load i32, i32* %24, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %24, align 4
  br label %65

94:                                               ; preds = %73
  %95 = load i64, i64* %16, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i64, i64* %19, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %97, %94
  %101 = load i64, i64* %16, align 8
  %102 = load i64, i64* %18, align 8
  %103 = sub i64 %101, %102
  %104 = load i64*, i64** %13, align 8
  store i64 %103, i64* %104, align 8
  %105 = load i64, i64* %17, align 8
  %106 = load i64, i64* %19, align 8
  %107 = sub i64 %105, %106
  %108 = load i64*, i64** %11, align 8
  store i64 %107, i64* %108, align 8
  %109 = load i64, i64* %16, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %100
  %112 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %112, i32* %23, align 4
  br label %113

113:                                              ; preds = %111, %100
  %114 = load i32, i32* %23, align 4
  store i32 %114, i32* %7, align 4
  br label %537

115:                                              ; preds = %97
  br label %116

116:                                              ; preds = %115, %43, %6
  %117 = load i8*, i8** %15, align 8
  store i8* %117, i8** %20, align 8
  %118 = load i64, i64* %19, align 8
  store i64 %118, i64* %21, align 8
  %119 = load %struct._7zip*, %struct._7zip** %9, align 8
  %120 = getelementptr inbounds %struct._7zip, %struct._7zip* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @_7Z_X86_BCJ2, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %193

124:                                              ; preds = %116
  %125 = load %struct._7zip*, %struct._7zip** %9, align 8
  %126 = getelementptr inbounds %struct._7zip, %struct._7zip* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %186

129:                                              ; preds = %124
  %130 = load %struct._7zip*, %struct._7zip** %9, align 8
  %131 = getelementptr inbounds %struct._7zip, %struct._7zip* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %26, align 8
  %133 = load %struct._7zip*, %struct._7zip** %9, align 8
  %134 = load i8*, i8** %15, align 8
  %135 = load i64, i64* %19, align 8
  %136 = call i64 @Bcj2_Decode(%struct._7zip* %133, i8* %134, i64 %135)
  store i64 %136, i64* %25, align 8
  %137 = load i64, i64* %25, align 8
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %129
  %140 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %141 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %140, i32 0, i32 0
  %142 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %143 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %141, i32 %142, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %144 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %144, i32* %7, align 4
  br label %537

145:                                              ; preds = %129
  %146 = load i64, i64* %26, align 8
  %147 = load %struct._7zip*, %struct._7zip** %9, align 8
  %148 = getelementptr inbounds %struct._7zip, %struct._7zip* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = sub i64 %146, %149
  %151 = load %struct._7zip*, %struct._7zip** %9, align 8
  %152 = getelementptr inbounds %struct._7zip, %struct._7zip* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = sub i64 %153, %150
  store i64 %154, i64* %152, align 8
  %155 = load i64, i64* %25, align 8
  %156 = load i64, i64* %19, align 8
  %157 = sub i64 %156, %155
  store i64 %157, i64* %19, align 8
  %158 = load i64, i64* %16, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %145
  %161 = load i64, i64* %19, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %180

163:                                              ; preds = %160, %145
  %164 = load i64*, i64** %13, align 8
  store i64 0, i64* %164, align 8
  %165 = load i64, i64* %17, align 8
  %166 = load i64, i64* %19, align 8
  %167 = sub i64 %165, %166
  %168 = load i64*, i64** %11, align 8
  store i64 %167, i64* %168, align 8
  %169 = load i64, i64* %16, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %163
  %172 = load %struct._7zip*, %struct._7zip** %9, align 8
  %173 = getelementptr inbounds %struct._7zip, %struct._7zip* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %177, i32* %23, align 4
  br label %178

178:                                              ; preds = %176, %171, %163
  %179 = load i32, i32* %23, align 4
  store i32 %179, i32* %7, align 4
  br label %537

180:                                              ; preds = %160
  %181 = load i64, i64* %25, align 8
  %182 = load i8*, i8** %15, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 %181
  store i8* %183, i8** %15, align 8
  %184 = load i8*, i8** %15, align 8
  store i8* %184, i8** %20, align 8
  %185 = load i64, i64* %19, align 8
  store i64 %185, i64* %21, align 8
  br label %186

186:                                              ; preds = %180, %124
  %187 = load %struct._7zip*, %struct._7zip** %9, align 8
  %188 = getelementptr inbounds %struct._7zip, %struct._7zip* %187, i32 0, i32 6
  %189 = load i8*, i8** %188, align 8
  store i8* %189, i8** %15, align 8
  %190 = load %struct._7zip*, %struct._7zip** %9, align 8
  %191 = getelementptr inbounds %struct._7zip, %struct._7zip* %190, i32 0, i32 7
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %19, align 8
  br label %193

193:                                              ; preds = %186, %116
  %194 = load %struct._7zip*, %struct._7zip** %9, align 8
  %195 = getelementptr inbounds %struct._7zip, %struct._7zip* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  switch i32 %196, label %391 [
    i32 132, label %197
    i32 128, label %222
  ]

197:                                              ; preds = %193
  %198 = load i64, i64* %18, align 8
  %199 = load i64, i64* %19, align 8
  %200 = icmp ugt i64 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = load i64, i64* %19, align 8
  br label %205

203:                                              ; preds = %197
  %204 = load i64, i64* %18, align 8
  br label %205

205:                                              ; preds = %203, %201
  %206 = phi i64 [ %202, %201 ], [ %204, %203 ]
  store i64 %206, i64* %27, align 8
  %207 = load i8*, i8** %15, align 8
  %208 = load i8*, i8** %14, align 8
  %209 = load i64, i64* %27, align 8
  %210 = call i32 @memcpy(i8* %207, i8* %208, i64 %209)
  %211 = load i64, i64* %27, align 8
  %212 = load i64, i64* %18, align 8
  %213 = sub i64 %212, %211
  store i64 %213, i64* %18, align 8
  %214 = load i64, i64* %27, align 8
  %215 = load i64, i64* %19, align 8
  %216 = sub i64 %215, %214
  store i64 %216, i64* %19, align 8
  %217 = load i64, i64* %16, align 8
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %205
  %220 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %220, i32* %23, align 4
  br label %221

221:                                              ; preds = %219, %205
  br label %397

222:                                              ; preds = %193
  %223 = load %struct._7zip*, %struct._7zip** %9, align 8
  %224 = getelementptr inbounds %struct._7zip, %struct._7zip* %223, i32 0, i32 15
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %235

227:                                              ; preds = %222
  %228 = load %struct._7zip*, %struct._7zip** %9, align 8
  %229 = getelementptr inbounds %struct._7zip, %struct._7zip* %228, i32 0, i32 8
  %230 = load i32, i32* %229, align 8
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %227
  %233 = load i64, i64* %19, align 8
  %234 = icmp ule i64 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %232, %227, %222
  %236 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %237 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %236, i32 0, i32 0
  %238 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %239 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %237, i32 %238, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %240 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %240, i32* %7, align 4
  br label %537

241:                                              ; preds = %232
  %242 = load i8*, i8** %14, align 8
  %243 = load %struct._7zip*, %struct._7zip** %9, align 8
  %244 = getelementptr inbounds %struct._7zip, %struct._7zip* %243, i32 0, i32 10
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 0
  store i8* %242, i8** %245, align 8
  %246 = load i64, i64* %18, align 8
  %247 = load %struct._7zip*, %struct._7zip** %9, align 8
  %248 = getelementptr inbounds %struct._7zip, %struct._7zip* %247, i32 0, i32 10
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 1
  store i64 %246, i64* %249, align 8
  %250 = load i8*, i8** %15, align 8
  %251 = load %struct._7zip*, %struct._7zip** %9, align 8
  %252 = getelementptr inbounds %struct._7zip, %struct._7zip* %251, i32 0, i32 10
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 2
  store i8* %250, i8** %253, align 8
  %254 = load i64, i64* %19, align 8
  %255 = load %struct._7zip*, %struct._7zip** %9, align 8
  %256 = getelementptr inbounds %struct._7zip, %struct._7zip* %255, i32 0, i32 10
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 3
  store i64 %254, i64* %257, align 8
  %258 = load %struct._7zip*, %struct._7zip** %9, align 8
  %259 = getelementptr inbounds %struct._7zip, %struct._7zip* %258, i32 0, i32 8
  %260 = load i32, i32* %259, align 8
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %302

262:                                              ; preds = %241
  %263 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %264 = load %struct._7zip*, %struct._7zip** %9, align 8
  %265 = getelementptr inbounds %struct._7zip, %struct._7zip* %264, i32 0, i32 14
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 1
  store %struct.archive_read* %263, %struct.archive_read** %266, align 8
  %267 = load %struct._7zip*, %struct._7zip** %9, align 8
  %268 = getelementptr inbounds %struct._7zip, %struct._7zip* %267, i32 0, i32 14
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 0
  store i32* @ppmd_read, i32** %269, align 8
  %270 = load %struct._7zip*, %struct._7zip** %9, align 8
  %271 = getelementptr inbounds %struct._7zip, %struct._7zip* %270, i32 0, i32 14
  %272 = load %struct._7zip*, %struct._7zip** %9, align 8
  %273 = getelementptr inbounds %struct._7zip, %struct._7zip* %272, i32 0, i32 11
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 1
  store %struct.TYPE_10__* %271, %struct.TYPE_10__** %274, align 8
  %275 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @__archive_ppmd7_functions, i32 0, i32 0), align 8
  %276 = load %struct._7zip*, %struct._7zip** %9, align 8
  %277 = getelementptr inbounds %struct._7zip, %struct._7zip* %276, i32 0, i32 11
  %278 = call i32 %275(%struct.TYPE_12__* %277)
  store i32 %278, i32* %22, align 4
  %279 = load i32, i32* %22, align 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %289

281:                                              ; preds = %262
  %282 = load %struct._7zip*, %struct._7zip** %9, align 8
  %283 = getelementptr inbounds %struct._7zip, %struct._7zip* %282, i32 0, i32 8
  store i32 -1, i32* %283, align 8
  %284 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %285 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %284, i32 0, i32 0
  %286 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %287 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %285, i32 %286, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %288 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %288, i32* %7, align 4
  br label %537

289:                                              ; preds = %262
  %290 = load %struct._7zip*, %struct._7zip** %9, align 8
  %291 = getelementptr inbounds %struct._7zip, %struct._7zip* %290, i32 0, i32 10
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 5
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %289
  %296 = load %struct._7zip*, %struct._7zip** %9, align 8
  %297 = getelementptr inbounds %struct._7zip, %struct._7zip* %296, i32 0, i32 8
  store i32 -1, i32* %297, align 8
  %298 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %298, i32* %7, align 4
  br label %537

299:                                              ; preds = %289
  %300 = load %struct._7zip*, %struct._7zip** %9, align 8
  %301 = getelementptr inbounds %struct._7zip, %struct._7zip* %300, i32 0, i32 8
  store i32 1, i32* %301, align 8
  br label %302

302:                                              ; preds = %299, %241
  %303 = load i64, i64* %18, align 8
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %302
  %306 = load %struct._7zip*, %struct._7zip** %9, align 8
  %307 = getelementptr inbounds %struct._7zip, %struct._7zip* %306, i32 0, i32 13
  %308 = load i32, i32* %307, align 4
  store i32 %308, i32* %28, align 4
  br label %310

309:                                              ; preds = %302
  store i32 0, i32* %28, align 4
  br label %310

310:                                              ; preds = %309, %305
  br label %311

311:                                              ; preds = %380, %310
  %312 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @__archive_ppmd7_functions, i32 0, i32 1), align 8
  %313 = load %struct._7zip*, %struct._7zip** %9, align 8
  %314 = getelementptr inbounds %struct._7zip, %struct._7zip* %313, i32 0, i32 12
  %315 = load %struct._7zip*, %struct._7zip** %9, align 8
  %316 = getelementptr inbounds %struct._7zip, %struct._7zip* %315, i32 0, i32 11
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 0
  %318 = call i32 %312(i32* %314, i32* %317)
  store i32 %318, i32* %29, align 4
  %319 = load i32, i32* %29, align 4
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %321, label %329

321:                                              ; preds = %311
  %322 = load %struct._7zip*, %struct._7zip** %9, align 8
  %323 = getelementptr inbounds %struct._7zip, %struct._7zip* %322, i32 0, i32 8
  store i32 -1, i32* %323, align 8
  %324 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %325 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %324, i32 0, i32 0
  %326 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %327 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %325, i32 %326, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %328 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %328, i32* %7, align 4
  br label %537

329:                                              ; preds = %311
  %330 = load %struct._7zip*, %struct._7zip** %9, align 8
  %331 = getelementptr inbounds %struct._7zip, %struct._7zip* %330, i32 0, i32 10
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 5
  %333 = load i32, i32* %332, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %339

335:                                              ; preds = %329
  %336 = load %struct._7zip*, %struct._7zip** %9, align 8
  %337 = getelementptr inbounds %struct._7zip, %struct._7zip* %336, i32 0, i32 8
  store i32 -1, i32* %337, align 8
  %338 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %338, i32* %7, align 4
  br label %537

339:                                              ; preds = %329
  %340 = load i32, i32* %29, align 4
  %341 = trunc i32 %340 to i8
  %342 = load %struct._7zip*, %struct._7zip** %9, align 8
  %343 = getelementptr inbounds %struct._7zip, %struct._7zip* %342, i32 0, i32 10
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i32 0, i32 2
  %345 = load i8*, i8** %344, align 8
  %346 = getelementptr inbounds i8, i8* %345, i32 1
  store i8* %346, i8** %344, align 8
  store i8 %341, i8* %345, align 1
  %347 = load %struct._7zip*, %struct._7zip** %9, align 8
  %348 = getelementptr inbounds %struct._7zip, %struct._7zip* %347, i32 0, i32 10
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i32 0, i32 3
  %350 = load i64, i64* %349, align 8
  %351 = add i64 %350, -1
  store i64 %351, i64* %349, align 8
  %352 = load %struct._7zip*, %struct._7zip** %9, align 8
  %353 = getelementptr inbounds %struct._7zip, %struct._7zip* %352, i32 0, i32 10
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 4
  %355 = load i32, i32* %354, align 8
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %354, align 8
  %357 = load i32, i32* %28, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %362

359:                                              ; preds = %339
  %360 = load i32, i32* %28, align 4
  %361 = add nsw i32 %360, -1
  store i32 %361, i32* %28, align 4
  br label %362

362:                                              ; preds = %359, %339
  br label %363

363:                                              ; preds = %362
  %364 = load %struct._7zip*, %struct._7zip** %9, align 8
  %365 = getelementptr inbounds %struct._7zip, %struct._7zip* %364, i32 0, i32 10
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i32 0, i32 3
  %367 = load i64, i64* %366, align 8
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %380

369:                                              ; preds = %363
  %370 = load %struct._7zip*, %struct._7zip** %9, align 8
  %371 = getelementptr inbounds %struct._7zip, %struct._7zip* %370, i32 0, i32 10
  %372 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %378, label %375

375:                                              ; preds = %369
  %376 = load i32, i32* %28, align 4
  %377 = icmp ne i32 %376, 0
  br label %378

378:                                              ; preds = %375, %369
  %379 = phi i1 [ true, %369 ], [ %377, %375 ]
  br label %380

380:                                              ; preds = %378, %363
  %381 = phi i1 [ false, %363 ], [ %379, %378 ]
  br i1 %381, label %311, label %382

382:                                              ; preds = %380
  %383 = load %struct._7zip*, %struct._7zip** %9, align 8
  %384 = getelementptr inbounds %struct._7zip, %struct._7zip* %383, i32 0, i32 10
  %385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i32 0, i32 1
  %386 = load i64, i64* %385, align 8
  store i64 %386, i64* %18, align 8
  %387 = load %struct._7zip*, %struct._7zip** %9, align 8
  %388 = getelementptr inbounds %struct._7zip, %struct._7zip* %387, i32 0, i32 10
  %389 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %388, i32 0, i32 3
  %390 = load i64, i64* %389, align 8
  store i64 %390, i64* %19, align 8
  br label %397

391:                                              ; preds = %193
  %392 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %393 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %392, i32 0, i32 0
  %394 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %395 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %393, i32 %394, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %396 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %396, i32* %7, align 4
  br label %537

397:                                              ; preds = %382, %221
  %398 = load i32, i32* %23, align 4
  %399 = load i32, i32* @ARCHIVE_OK, align 4
  %400 = icmp ne i32 %398, %399
  br i1 %400, label %401, label %407

401:                                              ; preds = %397
  %402 = load i32, i32* %23, align 4
  %403 = load i32, i32* @ARCHIVE_EOF, align 4
  %404 = icmp ne i32 %402, %403
  br i1 %404, label %405, label %407

405:                                              ; preds = %401
  %406 = load i32, i32* %23, align 4
  store i32 %406, i32* %7, align 4
  br label %537

407:                                              ; preds = %401, %397
  %408 = load i64, i64* %16, align 8
  %409 = load i64, i64* %18, align 8
  %410 = sub i64 %408, %409
  %411 = load i64*, i64** %13, align 8
  store i64 %410, i64* %411, align 8
  %412 = load i64, i64* %17, align 8
  %413 = load i64, i64* %19, align 8
  %414 = sub i64 %412, %413
  %415 = load i64*, i64** %11, align 8
  store i64 %414, i64* %415, align 8
  %416 = load %struct._7zip*, %struct._7zip** %9, align 8
  %417 = getelementptr inbounds %struct._7zip, %struct._7zip* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = icmp ne i32 %418, 129
  br i1 %419, label %420, label %471

420:                                              ; preds = %407
  %421 = load %struct._7zip*, %struct._7zip** %9, align 8
  %422 = getelementptr inbounds %struct._7zip, %struct._7zip* %421, i32 0, i32 1
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* @_7Z_X86, align 8
  %425 = icmp eq i64 %423, %424
  br i1 %425, label %426, label %471

426:                                              ; preds = %420
  %427 = load %struct._7zip*, %struct._7zip** %9, align 8
  %428 = load i8*, i8** %10, align 8
  %429 = load i64*, i64** %11, align 8
  %430 = load i64, i64* %429, align 8
  %431 = call i64 @x86_Convert(%struct._7zip* %427, i8* %428, i64 %430)
  store i64 %431, i64* %30, align 8
  %432 = load i64*, i64** %11, align 8
  %433 = load i64, i64* %432, align 8
  %434 = load i64, i64* %30, align 8
  %435 = sub i64 %433, %434
  %436 = load %struct._7zip*, %struct._7zip** %9, align 8
  %437 = getelementptr inbounds %struct._7zip, %struct._7zip* %436, i32 0, i32 2
  store i64 %435, i64* %437, align 8
  %438 = load %struct._7zip*, %struct._7zip** %9, align 8
  %439 = getelementptr inbounds %struct._7zip, %struct._7zip* %438, i32 0, i32 2
  %440 = load i64, i64* %439, align 8
  %441 = icmp sgt i64 %440, 0
  br i1 %441, label %442, label %467

442:                                              ; preds = %426
  %443 = load %struct._7zip*, %struct._7zip** %9, align 8
  %444 = getelementptr inbounds %struct._7zip, %struct._7zip* %443, i32 0, i32 2
  %445 = load i64, i64* %444, align 8
  %446 = icmp sle i64 %445, 4
  br i1 %446, label %447, label %467

447:                                              ; preds = %442
  %448 = load i64, i64* %16, align 8
  %449 = icmp ne i64 %448, 0
  br i1 %449, label %450, label %467

450:                                              ; preds = %447
  %451 = load i32, i32* %23, align 4
  %452 = load i32, i32* @ARCHIVE_EOF, align 4
  %453 = icmp ne i32 %451, %452
  br i1 %453, label %454, label %467

454:                                              ; preds = %450
  %455 = load %struct._7zip*, %struct._7zip** %9, align 8
  %456 = getelementptr inbounds %struct._7zip, %struct._7zip* %455, i32 0, i32 3
  %457 = load i8*, i8** %456, align 8
  %458 = load i8*, i8** %10, align 8
  %459 = load i64, i64* %30, align 8
  %460 = getelementptr inbounds i8, i8* %458, i64 %459
  %461 = load %struct._7zip*, %struct._7zip** %9, align 8
  %462 = getelementptr inbounds %struct._7zip, %struct._7zip* %461, i32 0, i32 2
  %463 = load i64, i64* %462, align 8
  %464 = call i32 @memcpy(i8* %457, i8* %460, i64 %463)
  %465 = load i64, i64* %30, align 8
  %466 = load i64*, i64** %11, align 8
  store i64 %465, i64* %466, align 8
  br label %470

467:                                              ; preds = %450, %447, %442, %426
  %468 = load %struct._7zip*, %struct._7zip** %9, align 8
  %469 = getelementptr inbounds %struct._7zip, %struct._7zip* %468, i32 0, i32 2
  store i64 0, i64* %469, align 8
  br label %470

470:                                              ; preds = %467, %454
  br label %471

471:                                              ; preds = %470, %420, %407
  %472 = load %struct._7zip*, %struct._7zip** %9, align 8
  %473 = getelementptr inbounds %struct._7zip, %struct._7zip* %472, i32 0, i32 1
  %474 = load i64, i64* %473, align 8
  %475 = load i64, i64* @_7Z_X86_BCJ2, align 8
  %476 = icmp eq i64 %474, %475
  br i1 %476, label %477, label %535

477:                                              ; preds = %471
  %478 = load %struct._7zip*, %struct._7zip** %9, align 8
  %479 = getelementptr inbounds %struct._7zip, %struct._7zip* %478, i32 0, i32 7
  %480 = load i64, i64* %479, align 8
  %481 = load i64, i64* %19, align 8
  %482 = sub i64 %480, %481
  %483 = load %struct._7zip*, %struct._7zip** %9, align 8
  %484 = getelementptr inbounds %struct._7zip, %struct._7zip* %483, i32 0, i32 9
  store i64 %482, i64* %484, align 8
  %485 = load %struct._7zip*, %struct._7zip** %9, align 8
  %486 = getelementptr inbounds %struct._7zip, %struct._7zip* %485, i32 0, i32 9
  %487 = load i64, i64* %486, align 8
  %488 = load %struct._7zip*, %struct._7zip** %9, align 8
  %489 = getelementptr inbounds %struct._7zip, %struct._7zip* %488, i32 0, i32 5
  %490 = load i64, i64* %489, align 8
  %491 = icmp ugt i64 %487, %490
  br i1 %491, label %492, label %498

492:                                              ; preds = %477
  %493 = load %struct._7zip*, %struct._7zip** %9, align 8
  %494 = getelementptr inbounds %struct._7zip, %struct._7zip* %493, i32 0, i32 5
  %495 = load i64, i64* %494, align 8
  %496 = load %struct._7zip*, %struct._7zip** %9, align 8
  %497 = getelementptr inbounds %struct._7zip, %struct._7zip* %496, i32 0, i32 9
  store i64 %495, i64* %497, align 8
  br label %498

498:                                              ; preds = %492, %477
  %499 = load %struct._7zip*, %struct._7zip** %9, align 8
  %500 = getelementptr inbounds %struct._7zip, %struct._7zip* %499, i32 0, i32 9
  %501 = load i64, i64* %500, align 8
  %502 = load %struct._7zip*, %struct._7zip** %9, align 8
  %503 = getelementptr inbounds %struct._7zip, %struct._7zip* %502, i32 0, i32 4
  store i64 %501, i64* %503, align 8
  %504 = load %struct._7zip*, %struct._7zip** %9, align 8
  %505 = load i8*, i8** %20, align 8
  %506 = load i64, i64* %21, align 8
  %507 = call i64 @Bcj2_Decode(%struct._7zip* %504, i8* %505, i64 %506)
  store i64 %507, i64* %31, align 8
  %508 = load i64, i64* %31, align 8
  %509 = icmp slt i64 %508, 0
  br i1 %509, label %510, label %516

510:                                              ; preds = %498
  %511 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %512 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %511, i32 0, i32 0
  %513 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %514 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %512, i32 %513, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %515 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %515, i32* %7, align 4
  br label %537

516:                                              ; preds = %498
  %517 = load %struct._7zip*, %struct._7zip** %9, align 8
  %518 = getelementptr inbounds %struct._7zip, %struct._7zip* %517, i32 0, i32 9
  %519 = load i64, i64* %518, align 8
  %520 = load %struct._7zip*, %struct._7zip** %9, align 8
  %521 = getelementptr inbounds %struct._7zip, %struct._7zip* %520, i32 0, i32 4
  %522 = load i64, i64* %521, align 8
  %523 = sub i64 %519, %522
  %524 = load %struct._7zip*, %struct._7zip** %9, align 8
  %525 = getelementptr inbounds %struct._7zip, %struct._7zip* %524, i32 0, i32 5
  %526 = load i64, i64* %525, align 8
  %527 = sub i64 %526, %523
  store i64 %527, i64* %525, align 8
  %528 = load i64, i64* %31, align 8
  %529 = load i64, i64* %21, align 8
  %530 = sub i64 %529, %528
  store i64 %530, i64* %21, align 8
  %531 = load i64, i64* %17, align 8
  %532 = load i64, i64* %21, align 8
  %533 = sub i64 %531, %532
  %534 = load i64*, i64** %11, align 8
  store i64 %533, i64* %534, align 8
  br label %535

535:                                              ; preds = %516, %471
  %536 = load i32, i32* %23, align 4
  store i32 %536, i32* %7, align 4
  br label %537

537:                                              ; preds = %535, %510, %405, %391, %335, %321, %295, %281, %235, %178, %139, %113, %60
  %538 = load i32, i32* %7, align 4
  ret i32 %538
}

declare dso_local i64 @Bcj2_Decode(%struct._7zip*, i8*, i64) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @x86_Convert(%struct._7zip*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
