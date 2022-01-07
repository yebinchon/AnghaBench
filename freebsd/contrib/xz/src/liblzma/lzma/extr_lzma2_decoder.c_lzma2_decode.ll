; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/lzma/extr_lzma2_decoder.c_lzma2_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/lzma/extr_lzma2_decoder.c_lzma2_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 (i32, i32*, i32*, i64*, i64)*, i32 (i32, i32*)*, i32 (i32, i32)* }

@LZMA_STREAM_END = common dso_local global i32 0, align 4
@LZMA_DATA_ERROR = common dso_local global i32 0, align 4
@LZMA_OK = common dso_local global i32 0, align 4
@LZMA_PROG_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i64*, i64)* @lzma2_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzma2_decode(i8* %0, i32* noalias %1, i32* noalias %2, i64* noalias %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %12, align 8
  br label %19

19:                                               ; preds = %302, %5
  %20 = load i64*, i64** %10, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 131
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ true, %19 ], [ %28, %24 ]
  br i1 %30, label %31, label %303

31:                                               ; preds = %29
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %299 [
    i32 133, label %35
    i32 129, label %134
    i32 128, label %148
    i32 135, label %174
    i32 134, label %186
    i32 130, label %203
    i32 131, label %230
    i32 132, label %281
  ]

35:                                               ; preds = %31
  %36 = load i32*, i32** %9, align 8
  %37 = load i64*, i64** %10, align 8
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %13, align 4
  %41 = load i64*, i64** %10, align 8
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %41, align 8
  %44 = load i32, i32* %13, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* @LZMA_STREAM_END, align 4
  store i32 %47, i32* %6, align 4
  br label %305

48:                                               ; preds = %35
  %49 = load i32, i32* %13, align 4
  %50 = icmp sge i32 %49, 224
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %13, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %59

54:                                               ; preds = %51, %48
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  store i32 1, i32* %58, align 8
  br label %67

59:                                               ; preds = %51
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %65, i32* %6, align 4
  br label %305

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %54
  %68 = load i32, i32* %13, align 4
  %69 = icmp sge i32 %68, 128
  br i1 %69, label %70, label %112

70:                                               ; preds = %67
  %71 = load i32, i32* %13, align 4
  %72 = and i32 %71, 31
  %73 = shl i32 %72, 16
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 129, i32* %77, align 8
  %78 = load i32, i32* %13, align 4
  %79 = icmp sge i32 %78, 192
  br i1 %79, label %80, label %85

80:                                               ; preds = %70
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  store i32 0, i32* %82, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  store i32 130, i32* %84, align 8
  br label %111

85:                                               ; preds = %70
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %91, i32* %6, align 4
  br label %305

92:                                               ; preds = %85
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 4
  store i32 131, i32* %94, align 8
  %95 = load i32, i32* %13, align 4
  %96 = icmp sge i32 %95, 160
  br i1 %96, label %97, label %109

97:                                               ; preds = %92
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i32 (i32, i32*)*, i32 (i32, i32*)** %100, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 7
  %108 = call i32 %101(i32 %105, i32* %107)
  br label %109

109:                                              ; preds = %97, %92
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110, %80
  br label %122

112:                                              ; preds = %67
  %113 = load i32, i32* %13, align 4
  %114 = icmp sgt i32 %113, 2
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %116, i32* %6, align 4
  br label %305

117:                                              ; preds = %112
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i32 135, i32* %119, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 4
  store i32 132, i32* %121, align 8
  br label %122

122:                                              ; preds = %117, %111
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  store i32 0, i32* %129, align 8
  %130 = load i32*, i32** %8, align 8
  %131 = call i32 @dict_reset(i32* %130)
  %132 = load i32, i32* @LZMA_OK, align 4
  store i32 %132, i32* %6, align 4
  br label %305

133:                                              ; preds = %122
  br label %302

134:                                              ; preds = %31
  %135 = load i32*, i32** %9, align 8
  %136 = load i64*, i64** %10, align 8
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %136, align 8
  %139 = getelementptr inbounds i32, i32* %135, i64 %137
  %140 = load i32, i32* %139, align 4
  %141 = shl i32 %140, 8
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, %141
  store i32 %145, i32* %143, align 4
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  store i32 128, i32* %147, align 8
  br label %302

148:                                              ; preds = %31
  %149 = load i32*, i32** %9, align 8
  %150 = load i64*, i64** %10, align 8
  %151 = load i64, i64* %150, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %150, align 8
  %153 = getelementptr inbounds i32, i32* %149, i64 %151
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, %155
  store i32 %159, i32* %157, align 4
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  store i32 135, i32* %161, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 6
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 3
  %165 = load i32 (i32, i32)*, i32 (i32, i32)** %164, align 8
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 6
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = call i32 %165(i32 %169, i32 %172)
  br label %302

174:                                              ; preds = %31
  %175 = load i32*, i32** %9, align 8
  %176 = load i64*, i64** %10, align 8
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %176, align 8
  %179 = getelementptr inbounds i32, i32* %175, i64 %177
  %180 = load i32, i32* %179, align 4
  %181 = shl i32 %180, 8
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 5
  store i32 %181, i32* %183, align 4
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  store i32 134, i32* %185, align 8
  br label %302

186:                                              ; preds = %31
  %187 = load i32*, i32** %9, align 8
  %188 = load i64*, i64** %10, align 8
  %189 = load i64, i64* %188, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %188, align 8
  %191 = getelementptr inbounds i32, i32* %187, i64 %189
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, %193
  store i32 %197, i32* %195, align 4
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  br label %302

203:                                              ; preds = %31
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 7
  %206 = load i32*, i32** %9, align 8
  %207 = load i64*, i64** %10, align 8
  %208 = load i64, i64* %207, align 8
  %209 = add i64 %208, 1
  store i64 %209, i64* %207, align 8
  %210 = getelementptr inbounds i32, i32* %206, i64 %208
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @lzma_lzma_lclppb_decode(i32* %205, i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %203
  %215 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %215, i32* %6, align 4
  br label %305

216:                                              ; preds = %203
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 6
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 2
  %220 = load i32 (i32, i32*)*, i32 (i32, i32*)** %219, align 8
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 6
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 7
  %227 = call i32 %220(i32 %224, i32* %226)
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  store i32 131, i32* %229, align 8
  br label %302

230:                                              ; preds = %31
  %231 = load i64*, i64** %10, align 8
  %232 = load i64, i64* %231, align 8
  store i64 %232, i64* %14, align 8
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 6
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 1
  %236 = load i32 (i32, i32*, i32*, i64*, i64)*, i32 (i32, i32*, i32*, i64*, i64)** %235, align 8
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 6
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32*, i32** %8, align 8
  %242 = load i32*, i32** %9, align 8
  %243 = load i64*, i64** %10, align 8
  %244 = load i64, i64* %11, align 8
  %245 = call i32 %236(i32 %240, i32* %241, i32* %242, i64* %243, i64 %244)
  store i32 %245, i32* %15, align 4
  %246 = load i64*, i64** %10, align 8
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* %14, align 8
  %249 = sub i64 %247, %248
  store i64 %249, i64* %16, align 8
  %250 = load i64, i64* %16, align 8
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 5
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = icmp ugt i64 %250, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %230
  %257 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %257, i32* %6, align 4
  br label %305

258:                                              ; preds = %230
  %259 = load i64, i64* %16, align 8
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  %264 = sub i64 %263, %259
  %265 = trunc i64 %264 to i32
  store i32 %265, i32* %261, align 4
  %266 = load i32, i32* %15, align 4
  %267 = load i32, i32* @LZMA_STREAM_END, align 4
  %268 = icmp ne i32 %266, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %258
  %270 = load i32, i32* %15, align 4
  store i32 %270, i32* %6, align 4
  br label %305

271:                                              ; preds = %258
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %271
  %277 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %277, i32* %6, align 4
  br label %305

278:                                              ; preds = %271
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 0
  store i32 133, i32* %280, align 8
  br label %302

281:                                              ; preds = %31
  %282 = load i32*, i32** %8, align 8
  %283 = load i32*, i32** %9, align 8
  %284 = load i64*, i64** %10, align 8
  %285 = load i64, i64* %11, align 8
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 5
  %288 = bitcast i32* %287 to i64*
  %289 = call i32 @dict_write(i32* %282, i32* %283, i64* %284, i64 %285, i64* %288)
  %290 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %281
  %295 = load i32, i32* @LZMA_OK, align 4
  store i32 %295, i32* %6, align 4
  br label %305

296:                                              ; preds = %281
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 0
  store i32 133, i32* %298, align 8
  br label %302

299:                                              ; preds = %31
  %300 = call i32 @assert(i32 0)
  %301 = load i32, i32* @LZMA_PROG_ERROR, align 4
  store i32 %301, i32* %6, align 4
  br label %305

302:                                              ; preds = %296, %278, %216, %186, %174, %148, %134, %133
  br label %19

303:                                              ; preds = %29
  %304 = load i32, i32* @LZMA_OK, align 4
  store i32 %304, i32* %6, align 4
  br label %305

305:                                              ; preds = %303, %299, %294, %276, %269, %256, %214, %127, %115, %90, %64, %46
  %306 = load i32, i32* %6, align 4
  ret i32 %306
}

declare dso_local i32 @dict_reset(i32*) #1

declare dso_local i32 @lzma_lzma_lclppb_decode(i32*, i32) #1

declare dso_local i32 @dict_write(i32*, i32*, i64*, i64, i64*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
