; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_filecomplete.c_escape_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_filecomplete.c_escape_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i8*, i32, i8* (i8*)*)* @escape_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @escape_filename(%struct.TYPE_5__* %0, i8* %1, i32 %2, i8* (i8*)* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8* (i8*)*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* (i8*)* %3, i8* (i8*)** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %19, align 8
  store i8* null, i8** %20, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %298

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %67, %28
  %30 = load i8*, i8** %19, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %30, %34
  br i1 %35, label %36, label %70

36:                                               ; preds = %29
  %37 = load i8*, i8** %19, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 39
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i64, i64* %17, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %16, align 8
  %47 = icmp ne i64 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %16, align 8
  br label %67

51:                                               ; preds = %42, %36
  %52 = load i8*, i8** %19, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 34
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load i64, i64* %16, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %17, align 8
  %62 = icmp ne i64 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %17, align 8
  br label %66

66:                                               ; preds = %60, %57, %51
  br label %67

67:                                               ; preds = %66, %45
  %68 = load i8*, i8** %19, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %19, align 8
  br label %29

70:                                               ; preds = %29
  %71 = load i8*, i8** %7, align 8
  store i8* %71, i8** %14, align 8
  br label %72

72:                                               ; preds = %112, %70
  %73 = load i8*, i8** %14, align 8
  %74 = load i8, i8* %73, align 1
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %76, label %117

76:                                               ; preds = %72
  %77 = load i8*, i8** %14, align 8
  %78 = load i8, i8* %77, align 1
  store i8 %78, i8* %15, align 1
  %79 = load i64, i64* %16, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load i8, i8* %15, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 39
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i64, i64* %11, align 8
  %87 = add i64 %86, 3
  store i64 %87, i64* %11, align 8
  br label %112

88:                                               ; preds = %81, %76
  %89 = load i64, i64* %17, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i8, i8* %15, align 1
  %93 = call i64 @needs_dquote_escaping(i8 signext %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i64, i64* %11, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %11, align 8
  br label %112

98:                                               ; preds = %91, %88
  %99 = load i64, i64* %16, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %98
  %102 = load i64, i64* %17, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %101
  %105 = load i8, i8* %15, align 1
  %106 = call i64 @needs_escaping(i8 signext %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i64, i64* %11, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %11, align 8
  br label %111

111:                                              ; preds = %108, %104, %101, %98
  br label %112

112:                                              ; preds = %111, %95, %85
  %113 = load i8*, i8** %14, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %14, align 8
  %115 = load i64, i64* %10, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %10, align 8
  br label %72

117:                                              ; preds = %72
  %118 = load i64, i64* %10, align 8
  %119 = load i64, i64* %11, align 8
  %120 = add i64 %118, %119
  %121 = add i64 %120, 1
  store i64 %121, i64* %13, align 8
  %122 = load i64, i64* %16, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %117
  %125 = load i64, i64* %17, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124, %117
  %128 = load i64, i64* %13, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %13, align 8
  br label %130

130:                                              ; preds = %127, %124
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load i8* (i8*)*, i8* (i8*)** %9, align 8
  %135 = icmp ne i8* (i8*)* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i64, i64* %13, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %13, align 8
  br label %139

139:                                              ; preds = %136, %133, %130
  %140 = load i64, i64* %13, align 8
  %141 = call i8* @el_malloc(i64 %140)
  store i8* %141, i8** %18, align 8
  %142 = icmp eq i8* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  store i8* null, i8** %5, align 8
  br label %298

144:                                              ; preds = %139
  %145 = load i8*, i8** %7, align 8
  store i8* %145, i8** %14, align 8
  br label %146

146:                                              ; preds = %218, %144
  %147 = load i8*, i8** %14, align 8
  %148 = load i8, i8* %147, align 1
  %149 = icmp ne i8 %148, 0
  br i1 %149, label %150, label %221

150:                                              ; preds = %146
  %151 = load i8*, i8** %14, align 8
  %152 = load i8, i8* %151, align 1
  store i8 %152, i8* %15, align 1
  %153 = load i8, i8* %15, align 1
  %154 = call i64 @needs_escaping(i8 signext %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %150
  %157 = load i8, i8* %15, align 1
  %158 = load i8*, i8** %18, align 8
  %159 = load i64, i64* %12, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %12, align 8
  %161 = getelementptr inbounds i8, i8* %158, i64 %159
  store i8 %157, i8* %161, align 1
  br label %218

162:                                              ; preds = %150
  %163 = load i8, i8* %15, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 39
  br i1 %165, label %166, label %186

166:                                              ; preds = %162
  %167 = load i64, i64* %16, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %186

169:                                              ; preds = %166
  %170 = load i8*, i8** %18, align 8
  %171 = load i64, i64* %12, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %12, align 8
  %173 = getelementptr inbounds i8, i8* %170, i64 %171
  store i8 39, i8* %173, align 1
  %174 = load i8*, i8** %18, align 8
  %175 = load i64, i64* %12, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %12, align 8
  %177 = getelementptr inbounds i8, i8* %174, i64 %175
  store i8 92, i8* %177, align 1
  %178 = load i8*, i8** %18, align 8
  %179 = load i64, i64* %12, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %12, align 8
  %181 = getelementptr inbounds i8, i8* %178, i64 %179
  store i8 39, i8* %181, align 1
  %182 = load i8*, i8** %18, align 8
  %183 = load i64, i64* %12, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %12, align 8
  %185 = getelementptr inbounds i8, i8* %182, i64 %183
  store i8 39, i8* %185, align 1
  br label %218

186:                                              ; preds = %166, %162
  %187 = load i64, i64* %16, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %186
  %190 = load i8, i8* %15, align 1
  %191 = load i8*, i8** %18, align 8
  %192 = load i64, i64* %12, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %12, align 8
  %194 = getelementptr inbounds i8, i8* %191, i64 %192
  store i8 %190, i8* %194, align 1
  br label %218

195:                                              ; preds = %186
  %196 = load i64, i64* %17, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %195
  %199 = load i8, i8* %15, align 1
  %200 = call i64 @needs_dquote_escaping(i8 signext %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %208, label %202

202:                                              ; preds = %198
  %203 = load i8, i8* %15, align 1
  %204 = load i8*, i8** %18, align 8
  %205 = load i64, i64* %12, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %12, align 8
  %207 = getelementptr inbounds i8, i8* %204, i64 %205
  store i8 %203, i8* %207, align 1
  br label %218

208:                                              ; preds = %198, %195
  %209 = load i8*, i8** %18, align 8
  %210 = load i64, i64* %12, align 8
  %211 = add i64 %210, 1
  store i64 %211, i64* %12, align 8
  %212 = getelementptr inbounds i8, i8* %209, i64 %210
  store i8 92, i8* %212, align 1
  %213 = load i8, i8* %15, align 1
  %214 = load i8*, i8** %18, align 8
  %215 = load i64, i64* %12, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %12, align 8
  %217 = getelementptr inbounds i8, i8* %214, i64 %215
  store i8 %213, i8* %217, align 1
  br label %218

218:                                              ; preds = %208, %202, %189, %169, %156
  %219 = load i8*, i8** %14, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %14, align 8
  br label %146

221:                                              ; preds = %146
  %222 = load i32, i32* %8, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %263

224:                                              ; preds = %221
  %225 = load i8* (i8*)*, i8* (i8*)** %9, align 8
  %226 = icmp ne i8* (i8*)* %225, null
  br i1 %226, label %227, label %263

227:                                              ; preds = %224
  %228 = load i8*, i8** %18, align 8
  %229 = load i64, i64* %12, align 8
  %230 = getelementptr inbounds i8, i8* %228, i64 %229
  store i8 0, i8* %230, align 1
  %231 = load i8* (i8*)*, i8* (i8*)** %9, align 8
  %232 = load i8*, i8** %18, align 8
  %233 = call i8* %231(i8* %232)
  store i8* %233, i8** %20, align 8
  %234 = load i8*, i8** %20, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 0
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp eq i32 %237, 32
  br i1 %238, label %239, label %254

239:                                              ; preds = %227
  %240 = load i64, i64* %16, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %253, label %242

242:                                              ; preds = %239
  %243 = load i64, i64* %17, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %253, label %245

245:                                              ; preds = %242
  %246 = load i8*, i8** %20, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 0
  %248 = load i8, i8* %247, align 1
  %249 = load i8*, i8** %18, align 8
  %250 = load i64, i64* %12, align 8
  %251 = add i64 %250, 1
  store i64 %251, i64* %12, align 8
  %252 = getelementptr inbounds i8, i8* %249, i64 %250
  store i8 %248, i8* %252, align 1
  br label %253

253:                                              ; preds = %245, %242, %239
  br label %262

254:                                              ; preds = %227
  %255 = load i8*, i8** %20, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 0
  %257 = load i8, i8* %256, align 1
  %258 = load i8*, i8** %18, align 8
  %259 = load i64, i64* %12, align 8
  %260 = add i64 %259, 1
  store i64 %260, i64* %12, align 8
  %261 = getelementptr inbounds i8, i8* %258, i64 %259
  store i8 %257, i8* %261, align 1
  br label %262

262:                                              ; preds = %254, %253
  br label %263

263:                                              ; preds = %262, %224, %221
  %264 = load i32, i32* %8, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %293

266:                                              ; preds = %263
  %267 = load i8*, i8** %20, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %269, label %293

269:                                              ; preds = %266
  %270 = load i8*, i8** %20, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 0
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %272 to i32
  %274 = icmp eq i32 %273, 32
  br i1 %274, label %275, label %293

275:                                              ; preds = %269
  %276 = load i64, i64* %16, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %275
  %279 = load i8*, i8** %18, align 8
  %280 = load i64, i64* %12, align 8
  %281 = add i64 %280, 1
  store i64 %281, i64* %12, align 8
  %282 = getelementptr inbounds i8, i8* %279, i64 %280
  store i8 39, i8* %282, align 1
  br label %292

283:                                              ; preds = %275
  %284 = load i64, i64* %17, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %291

286:                                              ; preds = %283
  %287 = load i8*, i8** %18, align 8
  %288 = load i64, i64* %12, align 8
  %289 = add i64 %288, 1
  store i64 %289, i64* %12, align 8
  %290 = getelementptr inbounds i8, i8* %287, i64 %288
  store i8 34, i8* %290, align 1
  br label %291

291:                                              ; preds = %286, %283
  br label %292

292:                                              ; preds = %291, %278
  br label %293

293:                                              ; preds = %292, %269, %266, %263
  %294 = load i8*, i8** %18, align 8
  %295 = load i64, i64* %12, align 8
  %296 = getelementptr inbounds i8, i8* %294, i64 %295
  store i8 0, i8* %296, align 1
  %297 = load i8*, i8** %18, align 8
  store i8* %297, i8** %5, align 8
  br label %298

298:                                              ; preds = %293, %143, %27
  %299 = load i8*, i8** %5, align 8
  ret i8* %299
}

declare dso_local i64 @needs_dquote_escaping(i8 signext) #1

declare dso_local i64 @needs_escaping(i8 signext) #1

declare dso_local i8* @el_malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
