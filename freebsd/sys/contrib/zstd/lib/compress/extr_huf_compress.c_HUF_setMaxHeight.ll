; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_huf_compress.c_HUF_setMaxHeight.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_huf_compress.c_HUF_setMaxHeight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@HUF_TABLELOG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i64, i64)* @HUF_setMaxHeight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HUF_setMaxHeight(%struct.TYPE_3__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ule i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i64, i64* %8, align 8
  store i64 %31, i64* %4, align 8
  br label %299

32:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  %37 = shl i32 1, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %11, align 8
  br label %40

40:                                               ; preds = %48, %32
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %40
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %50, %55
  %57 = trunc i64 %56 to i32
  %58 = shl i32 1, %57
  %59 = sext i32 %58 to i64
  %60 = sub i64 %49, %59
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %9, align 4
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = load i64, i64* %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i64 %65, i64* %69, align 8
  %70 = load i64, i64* %11, align 8
  %71 = add i64 %70, -1
  store i64 %71, i64* %11, align 8
  br label %40

72:                                               ; preds = %40
  br label %73

73:                                               ; preds = %81, %72
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %7, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i64, i64* %11, align 8
  %83 = add i64 %82, -1
  store i64 %83, i64* %11, align 8
  br label %73

84:                                               ; preds = %73
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %7, align 8
  %87 = sub i64 %85, %86
  %88 = load i32, i32* %9, align 4
  %89 = trunc i64 %87 to i32
  %90 = ashr i32 %88, %89
  store i32 %90, i32* %9, align 4
  store i64 4042322160, i64* %12, align 8
  %91 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %92 = add nsw i32 %91, 2
  %93 = zext i32 %92 to i64
  %94 = call i8* @llvm.stacksave()
  store i8* %94, i8** %13, align 8
  %95 = alloca i64, i64 %93, align 16
  store i64 %93, i64* %14, align 8
  %96 = mul nuw i64 8, %93
  %97 = trunc i64 %96 to i32
  %98 = call i32 @memset(i64* %95, i32 240, i32 %97)
  %99 = load i64, i64* %7, align 8
  store i64 %99, i64* %16, align 8
  %100 = load i64, i64* %11, align 8
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %15, align 4
  br label %102

102:                                              ; preds = %128, %84
  %103 = load i32, i32* %15, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %131

105:                                              ; preds = %102
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %16, align 8
  %113 = icmp uge i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %128

115:                                              ; preds = %105
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %16, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %7, align 8
  %125 = load i64, i64* %16, align 8
  %126 = sub i64 %124, %125
  %127 = getelementptr inbounds i64, i64* %95, i64 %126
  store i64 %123, i64* %127, align 8
  br label %128

128:                                              ; preds = %115, %114
  %129 = load i32, i32* %15, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %15, align 4
  br label %102

131:                                              ; preds = %102
  br label %132

132:                                              ; preds = %248, %131
  %133 = load i32, i32* %9, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %249

135:                                              ; preds = %132
  %136 = load i32, i32* %9, align 4
  %137 = call i64 @BIT_highbit32(i32 %136)
  %138 = add i64 %137, 1
  store i64 %138, i64* %17, align 8
  br label %139

139:                                              ; preds = %174, %135
  %140 = load i64, i64* %17, align 8
  %141 = icmp ugt i64 %140, 1
  br i1 %141, label %142, label %177

142:                                              ; preds = %139
  %143 = load i64, i64* %17, align 8
  %144 = getelementptr inbounds i64, i64* %95, i64 %143
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %18, align 8
  %146 = load i64, i64* %17, align 8
  %147 = sub i64 %146, 1
  %148 = getelementptr inbounds i64, i64* %95, i64 %147
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %19, align 8
  %150 = load i64, i64* %18, align 8
  %151 = icmp eq i64 %150, 4042322160
  br i1 %151, label %152, label %153

152:                                              ; preds = %142
  br label %174

153:                                              ; preds = %142
  %154 = load i64, i64* %19, align 8
  %155 = icmp eq i64 %154, 4042322160
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  br label %177

157:                                              ; preds = %153
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %159 = load i64, i64* %18, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %20, align 8
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %164 = load i64, i64* %19, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = mul i64 2, %167
  store i64 %168, i64* %21, align 8
  %169 = load i64, i64* %20, align 8
  %170 = load i64, i64* %21, align 8
  %171 = icmp ule i64 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %157
  br label %177

173:                                              ; preds = %157
  br label %174

174:                                              ; preds = %173, %152
  %175 = load i64, i64* %17, align 8
  %176 = add i64 %175, -1
  store i64 %176, i64* %17, align 8
  br label %139

177:                                              ; preds = %172, %156, %139
  br label %178

178:                                              ; preds = %190, %177
  %179 = load i64, i64* %17, align 8
  %180 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %181 = sext i32 %180 to i64
  %182 = icmp ule i64 %179, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %178
  %184 = load i64, i64* %17, align 8
  %185 = getelementptr inbounds i64, i64* %95, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %186, 4042322160
  br label %188

188:                                              ; preds = %183, %178
  %189 = phi i1 [ false, %178 ], [ %187, %183 ]
  br i1 %189, label %190, label %193

190:                                              ; preds = %188
  %191 = load i64, i64* %17, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %17, align 8
  br label %178

193:                                              ; preds = %188
  %194 = load i64, i64* %17, align 8
  %195 = sub i64 %194, 1
  %196 = trunc i64 %195 to i32
  %197 = shl i32 1, %196
  %198 = load i32, i32* %9, align 4
  %199 = sub nsw i32 %198, %197
  store i32 %199, i32* %9, align 4
  %200 = load i64, i64* %17, align 8
  %201 = sub i64 %200, 1
  %202 = getelementptr inbounds i64, i64* %95, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = icmp eq i64 %203, 4042322160
  br i1 %204, label %205, label %212

205:                                              ; preds = %193
  %206 = load i64, i64* %17, align 8
  %207 = getelementptr inbounds i64, i64* %95, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* %17, align 8
  %210 = sub i64 %209, 1
  %211 = getelementptr inbounds i64, i64* %95, i64 %210
  store i64 %208, i64* %211, align 8
  br label %212

212:                                              ; preds = %205, %193
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %214 = load i64, i64* %17, align 8
  %215 = getelementptr inbounds i64, i64* %95, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %218, align 8
  %221 = load i64, i64* %17, align 8
  %222 = getelementptr inbounds i64, i64* %95, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %212
  %226 = load i64, i64* %17, align 8
  %227 = getelementptr inbounds i64, i64* %95, i64 %226
  store i64 4042322160, i64* %227, align 8
  br label %248

228:                                              ; preds = %212
  %229 = load i64, i64* %17, align 8
  %230 = getelementptr inbounds i64, i64* %95, i64 %229
  %231 = load i64, i64* %230, align 8
  %232 = add i64 %231, -1
  store i64 %232, i64* %230, align 8
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %234 = load i64, i64* %17, align 8
  %235 = getelementptr inbounds i64, i64* %95, i64 %234
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* %7, align 8
  %241 = load i64, i64* %17, align 8
  %242 = sub i64 %240, %241
  %243 = icmp ne i64 %239, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %228
  %245 = load i64, i64* %17, align 8
  %246 = getelementptr inbounds i64, i64* %95, i64 %245
  store i64 4042322160, i64* %246, align 8
  br label %247

247:                                              ; preds = %244, %228
  br label %248

248:                                              ; preds = %247, %225
  br label %132

249:                                              ; preds = %132
  br label %250

250:                                              ; preds = %282, %269, %249
  %251 = load i32, i32* %9, align 4
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %296

253:                                              ; preds = %250
  %254 = getelementptr inbounds i64, i64* %95, i64 1
  %255 = load i64, i64* %254, align 8
  %256 = icmp eq i64 %255, 4042322160
  br i1 %256, label %257, label %282

257:                                              ; preds = %253
  br label %258

258:                                              ; preds = %266, %257
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %260 = load i64, i64* %11, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* %7, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %269

266:                                              ; preds = %258
  %267 = load i64, i64* %11, align 8
  %268 = add i64 %267, -1
  store i64 %268, i64* %11, align 8
  br label %258

269:                                              ; preds = %258
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %271 = load i64, i64* %11, align 8
  %272 = add i64 %271, 1
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = add i64 %275, -1
  store i64 %276, i64* %274, align 8
  %277 = load i64, i64* %11, align 8
  %278 = add i64 %277, 1
  %279 = getelementptr inbounds i64, i64* %95, i64 1
  store i64 %278, i64* %279, align 8
  %280 = load i32, i32* %9, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %9, align 4
  br label %250

282:                                              ; preds = %253
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %284 = getelementptr inbounds i64, i64* %95, i64 1
  %285 = load i64, i64* %284, align 8
  %286 = add i64 %285, 1
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = add i64 %289, -1
  store i64 %290, i64* %288, align 8
  %291 = getelementptr inbounds i64, i64* %95, i64 1
  %292 = load i64, i64* %291, align 8
  %293 = add i64 %292, 1
  store i64 %293, i64* %291, align 8
  %294 = load i32, i32* %9, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %9, align 4
  br label %250

296:                                              ; preds = %250
  %297 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %297)
  %298 = load i64, i64* %7, align 8
  store i64 %298, i64* %4, align 8
  br label %299

299:                                              ; preds = %296, %30
  %300 = load i64, i64* %4, align 8
  ret i64 %300
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i64 @BIT_highbit32(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
