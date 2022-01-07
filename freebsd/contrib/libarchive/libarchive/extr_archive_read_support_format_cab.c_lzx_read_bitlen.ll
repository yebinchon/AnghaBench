; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_lzx_read_bitlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_lzx_read_bitlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzx_stream = type { %struct.lzx_dec* }
%struct.lzx_dec = type { i32, %struct.TYPE_2__, %struct.lzx_br }
%struct.TYPE_2__ = type { i32, i32* }
%struct.lzx_br = type { i32 }
%struct.huffman = type { i32*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lzx_stream*, %struct.huffman*, i32)* @lzx_read_bitlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzx_read_bitlen(%struct.lzx_stream* %0, %struct.huffman* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lzx_stream*, align 8
  %6 = alloca %struct.huffman*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lzx_dec*, align 8
  %9 = alloca %struct.lzx_br*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.lzx_stream* %0, %struct.lzx_stream** %5, align 8
  store %struct.huffman* %1, %struct.huffman** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.lzx_stream*, %struct.lzx_stream** %5, align 8
  %17 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %16, i32 0, i32 0
  %18 = load %struct.lzx_dec*, %struct.lzx_dec** %17, align 8
  store %struct.lzx_dec* %18, %struct.lzx_dec** %8, align 8
  %19 = load %struct.lzx_dec*, %struct.lzx_dec** %8, align 8
  %20 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %19, i32 0, i32 2
  store %struct.lzx_br* %20, %struct.lzx_br** %9, align 8
  %21 = load %struct.lzx_dec*, %struct.lzx_dec** %8, align 8
  %22 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.huffman*, %struct.huffman** %6, align 8
  %28 = getelementptr inbounds %struct.huffman, %struct.huffman* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @memset(i32* %29, i32 0, i32 8)
  br label %31

31:                                               ; preds = %26, %3
  store i32 0, i32* %13, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.huffman*, %struct.huffman** %6, align 8
  %36 = getelementptr inbounds %struct.huffman, %struct.huffman* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %34, %31
  br label %39

39:                                               ; preds = %317, %38
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %318

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.lzx_dec*, %struct.lzx_dec** %8, align 8
  %46 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.lzx_stream*, %struct.lzx_stream** %5, align 8
  %48 = load %struct.lzx_br*, %struct.lzx_br** %9, align 8
  %49 = load %struct.lzx_dec*, %struct.lzx_dec** %8, align 8
  %50 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @lzx_br_read_ahead(%struct.lzx_stream* %47, %struct.lzx_br* %48, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %43
  br label %319

56:                                               ; preds = %43
  %57 = load %struct.lzx_br*, %struct.lzx_br** %9, align 8
  %58 = load %struct.lzx_dec*, %struct.lzx_dec** %8, align 8
  %59 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @lzx_br_bits(%struct.lzx_br* %57, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load %struct.lzx_dec*, %struct.lzx_dec** %8, align 8
  %64 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %63, i32 0, i32 1
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @lzx_decode_huffman(%struct.TYPE_2__* %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  switch i32 %67, label %275 [
    i32 17, label %68
    i32 18, label %122
    i32 19, label %171
  ]

68:                                               ; preds = %56
  %69 = load %struct.lzx_stream*, %struct.lzx_stream** %5, align 8
  %70 = load %struct.lzx_br*, %struct.lzx_br** %9, align 8
  %71 = load %struct.lzx_dec*, %struct.lzx_dec** %8, align 8
  %72 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 4
  %80 = call i32 @lzx_br_read_ahead(%struct.lzx_stream* %69, %struct.lzx_br* %70, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %68
  br label %319

83:                                               ; preds = %68
  %84 = load %struct.lzx_br*, %struct.lzx_br** %9, align 8
  %85 = load %struct.lzx_dec*, %struct.lzx_dec** %8, align 8
  %86 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @lzx_br_consume(%struct.lzx_br* %84, i32 %92)
  %94 = load %struct.lzx_br*, %struct.lzx_br** %9, align 8
  %95 = call i32 @lzx_br_bits(%struct.lzx_br* %94, i32 4)
  %96 = add nsw i32 %95, 4
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32, i32* %7, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %83
  store i32 -1, i32* %4, align 4
  br label %324

103:                                              ; preds = %83
  %104 = load %struct.lzx_br*, %struct.lzx_br** %9, align 8
  %105 = call i32 @lzx_br_consume(%struct.lzx_br* %104, i32 4)
  store i32 0, i32* %12, align 4
  br label %106

106:                                              ; preds = %118, %103
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %106
  %111 = load %struct.huffman*, %struct.huffman** %6, align 8
  %112 = getelementptr inbounds %struct.huffman, %struct.huffman* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  store i32 0, i32* %117, align 4
  br label %118

118:                                              ; preds = %110
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %12, align 4
  br label %106

121:                                              ; preds = %106
  br label %317

122:                                              ; preds = %56
  %123 = load %struct.lzx_stream*, %struct.lzx_stream** %5, align 8
  %124 = load %struct.lzx_br*, %struct.lzx_br** %9, align 8
  %125 = load %struct.lzx_dec*, %struct.lzx_dec** %8, align 8
  %126 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 5
  %134 = call i32 @lzx_br_read_ahead(%struct.lzx_stream* %123, %struct.lzx_br* %124, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %122
  br label %319

137:                                              ; preds = %122
  %138 = load %struct.lzx_br*, %struct.lzx_br** %9, align 8
  %139 = load %struct.lzx_dec*, %struct.lzx_dec** %8, align 8
  %140 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @lzx_br_consume(%struct.lzx_br* %138, i32 %146)
  %148 = load %struct.lzx_br*, %struct.lzx_br** %9, align 8
  %149 = call i32 @lzx_br_bits(%struct.lzx_br* %148, i32 5)
  %150 = add nsw i32 %149, 20
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %151, %152
  %154 = load i32, i32* %7, align 4
  %155 = icmp sgt i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %137
  store i32 -1, i32* %4, align 4
  br label %324

157:                                              ; preds = %137
  %158 = load %struct.lzx_br*, %struct.lzx_br** %9, align 8
  %159 = call i32 @lzx_br_consume(%struct.lzx_br* %158, i32 5)
  %160 = load %struct.huffman*, %struct.huffman** %6, align 8
  %161 = getelementptr inbounds %struct.huffman, %struct.huffman* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %14, align 4
  %167 = call i32 @memset(i32* %165, i32 0, i32 %166)
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %11, align 4
  br label %317

171:                                              ; preds = %56
  %172 = load %struct.lzx_stream*, %struct.lzx_stream** %5, align 8
  %173 = load %struct.lzx_br*, %struct.lzx_br** %9, align 8
  %174 = load %struct.lzx_dec*, %struct.lzx_dec** %8, align 8
  %175 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  %183 = load %struct.lzx_dec*, %struct.lzx_dec** %8, align 8
  %184 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %182, %186
  %188 = call i32 @lzx_br_read_ahead(%struct.lzx_stream* %172, %struct.lzx_br* %173, i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %171
  br label %319

191:                                              ; preds = %171
  %192 = load %struct.lzx_br*, %struct.lzx_br** %9, align 8
  %193 = load %struct.lzx_dec*, %struct.lzx_dec** %8, align 8
  %194 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @lzx_br_consume(%struct.lzx_br* %192, i32 %200)
  %202 = load %struct.lzx_br*, %struct.lzx_br** %9, align 8
  %203 = call i32 @lzx_br_bits(%struct.lzx_br* %202, i32 1)
  %204 = add nsw i32 %203, 4
  store i32 %204, i32* %14, align 4
  %205 = load i32, i32* %11, align 4
  %206 = load i32, i32* %14, align 4
  %207 = add nsw i32 %205, %206
  %208 = load i32, i32* %7, align 4
  %209 = icmp sgt i32 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %191
  store i32 -1, i32* %4, align 4
  br label %324

211:                                              ; preds = %191
  %212 = load %struct.lzx_br*, %struct.lzx_br** %9, align 8
  %213 = call i32 @lzx_br_consume(%struct.lzx_br* %212, i32 1)
  %214 = load %struct.lzx_br*, %struct.lzx_br** %9, align 8
  %215 = load %struct.lzx_dec*, %struct.lzx_dec** %8, align 8
  %216 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @lzx_br_bits(%struct.lzx_br* %214, i32 %218)
  store i32 %219, i32* %15, align 4
  %220 = load %struct.lzx_dec*, %struct.lzx_dec** %8, align 8
  %221 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %220, i32 0, i32 1
  %222 = load i32, i32* %15, align 4
  %223 = call i32 @lzx_decode_huffman(%struct.TYPE_2__* %221, i32 %222)
  store i32 %223, i32* %10, align 4
  %224 = load %struct.lzx_br*, %struct.lzx_br** %9, align 8
  %225 = load %struct.lzx_dec*, %struct.lzx_dec** %8, align 8
  %226 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %10, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @lzx_br_consume(%struct.lzx_br* %224, i32 %232)
  %234 = load %struct.huffman*, %struct.huffman** %6, align 8
  %235 = getelementptr inbounds %struct.huffman, %struct.huffman* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %11, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %10, align 4
  %242 = sub nsw i32 %240, %241
  %243 = add nsw i32 %242, 17
  %244 = srem i32 %243, 17
  store i32 %244, i32* %10, align 4
  %245 = load i32, i32* %10, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %211
  store i32 -1, i32* %4, align 4
  br label %324

248:                                              ; preds = %211
  store i32 0, i32* %12, align 4
  br label %249

249:                                              ; preds = %262, %248
  %250 = load i32, i32* %12, align 4
  %251 = load i32, i32* %14, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %265

253:                                              ; preds = %249
  %254 = load i32, i32* %10, align 4
  %255 = load %struct.huffman*, %struct.huffman** %6, align 8
  %256 = getelementptr inbounds %struct.huffman, %struct.huffman* %255, i32 0, i32 2
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %11, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %11, align 4
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i32, i32* %257, i64 %260
  store i32 %254, i32* %261, align 4
  br label %262

262:                                              ; preds = %253
  %263 = load i32, i32* %12, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %12, align 4
  br label %249

265:                                              ; preds = %249
  %266 = load i32, i32* %14, align 4
  %267 = load %struct.huffman*, %struct.huffman** %6, align 8
  %268 = getelementptr inbounds %struct.huffman, %struct.huffman* %267, i32 0, i32 0
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %10, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %273, %266
  store i32 %274, i32* %272, align 4
  br label %317

275:                                              ; preds = %56
  %276 = load %struct.lzx_br*, %struct.lzx_br** %9, align 8
  %277 = load %struct.lzx_dec*, %struct.lzx_dec** %8, align 8
  %278 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 1
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %10, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @lzx_br_consume(%struct.lzx_br* %276, i32 %284)
  %286 = load %struct.huffman*, %struct.huffman** %6, align 8
  %287 = getelementptr inbounds %struct.huffman, %struct.huffman* %286, i32 0, i32 2
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* %11, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* %10, align 4
  %294 = sub nsw i32 %292, %293
  %295 = add nsw i32 %294, 17
  %296 = srem i32 %295, 17
  store i32 %296, i32* %10, align 4
  %297 = load i32, i32* %10, align 4
  %298 = icmp slt i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %275
  store i32 -1, i32* %4, align 4
  br label %324

300:                                              ; preds = %275
  %301 = load %struct.huffman*, %struct.huffman** %6, align 8
  %302 = getelementptr inbounds %struct.huffman, %struct.huffman* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %10, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %306, align 4
  %309 = load i32, i32* %10, align 4
  %310 = load %struct.huffman*, %struct.huffman** %6, align 8
  %311 = getelementptr inbounds %struct.huffman, %struct.huffman* %310, i32 0, i32 2
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %11, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %11, align 4
  %315 = sext i32 %313 to i64
  %316 = getelementptr inbounds i32, i32* %312, i64 %315
  store i32 %309, i32* %316, align 4
  br label %317

317:                                              ; preds = %300, %265, %157, %121
  br label %39

318:                                              ; preds = %39
  store i32 1, i32* %13, align 4
  br label %319

319:                                              ; preds = %318, %190, %136, %82, %55
  %320 = load i32, i32* %11, align 4
  %321 = load %struct.lzx_dec*, %struct.lzx_dec** %8, align 8
  %322 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %321, i32 0, i32 0
  store i32 %320, i32* %322, align 8
  %323 = load i32, i32* %13, align 4
  store i32 %323, i32* %4, align 4
  br label %324

324:                                              ; preds = %319, %299, %247, %210, %156, %102
  %325 = load i32, i32* %4, align 4
  ret i32 %325
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @lzx_br_read_ahead(%struct.lzx_stream*, %struct.lzx_br*, i32) #1

declare dso_local i32 @lzx_br_bits(%struct.lzx_br*, i32) #1

declare dso_local i32 @lzx_decode_huffman(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @lzx_br_consume(%struct.lzx_br*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
