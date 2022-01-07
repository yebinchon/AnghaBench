; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pam_modules/pam_passwdqc/extr_passwdqc_check.c_is_simple.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pam_modules/pam_passwdqc/extr_passwdqc_check.c_is_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*)* @is_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_simple(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 32, i32* %16, align 4
  br label %17

17:                                               ; preds = %92, %2
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  store i32 %23, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %93

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %15, align 4
  %29 = call i64 @isascii(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %14, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %14, align 4
  br label %61

34:                                               ; preds = %25
  %35 = load i32, i32* %15, align 4
  %36 = call i64 @isdigit(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %60

41:                                               ; preds = %34
  %42 = load i32, i32* %15, align 4
  %43 = call i64 @islower(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %59

48:                                               ; preds = %41
  %49 = load i32, i32* %15, align 4
  %50 = call i64 @isupper(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %58

55:                                               ; preds = %48
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %45
  br label %60

60:                                               ; preds = %59, %38
  br label %61

61:                                               ; preds = %60, %31
  %62 = load i32, i32* %15, align 4
  %63 = call i64 @isascii(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = load i32, i32* %15, align 4
  %67 = call i64 @isalpha(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load i32, i32* %16, align 4
  %71 = call i64 @isascii(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32, i32* %16, align 4
  %75 = call i64 @isalpha(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %77, %73, %69, %65, %61
  %81 = load i32, i32* %15, align 4
  store i32 %81, i32* %16, align 4
  %82 = load i8*, i8** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @strchr(i8* %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %89, %80
  br label %17

93:                                               ; preds = %17
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  store i32 1, i32* %3, align 4
  br label %297

97:                                               ; preds = %93
  %98 = load i8*, i8** %5, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %97
  %105 = load i32, i32* %15, align 4
  %106 = call i64 @isascii(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load i32, i32* %15, align 4
  %110 = call i64 @isupper(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %112, %108, %104, %97
  %116 = load i8*, i8** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %115
  %126 = load i32, i32* %15, align 4
  %127 = call i64 @isascii(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = load i32, i32* %15, align 4
  %131 = call i64 @isdigit(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %10, align 4
  br label %136

136:                                              ; preds = %133, %129, %125, %115
  store i32 0, i32* %7, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  br label %154

154:                                              ; preds = %151, %148
  %155 = load i32, i32* %13, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %7, align 4
  br label %160

160:                                              ; preds = %157, %154
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %160
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load i32, i32* %10, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %166
  %170 = load i32, i32* %7, align 4
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %175

172:                                              ; preds = %169, %163
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %172, %169, %166, %160
  br label %176

176:                                              ; preds = %293, %175
  %177 = load i32, i32* %7, align 4
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %296

179:                                              ; preds = %176
  %180 = load i32, i32* %7, align 4
  switch i32 %180, label %292 [
    i32 1, label %181
    i32 2, label %201
    i32 3, label %252
    i32 4, label %272
  ]

181:                                              ; preds = %179
  %182 = load i32, i32* %6, align 4
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp sge i32 %182, %187
  br i1 %188, label %189, label %200

189:                                              ; preds = %181
  %190 = load i32, i32* %9, align 4
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @expected_different(i32 10, i32 %195)
  %197 = sub nsw i32 %196, 1
  %198 = icmp sge i32 %190, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %189
  store i32 0, i32* %3, align 4
  br label %297

200:                                              ; preds = %189, %181
  store i32 1, i32* %3, align 4
  br label %297

201:                                              ; preds = %179
  %202 = load i32, i32* %6, align 4
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp sge i32 %202, %207
  br i1 %208, label %209, label %220

209:                                              ; preds = %201
  %210 = load i32, i32* %9, align 4
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @expected_different(i32 36, i32 %215)
  %217 = sub nsw i32 %216, 1
  %218 = icmp sge i32 %210, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %209
  store i32 0, i32* %3, align 4
  br label %297

220:                                              ; preds = %209, %201
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %220
  %226 = load i32, i32* %8, align 4
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = icmp slt i32 %226, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %225, %220
  br label %293

232:                                              ; preds = %225
  %233 = load i32, i32* %6, align 4
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 2
  %238 = load i32, i32* %237, align 4
  %239 = icmp sge i32 %233, %238
  br i1 %239, label %240, label %251

240:                                              ; preds = %232
  %241 = load i32, i32* %9, align 4
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 2
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @expected_different(i32 27, i32 %246)
  %248 = sub nsw i32 %247, 1
  %249 = icmp sge i32 %241, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %240
  store i32 0, i32* %3, align 4
  br label %297

251:                                              ; preds = %240, %232
  br label %293

252:                                              ; preds = %179
  %253 = load i32, i32* %6, align 4
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 3
  %258 = load i32, i32* %257, align 4
  %259 = icmp sge i32 %253, %258
  br i1 %259, label %260, label %271

260:                                              ; preds = %252
  %261 = load i32, i32* %9, align 4
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 3
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @expected_different(i32 62, i32 %266)
  %268 = sub nsw i32 %267, 1
  %269 = icmp sge i32 %261, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %260
  store i32 0, i32* %3, align 4
  br label %297

271:                                              ; preds = %260, %252
  br label %293

272:                                              ; preds = %179
  %273 = load i32, i32* %6, align 4
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 4
  %278 = load i32, i32* %277, align 4
  %279 = icmp sge i32 %273, %278
  br i1 %279, label %280, label %291

280:                                              ; preds = %272
  %281 = load i32, i32* %9, align 4
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 0
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 4
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @expected_different(i32 95, i32 %286)
  %288 = sub nsw i32 %287, 1
  %289 = icmp sge i32 %281, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %280
  store i32 0, i32* %3, align 4
  br label %297

291:                                              ; preds = %280, %272
  br label %293

292:                                              ; preds = %179
  br label %293

293:                                              ; preds = %292, %291, %271, %251, %231
  %294 = load i32, i32* %7, align 4
  %295 = add nsw i32 %294, -1
  store i32 %295, i32* %7, align 4
  br label %176

296:                                              ; preds = %176
  store i32 1, i32* %3, align 4
  br label %297

297:                                              ; preds = %296, %290, %270, %250, %219, %200, %199, %96
  %298 = load i32, i32* %3, align 4
  ret i32 %298
}

declare dso_local i64 @isascii(i32) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i64 @islower(i32) #1

declare dso_local i64 @isupper(i32) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local i32 @strchr(i8*, i32) #1

declare dso_local i32 @expected_different(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
