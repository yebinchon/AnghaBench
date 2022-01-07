; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_base32.c_base32_decode_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_base32.c_base32_decode_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i32, i32*, i32, i32, i64 }

@ISC_R_BADBASE32 = common dso_local global i32 0, align 4
@ISC_TRUE = common dso_local global i64 0, align 8
@ISC_R_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @base32_decode_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @base32_decode_char(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [5 x i8], align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ISC_R_BADBASE32, align 4
  store i32 %15, i32* %3, align 4
  br label %274

16:                                               ; preds = %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i8* @strchr(i8* %19, i32 %20)
  store i8* %21, i8** %6, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @ISC_R_BADBASE32, align 4
  store i32 %24, i32* %3, align 4
  br label %274

25:                                               ; preds = %16
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = ptrtoint i8* %26 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ugt i32 %34, 32
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* %7, align 4
  %38 = sub i32 %37, 33
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %36, %25
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 32
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @ISC_R_BADBASE32, align 4
  store i32 %48, i32* %3, align 4
  br label %274

49:                                               ; preds = %42, %39
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 32
  br i1 %51, label %52, label %120

52:                                               ; preds = %49
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %120

57:                                               ; preds = %52
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %119 [
    i32 0, label %61
    i32 1, label %61
    i32 2, label %63
    i32 3, label %76
    i32 4, label %78
    i32 5, label %91
    i32 6, label %104
    i32 7, label %106
  ]

61:                                               ; preds = %57, %57
  %62 = load i32, i32* @ISC_R_BADBASE32, align 4
  store i32 %62, i32* %3, align 4
  br label %274

63:                                               ; preds = %57
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 3
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* @ISC_R_BADBASE32, align 4
  store i32 %72, i32* %3, align 4
  br label %274

73:                                               ; preds = %63
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  store i64 1, i64* %75, align 8
  br label %119

76:                                               ; preds = %57
  %77 = load i32, i32* @ISC_R_BADBASE32, align 4
  store i32 %77, i32* %3, align 4
  br label %274

78:                                               ; preds = %57
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 15
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* @ISC_R_BADBASE32, align 4
  store i32 %87, i32* %3, align 4
  br label %274

88:                                               ; preds = %78
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i64 3, i64* %90, align 8
  br label %119

91:                                               ; preds = %57
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 1
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* @ISC_R_BADBASE32, align 4
  store i32 %100, i32* %3, align 4
  br label %274

101:                                              ; preds = %91
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store i64 3, i64* %103, align 8
  br label %119

104:                                              ; preds = %57
  %105 = load i32, i32* @ISC_R_BADBASE32, align 4
  store i32 %105, i32* %3, align 4
  br label %274

106:                                              ; preds = %57
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 6
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 7
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = load i32, i32* @ISC_R_BADBASE32, align 4
  store i32 %115, i32* %3, align 4
  br label %274

116:                                              ; preds = %106
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  store i64 4, i64* %118, align 8
  br label %119

119:                                              ; preds = %57, %116, %101, %88, %73
  br label %120

120:                                              ; preds = %119, %52, %49
  %121 = load i32, i32* %7, align 4
  %122 = icmp eq i32 %121, 32
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %126

124:                                              ; preds = %120
  %125 = load i32, i32* %7, align 4
  br label %126

126:                                              ; preds = %124, %123
  %127 = phi i32 [ 0, %123 ], [ %125, %124 ]
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %130, i64 %135
  store i32 %127, i32* %136, align 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 8
  br i1 %140, label %141, label %272

141:                                              ; preds = %126
  store i32 5, i32* %8, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %141
  %147 = load i64, i64* @ISC_TRUE, align 8
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 6
  store i64 %147, i64* %149, align 8
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %8, align 4
  br label %154

154:                                              ; preds = %146, %141
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = shl i32 %159, 3
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = ashr i32 %165, 2
  %167 = or i32 %160, %166
  %168 = trunc i32 %167 to i8
  %169 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  store i8 %168, i8* %169, align 1
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = shl i32 %174, 6
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 2
  %180 = load i32, i32* %179, align 4
  %181 = shl i32 %180, 1
  %182 = or i32 %175, %181
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 3
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 3
  %187 = load i32, i32* %186, align 4
  %188 = ashr i32 %187, 4
  %189 = or i32 %182, %188
  %190 = trunc i32 %189 to i8
  %191 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 1
  store i8 %190, i8* %191, align 1
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 3
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 3
  %196 = load i32, i32* %195, align 4
  %197 = shl i32 %196, 4
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 3
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 4
  %202 = load i32, i32* %201, align 4
  %203 = ashr i32 %202, 1
  %204 = or i32 %197, %203
  %205 = trunc i32 %204 to i8
  %206 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 2
  store i8 %205, i8* %206, align 1
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 3
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 4
  %211 = load i32, i32* %210, align 4
  %212 = shl i32 %211, 7
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 3
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 5
  %217 = load i32, i32* %216, align 4
  %218 = shl i32 %217, 2
  %219 = or i32 %212, %218
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 3
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 6
  %224 = load i32, i32* %223, align 4
  %225 = ashr i32 %224, 3
  %226 = or i32 %219, %225
  %227 = trunc i32 %226 to i8
  %228 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 3
  store i8 %227, i8* %228, align 1
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 6
  %233 = load i32, i32* %232, align 4
  %234 = shl i32 %233, 5
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 3
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 7
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %234, %239
  %241 = trunc i32 %240 to i8
  %242 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 4
  store i8 %241, i8* %242, align 1
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 4
  %246 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %247 = load i32, i32* %8, align 4
  %248 = call i32 @mem_tobuffer(i32 %245, i8* %246, i32 %247)
  %249 = call i32 @RETERR(i32 %248)
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 8
  %253 = icmp sge i32 %252, 0
  br i1 %253, label %254, label %269

254:                                              ; preds = %154
  %255 = load i32, i32* %8, align 4
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = icmp sgt i32 %255, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %254
  %261 = load i32, i32* @ISC_R_BADBASE32, align 4
  store i32 %261, i32* %3, align 4
  br label %274

262:                                              ; preds = %254
  %263 = load i32, i32* %8, align 4
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = sub nsw i32 %266, %263
  store i32 %267, i32* %265, align 8
  br label %268

268:                                              ; preds = %262
  br label %269

269:                                              ; preds = %268, %154
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 2
  store i32 0, i32* %271, align 8
  br label %272

272:                                              ; preds = %269, %126
  %273 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %273, i32* %3, align 4
  br label %274

274:                                              ; preds = %272, %260, %114, %104, %99, %86, %76, %71, %61, %47, %23, %14
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @RETERR(i32) #1

declare dso_local i32 @mem_tobuffer(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
