; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_list.c_parse_indexes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_list.c_parse_indexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32*, i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { i64*, i32 }
%struct.TYPE_23__ = type { i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"%s: File is empty\00", align 1
@LZMA_STREAM_HEADER_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: Too small to be a valid .xz file\00", align 1
@LZMA_STREAM_INIT = common dso_local global %struct.TYPE_24__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@LZMA_DATA_ERROR = common dso_local global i32 0, align 4
@LZMA_OK = common dso_local global i32 0, align 4
@LZMA_OPTIONS_ERROR = common dso_local global i32 0, align 4
@MODE_LIST = common dso_local global i32 0, align 4
@IO_BUFFER_SIZE = common dso_local global i32 0, align 4
@LZMA_RUN = common dso_local global i32 0, align 4
@LZMA_STREAM_END = common dso_local global i32 0, align 4
@LZMA_BUF_ERROR = common dso_local global i32 0, align 4
@LZMA_MEMLIMIT_ERROR = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@V_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_26__*)* @parse_indexes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_indexes(%struct.TYPE_22__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_25__, align 8
  %7 = alloca %struct.TYPE_23__, align 8
  %8 = alloca %struct.TYPE_23__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_24__, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, i32, ...) @message_error(i8* %28, i32 %31)
  store i32 1, i32* %3, align 4
  br label %400

33:                                               ; preds = %2
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @LZMA_STREAM_HEADER_SIZE, align 4
  %39 = mul nsw i32 2, %38
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, i32, ...) @message_error(i8* %44, i32 %47)
  store i32 1, i32* %3, align 4
  br label %400

49:                                               ; preds = %33
  %50 = bitcast %struct.TYPE_24__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 bitcast (%struct.TYPE_24__* @LZMA_STREAM_INIT to i8*), i64 8, i1 false)
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %386, %49
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @LZMA_STREAM_HEADER_SIZE, align 4
  %58 = mul nsw i32 2, %57
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @LZMA_DATA_ERROR, align 4
  %65 = call i32 @message_strm(i32 %64)
  %66 = call i32 (i8*, i32, ...) @message_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %65)
  br label %394

67:                                               ; preds = %55
  %68 = load i32, i32* @LZMA_STREAM_HEADER_SIZE, align 4
  %69 = load i32, i32* %13, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %13, align 4
  store i64 0, i64* %14, align 8
  br label %71

71:                                               ; preds = %67, %119
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @LZMA_STREAM_HEADER_SIZE, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @LZMA_DATA_ERROR, align 4
  %80 = call i32 @message_strm(i32 %79)
  %81 = call i32 (i8*, i32, ...) @message_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %80)
  br label %394

82:                                               ; preds = %71
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %84 = load i32, i32* @LZMA_STREAM_HEADER_SIZE, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i64 @io_pread(%struct.TYPE_26__* %83, %struct.TYPE_25__* %6, i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %394

89:                                               ; preds = %82
  store i32 2, i32* %15, align 4
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %120

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %117, %98
  %100 = load i64, i64* %14, align 8
  %101 = add nsw i64 %100, 4
  store i64 %101, i64* %14, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sub nsw i32 %102, 4
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %15, align 4
  br label %106

106:                                              ; preds = %99
  %107 = load i32, i32* %15, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br label %117

117:                                              ; preds = %109, %106
  %118 = phi i1 [ false, %106 ], [ %116, %109 ]
  br i1 %118, label %99, label %119

119:                                              ; preds = %117
  br label %71

120:                                              ; preds = %97
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @lzma_stream_footer_decode(%struct.TYPE_23__* %8, i32 %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @LZMA_OK, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %120
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @message_strm(i32 %131)
  %133 = call i32 (i8*, i32, ...) @message_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %130, i32 %132)
  br label %394

134:                                              ; preds = %120
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @LZMA_OPTIONS_ERROR, align 4
  %143 = call i32 @message_strm(i32 %142)
  %144 = call i32 (i8*, i32, ...) @message_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %141, i32 %143)
  br label %394

145:                                              ; preds = %134
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %16, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* %16, align 8
  %151 = load i32, i32* @LZMA_STREAM_HEADER_SIZE, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %150, %152
  %154 = icmp slt i64 %149, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %145
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @LZMA_DATA_ERROR, align 4
  %160 = call i32 @message_strm(i32 %159)
  %161 = call i32 (i8*, i32, ...) @message_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %158, i32 %160)
  br label %394

162:                                              ; preds = %145
  %163 = load i64, i64* %16, align 8
  %164 = load i32, i32* %13, align 4
  %165 = sext i32 %164 to i64
  %166 = sub nsw i64 %165, %163
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %13, align 4
  %168 = load i32, i32* @MODE_LIST, align 4
  %169 = call i64 @hardware_memlimit_get(i32 %168)
  store i64 %169, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %170 = load i32*, i32** %11, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %184

172:                                              ; preds = %162
  %173 = load i32*, i32** %11, align 8
  %174 = call i64 @lzma_index_memused(i32* %173)
  store i64 %174, i64* %18, align 8
  %175 = load i64, i64* %18, align 8
  %176 = load i64, i64* %17, align 8
  %177 = icmp sgt i64 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %172
  %179 = call i32 (...) @message_bug()
  br label %180

180:                                              ; preds = %178, %172
  %181 = load i64, i64* %18, align 8
  %182 = load i64, i64* %17, align 8
  %183 = sub nsw i64 %182, %181
  store i64 %183, i64* %17, align 8
  br label %184

184:                                              ; preds = %180, %162
  %185 = load i64, i64* %17, align 8
  %186 = call i32 @lzma_index_decoder(%struct.TYPE_24__* %10, i32** %12, i64 %185)
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* @LZMA_OK, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %184
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %9, align 4
  %195 = call i32 @message_strm(i32 %194)
  %196 = call i32 (i8*, i32, ...) @message_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %193, i32 %195)
  br label %394

197:                                              ; preds = %184
  br label %198

198:                                              ; preds = %225, %197
  %199 = load i32, i32* @IO_BUFFER_SIZE, align 4
  %200 = load i64, i64* %16, align 8
  %201 = call i32 @my_min(i32 %199, i64 %200)
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  store i32 %201, i32* %202, align 4
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %13, align 4
  %207 = call i64 @io_pread(%struct.TYPE_26__* %203, %struct.TYPE_25__* %6, i32 %205, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %198
  br label %394

210:                                              ; preds = %198
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %213, %212
  store i32 %214, i32* %13, align 4
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = load i64, i64* %16, align 8
  %219 = sub nsw i64 %218, %217
  store i64 %219, i64* %16, align 8
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  store i32 %221, i32* %222, align 4
  %223 = load i32, i32* @LZMA_RUN, align 4
  %224 = call i32 @lzma_code(%struct.TYPE_24__* %10, i32 %223)
  store i32 %224, i32* %9, align 4
  br label %225

225:                                              ; preds = %210
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* @LZMA_OK, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %198, label %229

229:                                              ; preds = %225
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* @LZMA_STREAM_END, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %243

233:                                              ; preds = %229
  %234 = load i64, i64* %16, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %236, %233
  %241 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %241, i32* %9, align 4
  br label %242

242:                                              ; preds = %240, %236
  br label %243

243:                                              ; preds = %242, %229
  %244 = load i32, i32* %9, align 4
  %245 = load i32, i32* @LZMA_STREAM_END, align 4
  %246 = icmp ne i32 %244, %245
  br i1 %246, label %247, label %281

247:                                              ; preds = %243
  %248 = load i32, i32* %9, align 4
  %249 = load i32, i32* @LZMA_BUF_ERROR, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %247
  %252 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %252, i32* %9, align 4
  br label %253

253:                                              ; preds = %251, %247
  %254 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %9, align 4
  %258 = call i32 @message_strm(i32 %257)
  %259 = call i32 (i8*, i32, ...) @message_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %256, i32 %258)
  %260 = load i32, i32* %9, align 4
  %261 = load i32, i32* @LZMA_MEMLIMIT_ERROR, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %280

263:                                              ; preds = %253
  %264 = call i64 @lzma_memusage(%struct.TYPE_24__* %10)
  store i64 %264, i64* %19, align 8
  %265 = load i64, i64* @UINT64_MAX, align 8
  %266 = load i64, i64* %19, align 8
  %267 = sub nsw i64 %265, %266
  %268 = load i64, i64* %18, align 8
  %269 = icmp slt i64 %267, %268
  br i1 %269, label %270, label %272

270:                                              ; preds = %263
  %271 = load i64, i64* @UINT64_MAX, align 8
  store i64 %271, i64* %19, align 8
  br label %276

272:                                              ; preds = %263
  %273 = load i64, i64* %18, align 8
  %274 = load i64, i64* %19, align 8
  %275 = add nsw i64 %274, %273
  store i64 %275, i64* %19, align 8
  br label %276

276:                                              ; preds = %272, %270
  %277 = load i32, i32* @V_ERROR, align 4
  %278 = load i64, i64* %19, align 8
  %279 = call i32 @message_mem_needed(i32 %277, i64 %278)
  br label %280

280:                                              ; preds = %276, %253
  br label %394

281:                                              ; preds = %243
  %282 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = load i32, i32* @LZMA_STREAM_HEADER_SIZE, align 4
  %285 = sext i32 %284 to i64
  %286 = add nsw i64 %283, %285
  %287 = load i32, i32* %13, align 4
  %288 = sext i32 %287 to i64
  %289 = sub nsw i64 %288, %286
  %290 = trunc i64 %289 to i32
  store i32 %290, i32* %13, align 4
  %291 = load i32, i32* %13, align 4
  %292 = sext i32 %291 to i64
  %293 = load i32*, i32** %12, align 8
  %294 = call i64 @lzma_index_total_size(i32* %293)
  %295 = icmp slt i64 %292, %294
  br i1 %295, label %296, label %303

296:                                              ; preds = %281
  %297 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @LZMA_DATA_ERROR, align 4
  %301 = call i32 @message_strm(i32 %300)
  %302 = call i32 (i8*, i32, ...) @message_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %299, i32 %301)
  br label %394

303:                                              ; preds = %281
  %304 = load i32*, i32** %12, align 8
  %305 = call i64 @lzma_index_total_size(i32* %304)
  %306 = load i32, i32* %13, align 4
  %307 = sext i32 %306 to i64
  %308 = sub nsw i64 %307, %305
  %309 = trunc i64 %308 to i32
  store i32 %309, i32* %13, align 4
  %310 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %311 = load i32, i32* @LZMA_STREAM_HEADER_SIZE, align 4
  %312 = load i32, i32* %13, align 4
  %313 = call i64 @io_pread(%struct.TYPE_26__* %310, %struct.TYPE_25__* %6, i32 %311, i32 %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %303
  br label %394

316:                                              ; preds = %303
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @lzma_stream_header_decode(%struct.TYPE_23__* %7, i32 %318)
  store i32 %319, i32* %9, align 4
  %320 = load i32, i32* %9, align 4
  %321 = load i32, i32* @LZMA_OK, align 4
  %322 = icmp ne i32 %320, %321
  br i1 %322, label %323, label %330

323:                                              ; preds = %316
  %324 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* %9, align 4
  %328 = call i32 @message_strm(i32 %327)
  %329 = call i32 (i8*, i32, ...) @message_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %326, i32 %328)
  br label %394

330:                                              ; preds = %316
  %331 = call i32 @lzma_stream_flags_compare(%struct.TYPE_23__* %7, %struct.TYPE_23__* %8)
  store i32 %331, i32* %9, align 4
  %332 = load i32, i32* %9, align 4
  %333 = load i32, i32* @LZMA_OK, align 4
  %334 = icmp ne i32 %332, %333
  br i1 %334, label %335, label %342

335:                                              ; preds = %330
  %336 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* %9, align 4
  %340 = call i32 @message_strm(i32 %339)
  %341 = call i32 (i8*, i32, ...) @message_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %338, i32 %340)
  br label %394

342:                                              ; preds = %330
  %343 = load i32*, i32** %12, align 8
  %344 = call i32 @lzma_index_stream_flags(i32* %343, %struct.TYPE_23__* %8)
  store i32 %344, i32* %9, align 4
  %345 = load i32, i32* %9, align 4
  %346 = load i32, i32* @LZMA_OK, align 4
  %347 = icmp ne i32 %345, %346
  br i1 %347, label %348, label %350

348:                                              ; preds = %342
  %349 = call i32 (...) @message_bug()
  br label %350

350:                                              ; preds = %348, %342
  %351 = load i32*, i32** %12, align 8
  %352 = load i64, i64* %14, align 8
  %353 = call i32 @lzma_index_stream_padding(i32* %351, i64 %352)
  store i32 %353, i32* %9, align 4
  %354 = load i32, i32* %9, align 4
  %355 = load i32, i32* @LZMA_OK, align 4
  %356 = icmp ne i32 %354, %355
  br i1 %356, label %357, label %359

357:                                              ; preds = %350
  %358 = call i32 (...) @message_bug()
  br label %359

359:                                              ; preds = %357, %350
  %360 = load i32*, i32** %11, align 8
  %361 = icmp ne i32* %360, null
  br i1 %361, label %362, label %377

362:                                              ; preds = %359
  %363 = load i32*, i32** %12, align 8
  %364 = load i32*, i32** %11, align 8
  %365 = call i32 @lzma_index_cat(i32* %363, i32* %364, i32* null)
  store i32 %365, i32* %9, align 4
  %366 = load i32, i32* %9, align 4
  %367 = load i32, i32* @LZMA_OK, align 4
  %368 = icmp ne i32 %366, %367
  br i1 %368, label %369, label %376

369:                                              ; preds = %362
  %370 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* %9, align 4
  %374 = call i32 @message_strm(i32 %373)
  %375 = call i32 (i8*, i32, ...) @message_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %372, i32 %374)
  br label %394

376:                                              ; preds = %362
  br label %377

377:                                              ; preds = %376, %359
  %378 = load i32*, i32** %12, align 8
  store i32* %378, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %379 = load i64, i64* %14, align 8
  %380 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 8
  %383 = sext i32 %382 to i64
  %384 = add nsw i64 %383, %379
  %385 = trunc i64 %384 to i32
  store i32 %385, i32* %381, align 8
  br label %386

386:                                              ; preds = %377
  %387 = load i32, i32* %13, align 4
  %388 = icmp sgt i32 %387, 0
  br i1 %388, label %55, label %389

389:                                              ; preds = %386
  %390 = call i32 @lzma_end(%struct.TYPE_24__* %10)
  %391 = load i32*, i32** %11, align 8
  %392 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %392, i32 0, i32 0
  store i32* %391, i32** %393, align 8
  store i32 0, i32* %3, align 4
  br label %400

394:                                              ; preds = %369, %335, %323, %315, %296, %280, %209, %190, %155, %138, %127, %88, %75, %60
  %395 = call i32 @lzma_end(%struct.TYPE_24__* %10)
  %396 = load i32*, i32** %11, align 8
  %397 = call i32 @lzma_index_end(i32* %396, i32* null)
  %398 = load i32*, i32** %12, align 8
  %399 = call i32 @lzma_index_end(i32* %398, i32* null)
  store i32 1, i32* %3, align 4
  br label %400

400:                                              ; preds = %394, %389, %41, %25
  %401 = load i32, i32* %3, align 4
  ret i32 %401
}

declare dso_local i32 @message_error(i8*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @message_strm(i32) #1

declare dso_local i64 @io_pread(%struct.TYPE_26__*, %struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @lzma_stream_footer_decode(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @hardware_memlimit_get(i32) #1

declare dso_local i64 @lzma_index_memused(i32*) #1

declare dso_local i32 @message_bug(...) #1

declare dso_local i32 @lzma_index_decoder(%struct.TYPE_24__*, i32**, i64) #1

declare dso_local i32 @my_min(i32, i64) #1

declare dso_local i32 @lzma_code(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @lzma_memusage(%struct.TYPE_24__*) #1

declare dso_local i32 @message_mem_needed(i32, i64) #1

declare dso_local i64 @lzma_index_total_size(i32*) #1

declare dso_local i32 @lzma_stream_header_decode(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @lzma_stream_flags_compare(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @lzma_index_stream_flags(i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @lzma_index_stream_padding(i32*, i64) #1

declare dso_local i32 @lzma_index_cat(i32*, i32*, i32*) #1

declare dso_local i32 @lzma_end(%struct.TYPE_24__*) #1

declare dso_local i32 @lzma_index_end(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
