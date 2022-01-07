; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_fileio.c_FIO_analyzeFrames.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_fileio.c_FIO_analyzeFrames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ZSTD_FRAMEHEADERSIZE_MAX = common dso_local global i32 0, align 4
@ZSTD_f_zstd1 = common dso_local global i32 0, align 4
@UTIL_FILESIZE_UNKNOWN = common dso_local global i64 0, align 8
@info_truncated_input = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Error: seeked to position %llu, which is beyond file size of %llu\0A\00", align 1
@info_not_zstd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Error: reached end of file with incomplete frame\00", align 1
@info_frame_error = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Error: did not reach end of file but ran out of frames\00", align 1
@ZSTD_MAGICNUMBER = common dso_local global i32 0, align 4
@ZSTD_CONTENTSIZE_ERROR = common dso_local global i64 0, align 8
@ZSTD_CONTENTSIZE_UNKNOWN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"Error: could not decode frame header\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Error: could not determine frame header size\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"Error: could not move to end of frame header\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Error while reading block header\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Error: unsupported block type\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Error: could not skip to end of block\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Error: could not skip past checksum\00", align 1
@ZSTD_MAGIC_SKIPPABLE_MASK = common dso_local global i32 0, align 4
@ZSTD_MAGIC_SKIPPABLE_START = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [45 x i8] c"Error: could not find end of skippable frame\00", align 1
@info_success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @FIO_analyzeFrames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FIO_analyzeFrames(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca [3 x i32], align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  br label %27

27:                                               ; preds = %233, %2
  %28 = load i32, i32* @ZSTD_FRAMEHEADERSIZE_MAX, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %6, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %7, align 8
  %32 = mul nuw i64 4, %29
  %33 = trunc i64 %32 to i32
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @fread(i32* %31, i32 1, i32 %33, i32* %34)
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i32, i32* @ZSTD_f_zstd1, align 4
  %39 = call i64 @ZSTD_FRAMEHEADERSIZE_MIN(i32 %38)
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %80

41:                                               ; preds = %27
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @feof(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %41
  %46 = load i64, i64* %8, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %45
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %48
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @UTIL_FILESIZE_UNKNOWN, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %53
  %60 = load i32*, i32** %5, align 8
  %61 = call i64 @LONG_TELL(i32* %60)
  store i64 %61, i64* %9, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp ne i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* @info_truncated_input, align 4
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i32 (i32, i32, i8*, ...) @ERROR_IF(i32 %68, i32 %69, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %70, i64 %71)
  store i32 2, i32* %11, align 4
  br label %230

73:                                               ; preds = %53, %48, %45, %41
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @feof(i32* %74)
  %76 = load i32, i32* @info_not_zstd, align 4
  %77 = call i32 (i32, i32, i8*, ...) @ERROR_IF(i32 %75, i32 %76, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @info_frame_error, align 4
  %79 = call i32 (i32, i32, i8*, ...) @ERROR_IF(i32 1, i32 %78, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %73, %27
  %81 = call i32 @MEM_readLE32(i32* %31)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @ZSTD_MAGICNUMBER, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %200

85:                                               ; preds = %80
  %86 = load i64, i64* %8, align 8
  %87 = call i64 @ZSTD_getFrameContentSize(i32* %31, i64 %86)
  store i64 %87, i64* %14, align 8
  %88 = load i64, i64* %14, align 8
  %89 = load i64, i64* @ZSTD_CONTENTSIZE_ERROR, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %85
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* @ZSTD_CONTENTSIZE_UNKNOWN, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91, %85
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  store i32 1, i32* %97, align 8
  br label %106

98:                                               ; preds = %91
  %99 = load i64, i64* %14, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %99
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 4
  br label %106

106:                                              ; preds = %98, %95
  %107 = load i64, i64* %8, align 8
  %108 = call i64 @ZSTD_getFrameHeader(%struct.TYPE_6__* %13, i32* %31, i64 %107)
  %109 = icmp ne i64 %108, 0
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* @info_frame_error, align 4
  %112 = call i32 (i32, i32, i8*, ...) @ERROR_IF(i32 %110, i32 %111, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 8
  %117 = load i64, i64* %8, align 8
  %118 = call i64 @ZSTD_frameHeaderSize(i32* %31, i64 %117)
  store i64 %118, i64* %15, align 8
  %119 = load i64, i64* %15, align 8
  %120 = call i32 @ZSTD_isError(i64 %119)
  %121 = load i32, i32* @info_frame_error, align 4
  %122 = call i32 (i32, i32, i8*, ...) @ERROR_IF(i32 %120, i32 %121, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %123 = load i32*, i32** %5, align 8
  %124 = load i64, i64* %15, align 8
  %125 = load i64, i64* %8, align 8
  %126 = sub nsw i64 %124, %125
  %127 = load i32, i32* @SEEK_CUR, align 4
  %128 = call i64 @fseek(i32* %123, i64 %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* @info_frame_error, align 4
  %132 = call i32 (i32, i32, i8*, ...) @ERROR_IF(i32 %130, i32 %131, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %133

133:                                              ; preds = %174, %106
  %134 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 @fread(i32* %134, i32 1, i32 3, i32* %135)
  %137 = icmp ne i32 %136, 3
  %138 = zext i1 %137 to i32
  %139 = load i32, i32* @info_frame_error, align 4
  %140 = call i32 (i32, i32, i8*, ...) @ERROR_IF(i32 %138, i32 %139, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %141 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %142 = call i32 @MEM_readLE24(i32* %141)
  store i32 %142, i32* %18, align 4
  %143 = load i32, i32* %18, align 4
  %144 = ashr i32 %143, 1
  %145 = and i32 %144, 3
  store i32 %145, i32* %19, align 4
  %146 = load i32, i32* %19, align 4
  %147 = icmp eq i32 %146, 1
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %20, align 4
  %149 = load i32, i32* %19, align 4
  %150 = icmp eq i32 %149, 3
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %21, align 4
  %152 = load i32, i32* %20, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %133
  br label %159

155:                                              ; preds = %133
  %156 = load i32, i32* %18, align 4
  %157 = ashr i32 %156, 3
  %158 = sext i32 %157 to i64
  br label %159

159:                                              ; preds = %155, %154
  %160 = phi i64 [ 1, %154 ], [ %158, %155 ]
  store i64 %160, i64* %22, align 8
  %161 = load i32, i32* %21, align 4
  %162 = load i32, i32* @info_frame_error, align 4
  %163 = call i32 (i32, i32, i8*, ...) @ERROR_IF(i32 %161, i32 %162, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %164 = load i32, i32* %18, align 4
  %165 = and i32 %164, 1
  store i32 %165, i32* %16, align 4
  %166 = load i32*, i32** %5, align 8
  %167 = load i64, i64* %22, align 8
  %168 = load i32, i32* @SEEK_CUR, align 4
  %169 = call i64 @fseek(i32* %166, i64 %167, i32 %168)
  %170 = icmp ne i64 %169, 0
  %171 = zext i1 %170 to i32
  %172 = load i32, i32* @info_frame_error, align 4
  %173 = call i32 (i32, i32, i8*, ...) @ERROR_IF(i32 %171, i32 %172, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  br label %174

174:                                              ; preds = %159
  %175 = load i32, i32* %16, align 4
  %176 = icmp ne i32 %175, 1
  br i1 %176, label %133, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds i32, i32* %31, i64 4
  %179 = load i32, i32* %178, align 16
  store i32 %179, i32* %23, align 4
  %180 = load i32, i32* %23, align 4
  %181 = and i32 %180, 4
  %182 = ashr i32 %181, 2
  store i32 %182, i32* %24, align 4
  %183 = load i32, i32* %24, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %177
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 2
  store i32 1, i32* %187, align 4
  %188 = load i32*, i32** %5, align 8
  %189 = load i32, i32* @SEEK_CUR, align 4
  %190 = call i64 @fseek(i32* %188, i64 4, i32 %189)
  %191 = icmp ne i64 %190, 0
  %192 = zext i1 %191 to i32
  %193 = load i32, i32* @info_frame_error, align 4
  %194 = call i32 (i32, i32, i8*, ...) @ERROR_IF(i32 %192, i32 %193, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %195

195:                                              ; preds = %185, %177
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 4
  br label %229

200:                                              ; preds = %80
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* @ZSTD_MAGIC_SKIPPABLE_MASK, align 4
  %203 = and i32 %201, %202
  %204 = load i32, i32* @ZSTD_MAGIC_SKIPPABLE_START, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %226

206:                                              ; preds = %200
  %207 = getelementptr inbounds i32, i32* %31, i64 4
  %208 = call i32 @MEM_readLE32(i32* %207)
  store i32 %208, i32* %25, align 4
  %209 = load i32, i32* %25, align 4
  %210 = add nsw i32 8, %209
  %211 = sext i32 %210 to i64
  %212 = load i64, i64* %8, align 8
  %213 = sub i64 %211, %212
  store i64 %213, i64* %26, align 8
  %214 = load i32*, i32** %5, align 8
  %215 = load i64, i64* %26, align 8
  %216 = load i32, i32* @SEEK_CUR, align 4
  %217 = call i64 @LONG_SEEK(i32* %214, i64 %215, i32 %216)
  %218 = icmp ne i64 %217, 0
  %219 = zext i1 %218 to i32
  %220 = load i32, i32* @info_frame_error, align 4
  %221 = call i32 (i32, i32, i8*, ...) @ERROR_IF(i32 %219, i32 %220, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %223, align 8
  br label %228

226:                                              ; preds = %200
  %227 = load i32, i32* @info_not_zstd, align 4
  store i32 %227, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %230

228:                                              ; preds = %206
  br label %229

229:                                              ; preds = %228, %195
  store i32 0, i32* %11, align 4
  br label %230

230:                                              ; preds = %229, %226, %59
  %231 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %231)
  %232 = load i32, i32* %11, align 4
  switch i32 %232, label %238 [
    i32 0, label %233
    i32 2, label %234
    i32 1, label %236
  ]

233:                                              ; preds = %230
  br label %27

234:                                              ; preds = %230
  %235 = load i32, i32* @info_success, align 4
  store i32 %235, i32* %3, align 4
  br label %236

236:                                              ; preds = %234, %230
  %237 = load i32, i32* %3, align 4
  ret i32 %237

238:                                              ; preds = %230
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fread(i32*, i32, i32, i32*) #2

declare dso_local i64 @ZSTD_FRAMEHEADERSIZE_MIN(i32) #2

declare dso_local i32 @feof(i32*) #2

declare dso_local i64 @LONG_TELL(i32*) #2

declare dso_local i32 @ERROR_IF(i32, i32, i8*, ...) #2

declare dso_local i32 @MEM_readLE32(i32*) #2

declare dso_local i64 @ZSTD_getFrameContentSize(i32*, i64) #2

declare dso_local i64 @ZSTD_getFrameHeader(%struct.TYPE_6__*, i32*, i64) #2

declare dso_local i64 @ZSTD_frameHeaderSize(i32*, i64) #2

declare dso_local i32 @ZSTD_isError(i64) #2

declare dso_local i64 @fseek(i32*, i64, i32) #2

declare dso_local i32 @MEM_readLE24(i32*) #2

declare dso_local i64 @LONG_SEEK(i32*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
