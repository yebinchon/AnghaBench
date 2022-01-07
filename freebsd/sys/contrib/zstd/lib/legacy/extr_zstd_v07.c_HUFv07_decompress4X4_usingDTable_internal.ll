; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v07.c_HUFv07_decompress4X4_usingDTable_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v07.c_HUFv07_decompress4X4_usingDTable_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@corruption_detected = common dso_local global i32 0, align 4
@BITv07_DStream_unfinished = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i32*)* @HUFv07_decompress4X4_usingDTable_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HUFv07_decompress4X4_usingDTable_internal(i8* %0, i64 %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32, align 4
  %38 = alloca %struct.TYPE_3__, align 4
  %39 = alloca i32, align 4
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp ult i64 %45, 10
  br i1 %46, label %47, label %50

47:                                               ; preds = %5
  %48 = load i32, i32* @corruption_detected, align 4
  %49 = call i64 @ERROR(i32 %48)
  store i64 %49, i64* %6, align 8
  br label %268

50:                                               ; preds = %5
  %51 = load i8*, i8** %9, align 8
  %52 = bitcast i8* %51 to i32*
  store i32* %52, i32** %12, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = bitcast i8* %53 to i32*
  store i32* %54, i32** %13, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %14, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = bitcast i32* %59 to i8*
  store i8* %60, i8** %15, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = bitcast i8* %61 to i32*
  store i32* %62, i32** %16, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = call i64 @MEM_readLE16(i32* %63)
  store i64 %64, i64* %21, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = call i64 @MEM_readLE16(i32* %66)
  store i64 %67, i64* %22, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  %70 = call i64 @MEM_readLE16(i32* %69)
  store i64 %70, i64* %23, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %21, align 8
  %73 = load i64, i64* %22, align 8
  %74 = add i64 %72, %73
  %75 = load i64, i64* %23, align 8
  %76 = add i64 %74, %75
  %77 = add i64 %76, 6
  %78 = sub i64 %71, %77
  store i64 %78, i64* %24, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 6
  store i32* %80, i32** %25, align 8
  %81 = load i32*, i32** %25, align 8
  %82 = load i64, i64* %21, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %26, align 8
  %84 = load i32*, i32** %26, align 8
  %85 = load i64, i64* %22, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %27, align 8
  %87 = load i32*, i32** %27, align 8
  %88 = load i64, i64* %23, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %28, align 8
  %90 = load i64, i64* %8, align 8
  %91 = add i64 %90, 3
  %92 = udiv i64 %91, 4
  store i64 %92, i64* %29, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = load i64, i64* %29, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %30, align 8
  %96 = load i32*, i32** %30, align 8
  %97 = load i64, i64* %29, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %31, align 8
  %99 = load i32*, i32** %31, align 8
  %100 = load i64, i64* %29, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %32, align 8
  %102 = load i32*, i32** %13, align 8
  store i32* %102, i32** %33, align 8
  %103 = load i32*, i32** %30, align 8
  store i32* %103, i32** %34, align 8
  %104 = load i32*, i32** %31, align 8
  store i32* %104, i32** %35, align 8
  %105 = load i32*, i32** %32, align 8
  store i32* %105, i32** %36, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 @HUFv07_getDTableDesc(i32* %106)
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %107, i32* %108, align 4
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %39, align 4
  %111 = load i64, i64* %24, align 8
  %112 = load i64, i64* %10, align 8
  %113 = icmp ugt i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %50
  %115 = load i32, i32* @corruption_detected, align 4
  %116 = call i64 @ERROR(i32 %115)
  store i64 %116, i64* %6, align 8
  br label %268

117:                                              ; preds = %50
  %118 = load i32*, i32** %25, align 8
  %119 = load i64, i64* %21, align 8
  %120 = call i64 @BITv07_initDStream(i32* %17, i32* %118, i64 %119)
  store i64 %120, i64* %40, align 8
  %121 = load i64, i64* %40, align 8
  %122 = call i64 @HUFv07_isError(i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i64, i64* %40, align 8
  store i64 %125, i64* %6, align 8
  br label %268

126:                                              ; preds = %117
  %127 = load i32*, i32** %26, align 8
  %128 = load i64, i64* %22, align 8
  %129 = call i64 @BITv07_initDStream(i32* %18, i32* %127, i64 %128)
  store i64 %129, i64* %41, align 8
  %130 = load i64, i64* %41, align 8
  %131 = call i64 @HUFv07_isError(i64 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i64, i64* %41, align 8
  store i64 %134, i64* %6, align 8
  br label %268

135:                                              ; preds = %126
  %136 = load i32*, i32** %27, align 8
  %137 = load i64, i64* %23, align 8
  %138 = call i64 @BITv07_initDStream(i32* %19, i32* %136, i64 %137)
  store i64 %138, i64* %42, align 8
  %139 = load i64, i64* %42, align 8
  %140 = call i64 @HUFv07_isError(i64 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i64, i64* %42, align 8
  store i64 %143, i64* %6, align 8
  br label %268

144:                                              ; preds = %135
  %145 = load i32*, i32** %28, align 8
  %146 = load i64, i64* %24, align 8
  %147 = call i64 @BITv07_initDStream(i32* %20, i32* %145, i64 %146)
  store i64 %147, i64* %43, align 8
  %148 = load i64, i64* %43, align 8
  %149 = call i64 @HUFv07_isError(i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = load i64, i64* %43, align 8
  store i64 %152, i64* %6, align 8
  br label %268

153:                                              ; preds = %144
  %154 = call i32 @BITv07_reloadDStream(i32* %17)
  %155 = call i32 @BITv07_reloadDStream(i32* %18)
  %156 = or i32 %154, %155
  %157 = call i32 @BITv07_reloadDStream(i32* %19)
  %158 = or i32 %156, %157
  %159 = call i32 @BITv07_reloadDStream(i32* %20)
  %160 = or i32 %158, %159
  store i32 %160, i32* %37, align 4
  br label %161

161:                                              ; preds = %172, %153
  %162 = load i32, i32* %37, align 4
  %163 = load i32, i32* @BITv07_DStream_unfinished, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %161
  %166 = load i32*, i32** %36, align 8
  %167 = load i32*, i32** %14, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 -7
  %169 = icmp ult i32* %166, %168
  br label %170

170:                                              ; preds = %165, %161
  %171 = phi i1 [ false, %161 ], [ %169, %165 ]
  br i1 %171, label %172, label %212

172:                                              ; preds = %170
  %173 = load i32*, i32** %33, align 8
  %174 = call i32 @HUFv07_DECODE_SYMBOLX4_2(i32* %173, i32* %17)
  %175 = load i32*, i32** %34, align 8
  %176 = call i32 @HUFv07_DECODE_SYMBOLX4_2(i32* %175, i32* %18)
  %177 = load i32*, i32** %35, align 8
  %178 = call i32 @HUFv07_DECODE_SYMBOLX4_2(i32* %177, i32* %19)
  %179 = load i32*, i32** %36, align 8
  %180 = call i32 @HUFv07_DECODE_SYMBOLX4_2(i32* %179, i32* %20)
  %181 = load i32*, i32** %33, align 8
  %182 = call i32 @HUFv07_DECODE_SYMBOLX4_1(i32* %181, i32* %17)
  %183 = load i32*, i32** %34, align 8
  %184 = call i32 @HUFv07_DECODE_SYMBOLX4_1(i32* %183, i32* %18)
  %185 = load i32*, i32** %35, align 8
  %186 = call i32 @HUFv07_DECODE_SYMBOLX4_1(i32* %185, i32* %19)
  %187 = load i32*, i32** %36, align 8
  %188 = call i32 @HUFv07_DECODE_SYMBOLX4_1(i32* %187, i32* %20)
  %189 = load i32*, i32** %33, align 8
  %190 = call i32 @HUFv07_DECODE_SYMBOLX4_2(i32* %189, i32* %17)
  %191 = load i32*, i32** %34, align 8
  %192 = call i32 @HUFv07_DECODE_SYMBOLX4_2(i32* %191, i32* %18)
  %193 = load i32*, i32** %35, align 8
  %194 = call i32 @HUFv07_DECODE_SYMBOLX4_2(i32* %193, i32* %19)
  %195 = load i32*, i32** %36, align 8
  %196 = call i32 @HUFv07_DECODE_SYMBOLX4_2(i32* %195, i32* %20)
  %197 = load i32*, i32** %33, align 8
  %198 = call i32 @HUFv07_DECODE_SYMBOLX4_0(i32* %197, i32* %17)
  %199 = load i32*, i32** %34, align 8
  %200 = call i32 @HUFv07_DECODE_SYMBOLX4_0(i32* %199, i32* %18)
  %201 = load i32*, i32** %35, align 8
  %202 = call i32 @HUFv07_DECODE_SYMBOLX4_0(i32* %201, i32* %19)
  %203 = load i32*, i32** %36, align 8
  %204 = call i32 @HUFv07_DECODE_SYMBOLX4_0(i32* %203, i32* %20)
  %205 = call i32 @BITv07_reloadDStream(i32* %17)
  %206 = call i32 @BITv07_reloadDStream(i32* %18)
  %207 = or i32 %205, %206
  %208 = call i32 @BITv07_reloadDStream(i32* %19)
  %209 = or i32 %207, %208
  %210 = call i32 @BITv07_reloadDStream(i32* %20)
  %211 = or i32 %209, %210
  store i32 %211, i32* %37, align 4
  br label %161

212:                                              ; preds = %170
  %213 = load i32*, i32** %33, align 8
  %214 = load i32*, i32** %30, align 8
  %215 = icmp ugt i32* %213, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %212
  %217 = load i32, i32* @corruption_detected, align 4
  %218 = call i64 @ERROR(i32 %217)
  store i64 %218, i64* %6, align 8
  br label %268

219:                                              ; preds = %212
  %220 = load i32*, i32** %34, align 8
  %221 = load i32*, i32** %31, align 8
  %222 = icmp ugt i32* %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load i32, i32* @corruption_detected, align 4
  %225 = call i64 @ERROR(i32 %224)
  store i64 %225, i64* %6, align 8
  br label %268

226:                                              ; preds = %219
  %227 = load i32*, i32** %35, align 8
  %228 = load i32*, i32** %32, align 8
  %229 = icmp ugt i32* %227, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %226
  %231 = load i32, i32* @corruption_detected, align 4
  %232 = call i64 @ERROR(i32 %231)
  store i64 %232, i64* %6, align 8
  br label %268

233:                                              ; preds = %226
  %234 = load i32*, i32** %33, align 8
  %235 = load i32*, i32** %30, align 8
  %236 = load i32*, i32** %16, align 8
  %237 = load i32, i32* %39, align 4
  %238 = call i32 @HUFv07_decodeStreamX4(i32* %234, i32* %17, i32* %235, i32* %236, i32 %237)
  %239 = load i32*, i32** %34, align 8
  %240 = load i32*, i32** %31, align 8
  %241 = load i32*, i32** %16, align 8
  %242 = load i32, i32* %39, align 4
  %243 = call i32 @HUFv07_decodeStreamX4(i32* %239, i32* %18, i32* %240, i32* %241, i32 %242)
  %244 = load i32*, i32** %35, align 8
  %245 = load i32*, i32** %32, align 8
  %246 = load i32*, i32** %16, align 8
  %247 = load i32, i32* %39, align 4
  %248 = call i32 @HUFv07_decodeStreamX4(i32* %244, i32* %19, i32* %245, i32* %246, i32 %247)
  %249 = load i32*, i32** %36, align 8
  %250 = load i32*, i32** %14, align 8
  %251 = load i32*, i32** %16, align 8
  %252 = load i32, i32* %39, align 4
  %253 = call i32 @HUFv07_decodeStreamX4(i32* %249, i32* %20, i32* %250, i32* %251, i32 %252)
  %254 = call i32 @BITv07_endOfDStream(i32* %17)
  %255 = call i32 @BITv07_endOfDStream(i32* %18)
  %256 = and i32 %254, %255
  %257 = call i32 @BITv07_endOfDStream(i32* %19)
  %258 = and i32 %256, %257
  %259 = call i32 @BITv07_endOfDStream(i32* %20)
  %260 = and i32 %258, %259
  store i32 %260, i32* %44, align 4
  %261 = load i32, i32* %44, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %233
  %264 = load i32, i32* @corruption_detected, align 4
  %265 = call i64 @ERROR(i32 %264)
  store i64 %265, i64* %6, align 8
  br label %268

266:                                              ; preds = %233
  %267 = load i64, i64* %8, align 8
  store i64 %267, i64* %6, align 8
  br label %268

268:                                              ; preds = %266, %263, %230, %223, %216, %151, %142, %133, %124, %114, %47
  %269 = load i64, i64* %6, align 8
  ret i64 %269
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @MEM_readLE16(i32*) #1

declare dso_local i32 @HUFv07_getDTableDesc(i32*) #1

declare dso_local i64 @BITv07_initDStream(i32*, i32*, i64) #1

declare dso_local i64 @HUFv07_isError(i64) #1

declare dso_local i32 @BITv07_reloadDStream(i32*) #1

declare dso_local i32 @HUFv07_DECODE_SYMBOLX4_2(i32*, i32*) #1

declare dso_local i32 @HUFv07_DECODE_SYMBOLX4_1(i32*, i32*) #1

declare dso_local i32 @HUFv07_DECODE_SYMBOLX4_0(i32*, i32*) #1

declare dso_local i32 @HUFv07_decodeStreamX4(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @BITv07_endOfDStream(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
