; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_util.c_ldns_b32_ntop_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_util.c_ldns_b32_ntop_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"0123456789abcdefghijklmnopqrstuv\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"abcdefghijklmnopqrstuvwxyz234567\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i8*, i64, i32, i32)* @ldns_b32_ntop_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldns_b32_ntop_base(i32* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)
  store i8* %20, i8** %15, align 8
  store i64 0, i64* %16, align 8
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i64, i64* %9, align 8
  %25 = call i64 @ldns_b32_ntop_calculate_size(i64 %24)
  br label %29

26:                                               ; preds = %6
  %27 = load i64, i64* %9, align 8
  %28 = call i64 @ldns_b32_ntop_calculate_size_no_padding(i64 %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i64 [ %25, %23 ], [ %28, %26 ]
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %14, align 8
  %33 = add i64 %32, 1
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 -1, i32* %7, align 4
  br label %284

36:                                               ; preds = %29
  %37 = load i8*, i8** %10, align 8
  %38 = load i64, i64* %14, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %43, %36
  %41 = load i64, i64* %9, align 8
  %42 = icmp uge i64 %41, 5
  br i1 %42, label %43, label %156

43:                                               ; preds = %40
  %44 = load i8*, i8** %15, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 3
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %44, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 %51, i8* %53, align 1
  %54 = load i8*, i8** %15, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 7
  %59 = shl i32 %58, 2
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 6
  %64 = or i32 %59, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %54, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  store i8 %67, i8* %69, align 1
  %70 = load i8*, i8** %15, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 62
  %75 = ashr i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %70, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  store i8 %78, i8* %80, align 1
  %81 = load i8*, i8** %15, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 1
  %86 = shl i32 %85, 4
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %89, 4
  %91 = or i32 %86, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %81, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = load i8*, i8** %10, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 3
  store i8 %94, i8* %96, align 1
  %97 = load i8*, i8** %15, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 15
  %102 = shl i32 %101, 1
  %103 = load i32*, i32** %8, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  %105 = load i32, i32* %104, align 4
  %106 = ashr i32 %105, 7
  %107 = or i32 %102, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %97, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = load i8*, i8** %10, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 4
  store i8 %110, i8* %112, align 1
  %113 = load i8*, i8** %15, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 124
  %118 = ashr i32 %117, 2
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %113, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = load i8*, i8** %10, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 5
  store i8 %121, i8* %123, align 1
  %124 = load i8*, i8** %15, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 3
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 3
  %129 = shl i32 %128, 3
  %130 = load i32*, i32** %8, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 4
  %132 = load i32, i32* %131, align 4
  %133 = ashr i32 %132, 5
  %134 = or i32 %129, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %124, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = load i8*, i8** %10, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 6
  store i8 %137, i8* %139, align 1
  %140 = load i8*, i8** %15, align 8
  %141 = load i32*, i32** %8, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 4
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 31
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %140, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = load i8*, i8** %10, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 7
  store i8 %147, i8* %149, align 1
  %150 = load i64, i64* %9, align 8
  %151 = sub i64 %150, 5
  store i64 %151, i64* %9, align 8
  %152 = load i32*, i32** %8, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 5
  store i32* %153, i32** %8, align 8
  %154 = load i8*, i8** %10, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 8
  store i8* %155, i8** %10, align 8
  br label %40

156:                                              ; preds = %40
  %157 = load i64, i64* %9, align 8
  switch i64 %157, label %259 [
    i64 4, label %158
    i64 3, label %186
    i64 2, label %205
    i64 1, label %235
  ]

158:                                              ; preds = %156
  %159 = load i8*, i8** %15, align 8
  %160 = load i32*, i32** %8, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 3
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, 3
  %164 = shl i32 %163, 3
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %159, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = load i8*, i8** %10, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 6
  store i8 %167, i8* %169, align 1
  %170 = load i8*, i8** %15, align 8
  %171 = load i32*, i32** %8, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 3
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, 124
  %175 = ashr i32 %174, 2
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %170, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = load i8*, i8** %10, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 5
  store i8 %178, i8* %180, align 1
  %181 = load i32*, i32** %8, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 3
  %183 = load i32, i32* %182, align 4
  %184 = ashr i32 %183, 7
  %185 = sext i32 %184 to i64
  store i64 %185, i64* %16, align 8
  br label %186

186:                                              ; preds = %156, %158
  %187 = load i8*, i8** %15, align 8
  %188 = load i32*, i32** %8, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 2
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, 15
  %192 = shl i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = load i64, i64* %16, align 8
  %195 = or i64 %193, %194
  %196 = getelementptr inbounds i8, i8* %187, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = load i8*, i8** %10, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 4
  store i8 %197, i8* %199, align 1
  %200 = load i32*, i32** %8, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  %202 = load i32, i32* %201, align 4
  %203 = ashr i32 %202, 4
  %204 = sext i32 %203 to i64
  store i64 %204, i64* %16, align 8
  br label %205

205:                                              ; preds = %156, %186
  %206 = load i8*, i8** %15, align 8
  %207 = load i32*, i32** %8, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  %209 = load i32, i32* %208, align 4
  %210 = and i32 %209, 1
  %211 = shl i32 %210, 4
  %212 = sext i32 %211 to i64
  %213 = load i64, i64* %16, align 8
  %214 = or i64 %212, %213
  %215 = getelementptr inbounds i8, i8* %206, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = load i8*, i8** %10, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 3
  store i8 %216, i8* %218, align 1
  %219 = load i8*, i8** %15, align 8
  %220 = load i32*, i32** %8, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = and i32 %222, 62
  %224 = ashr i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %219, i64 %225
  %227 = load i8, i8* %226, align 1
  %228 = load i8*, i8** %10, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 2
  store i8 %227, i8* %229, align 1
  %230 = load i32*, i32** %8, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 1
  %232 = load i32, i32* %231, align 4
  %233 = ashr i32 %232, 6
  %234 = sext i32 %233 to i64
  store i64 %234, i64* %16, align 8
  br label %235

235:                                              ; preds = %156, %205
  %236 = load i8*, i8** %15, align 8
  %237 = load i32*, i32** %8, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = and i32 %239, 7
  %241 = shl i32 %240, 2
  %242 = sext i32 %241 to i64
  %243 = load i64, i64* %16, align 8
  %244 = or i64 %242, %243
  %245 = getelementptr inbounds i8, i8* %236, i64 %244
  %246 = load i8, i8* %245, align 1
  %247 = load i8*, i8** %10, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 1
  store i8 %246, i8* %248, align 1
  %249 = load i8*, i8** %15, align 8
  %250 = load i32*, i32** %8, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 0
  %252 = load i32, i32* %251, align 4
  %253 = ashr i32 %252, 3
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8, i8* %249, i64 %254
  %256 = load i8, i8* %255, align 1
  %257 = load i8*, i8** %10, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 0
  store i8 %256, i8* %258, align 1
  br label %259

259:                                              ; preds = %235, %156
  %260 = load i32, i32* %13, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %281

262:                                              ; preds = %259
  %263 = load i64, i64* %9, align 8
  switch i64 %263, label %280 [
    i64 1, label %264
    i64 2, label %269
    i64 3, label %272
    i64 4, label %277
  ]

264:                                              ; preds = %262
  %265 = load i8*, i8** %10, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 2
  store i8 61, i8* %266, align 1
  %267 = load i8*, i8** %10, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 3
  store i8 61, i8* %268, align 1
  br label %269

269:                                              ; preds = %262, %264
  %270 = load i8*, i8** %10, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 4
  store i8 61, i8* %271, align 1
  br label %272

272:                                              ; preds = %262, %269
  %273 = load i8*, i8** %10, align 8
  %274 = getelementptr inbounds i8, i8* %273, i64 5
  store i8 61, i8* %274, align 1
  %275 = load i8*, i8** %10, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 6
  store i8 61, i8* %276, align 1
  br label %277

277:                                              ; preds = %262, %272
  %278 = load i8*, i8** %10, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 7
  store i8 61, i8* %279, align 1
  br label %280

280:                                              ; preds = %277, %262
  br label %281

281:                                              ; preds = %280, %259
  %282 = load i64, i64* %14, align 8
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %7, align 4
  br label %284

284:                                              ; preds = %281, %35
  %285 = load i32, i32* %7, align 4
  ret i32 %285
}

declare dso_local i64 @ldns_b32_ntop_calculate_size(i64) #1

declare dso_local i64 @ldns_b32_ntop_calculate_size_no_padding(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
