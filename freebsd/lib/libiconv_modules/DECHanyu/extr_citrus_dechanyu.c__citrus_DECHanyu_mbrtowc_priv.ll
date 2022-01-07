; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/DECHanyu/extr_citrus_dechanyu.c__citrus_DECHanyu_mbrtowc_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/DECHanyu/extr_citrus_dechanyu.c__citrus_DECHanyu_mbrtowc_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@_ENCODING_IS_STATE_DEPENDENT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@HANYUBIT = common dso_local global i64 0, align 8
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8**, i64, %struct.TYPE_4__*, i64*)* @_citrus_DECHanyu_mbrtowc_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_DECHanyu_mbrtowc_priv(i32* noalias %0, i32* noalias %1, i8** noalias %2, i64 %3, %struct.TYPE_4__* noalias %4, i64* noalias %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %12, align 8
  store i64* %5, i64** %13, align 8
  %17 = load i8**, i8*** %10, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %6
  %21 = load i32*, i32** %8, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %23 = call i32 @_citrus_DECHanyu_init_state(i32* %21, %struct.TYPE_4__* %22)
  %24 = load i64, i64* @_ENCODING_IS_STATE_DEPENDENT, align 8
  %25 = load i64*, i64** %13, align 8
  store i64 %24, i64* %25, align 8
  store i32 0, i32* %7, align 4
  br label %269

26:                                               ; preds = %6
  %27 = load i8**, i8*** %10, align 8
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %117 [
    i32 0, label %32
    i32 1, label %77
    i32 2, label %90
    i32 3, label %90
  ]

32:                                               ; preds = %26
  %33 = load i64, i64* %11, align 8
  %34 = add i64 %33, -1
  store i64 %34, i64* %11, align 8
  %35 = icmp ult i64 %33, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %262

37:                                               ; preds = %32
  %38 = load i8*, i8** %14, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %14, align 8
  %40 = load i8, i8* %38, align 1
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, 255
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = call i32 @is_singlebyte(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %37
  %47 = load i32*, i32** %9, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %16, align 4
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %16, align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 0, i32 1
  %57 = sext i32 %56 to i64
  %58 = load i64*, i64** %13, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = load i8**, i8*** %10, align 8
  store i8* %59, i8** %60, align 8
  store i32 0, i32* %7, align 4
  br label %269

61:                                               ; preds = %37
  %62 = load i32, i32* %16, align 4
  %63 = call i32 @is_leadbyte(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  br label %266

66:                                               ; preds = %61
  %67 = load i32, i32* %16, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %70, i64 %75
  store i32 %67, i32* %76, align 4
  br label %119

77:                                               ; preds = %26
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 255
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @is_leadbyte(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %77
  %88 = load i32, i32* @EINVAL, align 4
  store i32 %88, i32* %7, align 4
  br label %269

89:                                               ; preds = %77
  br label %119

90:                                               ; preds = %26, %26
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 255
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %16, align 4
  %98 = call i32 @is_hanyu1(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %90
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 255
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @is_hanyu2(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %100
  %111 = load i64, i64* @HANYUBIT, align 8
  %112 = trunc i64 %111 to i32
  %113 = load i32, i32* %15, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %15, align 4
  br label %119

115:                                              ; preds = %100
  br label %116

116:                                              ; preds = %115, %90
  br label %117

117:                                              ; preds = %26, %116
  %118 = load i32, i32* @EINVAL, align 4
  store i32 %118, i32* %7, align 4
  br label %269

119:                                              ; preds = %110, %89, %66
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  switch i32 %122, label %222 [
    i32 1, label %123
    i32 2, label %183
    i32 3, label %209
  ]

123:                                              ; preds = %119
  %124 = load i32, i32* %16, align 4
  %125 = call i32 @is_hanyu1(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %182

127:                                              ; preds = %123
  %128 = load i64, i64* %11, align 8
  %129 = add i64 %128, -1
  store i64 %129, i64* %11, align 8
  %130 = icmp ult i64 %128, 1
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  br label %262

132:                                              ; preds = %127
  %133 = load i8*, i8** %14, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %14, align 8
  %135 = load i8, i8* %133, align 1
  %136 = sext i8 %135 to i32
  %137 = and i32 %136, 255
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %16, align 4
  %139 = call i32 @is_hanyu2(i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %132
  br label %266

142:                                              ; preds = %132
  %143 = load i32, i32* %16, align 4
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %146, i64 %151
  store i32 %143, i32* %152, align 4
  %153 = load i64, i64* @HANYUBIT, align 8
  %154 = trunc i64 %153 to i32
  %155 = load i32, i32* %15, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %15, align 4
  %157 = load i64, i64* %11, align 8
  %158 = add i64 %157, -1
  store i64 %158, i64* %11, align 8
  %159 = icmp ult i64 %157, 1
  br i1 %159, label %160, label %161

160:                                              ; preds = %142
  br label %262

161:                                              ; preds = %142
  %162 = load i8*, i8** %14, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %14, align 8
  %164 = load i8, i8* %162, align 1
  %165 = sext i8 %164 to i32
  %166 = and i32 %165, 255
  store i32 %166, i32* %16, align 4
  %167 = load i32, i32* %16, align 4
  %168 = call i32 @is_leadbyte(i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %161
  br label %266

171:                                              ; preds = %161
  %172 = load i32, i32* %16, align 4
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i32, i32* %175, i64 %180
  store i32 %172, i32* %181, align 4
  br label %182

182:                                              ; preds = %171, %123
  br label %222

183:                                              ; preds = %119
  %184 = load i64, i64* %11, align 8
  %185 = add i64 %184, -1
  store i64 %185, i64* %11, align 8
  %186 = icmp ult i64 %184, 1
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  br label %262

188:                                              ; preds = %183
  %189 = load i8*, i8** %14, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %14, align 8
  %191 = load i8, i8* %189, align 1
  %192 = sext i8 %191 to i32
  %193 = and i32 %192, 255
  store i32 %193, i32* %16, align 4
  %194 = load i32, i32* %16, align 4
  %195 = call i32 @is_leadbyte(i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %188
  br label %266

198:                                              ; preds = %188
  %199 = load i32, i32* %16, align 4
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 8
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i32, i32* %202, i64 %207
  store i32 %199, i32* %208, align 4
  br label %222

209:                                              ; preds = %119
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 2
  %214 = load i32, i32* %213, align 4
  %215 = and i32 %214, 255
  store i32 %215, i32* %16, align 4
  %216 = load i32, i32* %16, align 4
  %217 = call i32 @is_leadbyte(i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %209
  %220 = load i32, i32* @EINVAL, align 4
  store i32 %220, i32* %7, align 4
  br label %269

221:                                              ; preds = %209
  br label %222

222:                                              ; preds = %221, %119, %198, %182
  %223 = load i64, i64* %11, align 8
  %224 = add i64 %223, -1
  store i64 %224, i64* %11, align 8
  %225 = icmp ult i64 %223, 1
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  br label %262

227:                                              ; preds = %222
  %228 = load i32, i32* %16, align 4
  %229 = shl i32 %228, 8
  %230 = load i32, i32* %15, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %15, align 4
  %232 = load i8*, i8** %14, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %14, align 8
  %234 = load i8, i8* %232, align 1
  %235 = sext i8 %234 to i32
  %236 = and i32 %235, 255
  store i32 %236, i32* %16, align 4
  %237 = load i32, i32* %16, align 4
  %238 = call i32 @is_trailbyte(i32 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %241, label %240

240:                                              ; preds = %227
  br label %266

241:                                              ; preds = %227
  %242 = load i32, i32* %16, align 4
  %243 = load i32, i32* %15, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %15, align 4
  %245 = load i32*, i32** %9, align 8
  %246 = icmp ne i32* %245, null
  br i1 %246, label %247, label %250

247:                                              ; preds = %241
  %248 = load i32, i32* %15, align 4
  %249 = load i32*, i32** %9, align 8
  store i32 %248, i32* %249, align 4
  br label %250

250:                                              ; preds = %247, %241
  %251 = load i8*, i8** %14, align 8
  %252 = load i8**, i8*** %10, align 8
  %253 = load i8*, i8** %252, align 8
  %254 = ptrtoint i8* %251 to i64
  %255 = ptrtoint i8* %253 to i64
  %256 = sub i64 %254, %255
  %257 = load i64*, i64** %13, align 8
  store i64 %256, i64* %257, align 8
  %258 = load i8*, i8** %14, align 8
  %259 = load i8**, i8*** %10, align 8
  store i8* %258, i8** %259, align 8
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  store i32 0, i32* %261, align 8
  store i32 0, i32* %7, align 4
  br label %269

262:                                              ; preds = %226, %187, %160, %131, %36
  %263 = load i64*, i64** %13, align 8
  store i64 -2, i64* %263, align 8
  %264 = load i8*, i8** %14, align 8
  %265 = load i8**, i8*** %10, align 8
  store i8* %264, i8** %265, align 8
  store i32 0, i32* %7, align 4
  br label %269

266:                                              ; preds = %240, %197, %170, %141, %65
  %267 = load i64*, i64** %13, align 8
  store i64 -1, i64* %267, align 8
  %268 = load i32, i32* @EILSEQ, align 4
  store i32 %268, i32* %7, align 4
  br label %269

269:                                              ; preds = %266, %262, %250, %219, %117, %87, %52, %20
  %270 = load i32, i32* %7, align 4
  ret i32 %270
}

declare dso_local i32 @_citrus_DECHanyu_init_state(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @is_singlebyte(i32) #1

declare dso_local i32 @is_leadbyte(i32) #1

declare dso_local i32 @is_hanyu1(i32) #1

declare dso_local i32 @is_hanyu2(i32) #1

declare dso_local i32 @is_trailbyte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
