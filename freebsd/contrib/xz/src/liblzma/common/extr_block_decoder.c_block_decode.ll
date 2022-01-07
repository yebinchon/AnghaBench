; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_block_decoder.c_block_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_block_decoder.c_block_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i64, %struct.TYPE_11__, %struct.TYPE_8__*, i32, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)* }

@LZMA_DATA_ERROR = common dso_local global i32 0, align 4
@LZMA_STREAM_END = common dso_local global i32 0, align 4
@LZMA_OK = common dso_local global i32 0, align 4
@LZMA_CHECK_NONE = common dso_local global i32 0, align 4
@LZMA_PROG_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)* @block_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_decode(i8* %0, i32* %1, i32* noalias %2, i64* noalias %3, i64 %4, i32* noalias %5, i64* noalias %6, i64 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store i8* %0, i8** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i64* %3, i64** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32* %5, i32** %16, align 8
  store i64* %6, i64** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %20, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %261 [
    i32 129, label %32
    i32 128, label %148
    i32 130, label %204
  ]

32:                                               ; preds = %9
  %33 = load i64*, i64** %14, align 8
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %21, align 8
  %35 = load i64*, i64** %17, align 8
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %22, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)*, i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)** %39, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = load i64*, i64** %14, align 8
  %48 = load i64, i64* %15, align 8
  %49 = load i32*, i32** %16, align 8
  %50 = load i64*, i64** %17, align 8
  %51 = load i64, i64* %18, align 8
  %52 = load i32, i32* %19, align 4
  %53 = call i32 %40(i32 %44, i32* %45, i32* %46, i64* %47, i64 %48, i32* %49, i64* %50, i64 %51, i32 %52)
  store i32 %53, i32* %23, align 4
  %54 = load i64*, i64** %14, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %21, align 8
  %57 = sub i64 %55, %56
  store i64 %57, i64* %24, align 8
  %58 = load i64*, i64** %17, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %22, align 8
  %61 = sub i64 %59, %60
  store i64 %61, i64* %25, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i64, i64* %24, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @update_size(i32* %63, i64 %64, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %32
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  %73 = load i64, i64* %25, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 6
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @update_size(i32* %72, i64 %73, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %70, %32
  %82 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %82, i32* %10, align 4
  br label %263

83:                                               ; preds = %70
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %101, label %88

88:                                               ; preds = %83
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 5
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 6
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %16, align 8
  %97 = load i64, i64* %22, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i64, i64* %25, align 8
  %100 = call i32 @lzma_check_update(%struct.TYPE_11__* %90, i32 %95, i32* %98, i64 %99)
  br label %101

101:                                              ; preds = %88, %83
  %102 = load i32, i32* %23, align 4
  %103 = load i32, i32* @LZMA_STREAM_END, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* %23, align 4
  store i32 %106, i32* %10, align 4
  br label %263

107:                                              ; preds = %101
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 6
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @is_size_valid(i32 %110, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %107
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 6
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @is_size_valid(i32 %121, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %118, %107
  %130 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %130, i32* %10, align 4
  br label %263

131:                                              ; preds = %118
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 6
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  store i32 %134, i32* %138, align 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 6
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  store i32 %141, i32* %145, align 4
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  store i32 128, i32* %147, align 8
  br label %148

148:                                              ; preds = %9, %131
  br label %149

149:                                              ; preds = %176, %148
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 3
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %177

155:                                              ; preds = %149
  %156 = load i64*, i64** %14, align 8
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %15, align 8
  %159 = icmp uge i64 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = load i32, i32* @LZMA_OK, align 4
  store i32 %161, i32* %10, align 4
  br label %263

162:                                              ; preds = %155
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 4
  %167 = load i32*, i32** %13, align 8
  %168 = load i64*, i64** %14, align 8
  %169 = load i64, i64* %168, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %168, align 8
  %171 = getelementptr inbounds i32, i32* %167, i64 %169
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %162
  %175 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %175, i32* %10, align 4
  br label %263

176:                                              ; preds = %162
  br label %149

177:                                              ; preds = %149
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 6
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @LZMA_CHECK_NONE, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %177
  %186 = load i32, i32* @LZMA_STREAM_END, align 4
  store i32 %186, i32* %10, align 4
  br label %263

187:                                              ; preds = %177
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %201, label %192

192:                                              ; preds = %187
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 5
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 6
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @lzma_check_finish(%struct.TYPE_11__* %194, i32 %199)
  br label %201

201:                                              ; preds = %192, %187
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  store i32 130, i32* %203, align 8
  br label %204

204:                                              ; preds = %9, %201
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 6
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = call i64 @lzma_check_size(i32 %209)
  store i64 %210, i64* %26, align 8
  %211 = load i32*, i32** %13, align 8
  %212 = load i64*, i64** %14, align 8
  %213 = load i64, i64* %15, align 8
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 6
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 4
  %221 = load i64, i64* %26, align 8
  %222 = call i32 @lzma_bufcpy(i32* %211, i64* %212, i64 %213, i32 %218, i64* %220, i64 %221)
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 4
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* %26, align 8
  %227 = icmp ult i64 %225, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %204
  %229 = load i32, i32* @LZMA_OK, align 4
  store i32 %229, i32* %10, align 4
  br label %263

230:                                              ; preds = %204
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %259, label %235

235:                                              ; preds = %230
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 6
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @lzma_check_is_supported(i32 %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %259

243:                                              ; preds = %235
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 6
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 5
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i64, i64* %26, align 8
  %255 = call i32 @memcmp(i32 %248, i32 %253, i64 %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %243
  %258 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %258, i32* %10, align 4
  br label %263

259:                                              ; preds = %243, %235, %230
  %260 = load i32, i32* @LZMA_STREAM_END, align 4
  store i32 %260, i32* %10, align 4
  br label %263

261:                                              ; preds = %9
  %262 = load i32, i32* @LZMA_PROG_ERROR, align 4
  store i32 %262, i32* %10, align 4
  br label %263

263:                                              ; preds = %261, %259, %257, %228, %185, %174, %160, %129, %105, %81
  %264 = load i32, i32* %10, align 4
  ret i32 %264
}

declare dso_local i32 @update_size(i32*, i64, i32) #1

declare dso_local i32 @lzma_check_update(%struct.TYPE_11__*, i32, i32*, i64) #1

declare dso_local i32 @is_size_valid(i32, i32) #1

declare dso_local i32 @lzma_check_finish(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @lzma_check_size(i32) #1

declare dso_local i32 @lzma_bufcpy(i32*, i64*, i64, i32, i64*, i64) #1

declare dso_local i32 @lzma_check_is_supported(i32) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
