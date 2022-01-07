; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/ISO2022/extr_citrus_iso2022.c__citrus_ISO2022_mbrtowc_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/ISO2022/extr_citrus_iso2022.c__citrus_ISO2022_mbrtowc_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }

@_ENCODING_IS_STATE_DEPENDENT = common dso_local global i64 0, align 8
@_ISO2022INVALID = common dso_local global i64 0, align 8
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i8**, i64, %struct.TYPE_5__*, i64*)* @_citrus_ISO2022_mbrtowc_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_ISO2022_mbrtowc_priv(i32* noalias %0, i64* noalias %1, i8** noalias %2, i64 %3, %struct.TYPE_5__* noalias %4, i64* noalias %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i64* %1, i64** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %12, align 8
  store i64* %5, i64** %13, align 8
  %20 = load i8**, i8*** %10, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %6
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %26 = call i32 @_citrus_ISO2022_init_state(i32* %24, %struct.TYPE_5__* %25)
  %27 = load i64, i64* @_ENCODING_IS_STATE_DEPENDENT, align 8
  %28 = load i64*, i64** %13, align 8
  store i64 %27, i64* %28, align 8
  store i32 0, i32* %7, align 4
  br label %266

29:                                               ; preds = %6
  %30 = load i8**, i8*** %10, align 8
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %16, align 8
  store i32 0, i32* %18, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %19, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp ugt i64 %38, 8
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %43 = call i32 @_citrus_ISO2022_init_state(i32* %41, %struct.TYPE_5__* %42)
  br label %237

44:                                               ; preds = %29
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %165

50:                                               ; preds = %44
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %14, align 8
  br label %54

54:                                               ; preds = %162, %50
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = icmp ult i64 %58, 8
  br i1 %59, label %60, label %164

60:                                               ; preds = %54
  %61 = load i64, i64* %11, align 8
  %62 = icmp ugt i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %60
  %64 = load i8*, i8** %16, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %16, align 8
  %66 = load i8, i8* %64, align 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %69, i64 %74
  store i8 %66, i8* %75, align 1
  %76 = load i64, i64* %11, align 8
  %77 = add i64 %76, -1
  store i64 %77, i64* %11, align 8
  br label %78

78:                                               ; preds = %63, %60
  %79 = load i32*, i32** %8, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = load i8*, i8** %14, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = ptrtoint i8* %85 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = sub nsw i64 %84, %91
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %94 = call i64 @_ISO2022_sgetwchar(i32* %79, i8* %80, i64 %92, i8** %15, %struct.TYPE_5__* %93)
  store i64 %94, i64* %17, align 8
  %95 = load i8*, i8** %15, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = load i32, i32* %18, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %18, align 4
  %104 = load i64, i64* %17, align 8
  %105 = load i64, i64* @_ISO2022INVALID, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %144

107:                                              ; preds = %78
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = load i32, i32* %18, align 4
  %113 = sext i32 %112 to i64
  %114 = icmp ugt i64 %111, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %107
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load i8*, i8** %15, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %18, align 4
  %124 = sub nsw i32 %122, %123
  %125 = call i32 @memmove(i8* %118, i8* %119, i32 %124)
  br label %126

126:                                              ; preds = %115, %107
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = load i32, i32* %18, align 4
  %132 = sext i32 %131 to i64
  %133 = icmp ult i64 %130, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %126
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  store i32 0, i32* %136, align 8
  br label %143

137:                                              ; preds = %126
  %138 = load i32, i32* %18, align 4
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sub nsw i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %137, %134
  br label %242

144:                                              ; preds = %78
  %145 = load i64, i64* %11, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %144
  %148 = load i8*, i8** %15, align 8
  %149 = load i8*, i8** %14, align 8
  %150 = ptrtoint i8* %148 to i64
  %151 = ptrtoint i8* %149 to i64
  %152 = sub i64 %150, %151
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = icmp eq i64 %152, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %147
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  store i32 0, i32* %160, align 8
  br label %161

161:                                              ; preds = %158, %147
  br label %262

162:                                              ; preds = %144
  %163 = load i8*, i8** %15, align 8
  store i8* %163, i8** %14, align 8
  br label %54

164:                                              ; preds = %54
  br label %237

165:                                              ; preds = %211, %49
  %166 = load i32*, i32** %8, align 8
  %167 = load i8*, i8** %16, align 8
  %168 = load i64, i64* %11, align 8
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %170 = call i64 @_ISO2022_sgetwchar(i32* %166, i8* %167, i64 %168, i8** %15, %struct.TYPE_5__* %169)
  store i64 %170, i64* %17, align 8
  %171 = load i64, i64* %17, align 8
  %172 = load i64, i64* @_ISO2022INVALID, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %187

174:                                              ; preds = %165
  %175 = load i8*, i8** %15, align 8
  %176 = load i8*, i8** %16, align 8
  %177 = ptrtoint i8* %175 to i64
  %178 = ptrtoint i8* %176 to i64
  %179 = sub i64 %177, %178
  %180 = load i32, i32* %18, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %181, %179
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %18, align 4
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  store i32 0, i32* %185, align 8
  %186 = load i8*, i8** %15, align 8
  store i8* %186, i8** %16, align 8
  br label %242

187:                                              ; preds = %165
  %188 = load i8*, i8** %15, align 8
  %189 = load i8*, i8** %16, align 8
  %190 = icmp ugt i8* %188, %189
  br i1 %190, label %191, label %213

191:                                              ; preds = %187
  %192 = load i8*, i8** %15, align 8
  %193 = load i8*, i8** %16, align 8
  %194 = ptrtoint i8* %192 to i64
  %195 = ptrtoint i8* %193 to i64
  %196 = sub i64 %194, %195
  %197 = load i32, i32* %18, align 4
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %198, %196
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %18, align 4
  %201 = load i8*, i8** %15, align 8
  %202 = load i8*, i8** %16, align 8
  %203 = ptrtoint i8* %201 to i64
  %204 = ptrtoint i8* %202 to i64
  %205 = sub i64 %203, %204
  %206 = load i64, i64* %11, align 8
  %207 = sub i64 %206, %205
  store i64 %207, i64* %11, align 8
  %208 = load i8*, i8** %15, align 8
  store i8* %208, i8** %16, align 8
  %209 = load i64, i64* %11, align 8
  %210 = icmp ugt i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %191
  br label %165

212:                                              ; preds = %191
  br label %262

213:                                              ; preds = %187
  %214 = load i32, i32* %18, align 4
  %215 = sext i32 %214 to i64
  %216 = load i64, i64* %11, align 8
  %217 = add i64 %216, %215
  store i64 %217, i64* %11, align 8
  %218 = load i64, i64* %11, align 8
  %219 = icmp ult i64 %218, 8
  br i1 %219, label %220, label %236

220:                                              ; preds = %213
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 1
  %223 = load i8*, i8** %222, align 8
  %224 = load i8*, i8** %16, align 8
  %225 = load i32, i32* %18, align 4
  %226 = sext i32 %225 to i64
  %227 = sub i64 0, %226
  %228 = getelementptr inbounds i8, i8* %224, i64 %227
  %229 = load i64, i64* %11, align 8
  %230 = call i32 @memcpy(i8* %223, i8* %228, i64 %229)
  %231 = load i64, i64* %11, align 8
  %232 = trunc i64 %231 to i32
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  %235 = load i8*, i8** %15, align 8
  store i8* %235, i8** %16, align 8
  br label %262

236:                                              ; preds = %213
  br label %237

237:                                              ; preds = %236, %164, %40
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 0
  store i32 0, i32* %239, align 8
  %240 = load i64*, i64** %13, align 8
  store i64 -1, i64* %240, align 8
  %241 = load i32, i32* @EILSEQ, align 4
  store i32 %241, i32* %7, align 4
  br label %266

242:                                              ; preds = %174, %143
  %243 = load i8*, i8** %16, align 8
  %244 = load i8**, i8*** %10, align 8
  store i8* %243, i8** %244, align 8
  %245 = load i64*, i64** %9, align 8
  %246 = icmp ne i64* %245, null
  br i1 %246, label %247, label %250

247:                                              ; preds = %242
  %248 = load i64, i64* %17, align 8
  %249 = load i64*, i64** %9, align 8
  store i64 %248, i64* %249, align 8
  br label %250

250:                                              ; preds = %247, %242
  %251 = load i64, i64* %17, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %250
  %254 = load i32, i32* %18, align 4
  %255 = load i32, i32* %19, align 4
  %256 = sub nsw i32 %254, %255
  br label %258

257:                                              ; preds = %250
  br label %258

258:                                              ; preds = %257, %253
  %259 = phi i32 [ %256, %253 ], [ 0, %257 ]
  %260 = sext i32 %259 to i64
  %261 = load i64*, i64** %13, align 8
  store i64 %260, i64* %261, align 8
  store i32 0, i32* %7, align 4
  br label %266

262:                                              ; preds = %220, %212, %161
  %263 = load i8*, i8** %16, align 8
  %264 = load i8**, i8*** %10, align 8
  store i8* %263, i8** %264, align 8
  %265 = load i64*, i64** %13, align 8
  store i64 -2, i64* %265, align 8
  store i32 0, i32* %7, align 4
  br label %266

266:                                              ; preds = %262, %258, %237, %23
  %267 = load i32, i32* %7, align 4
  ret i32 %267
}

declare dso_local i32 @_citrus_ISO2022_init_state(i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @_ISO2022_sgetwchar(i32*, i8*, i64, i8**, %struct.TYPE_5__*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
