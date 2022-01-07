; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_determinant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_determinant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32***, i32*)* @determinant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @determinant(i32* %0, i32 %1, i32 %2, i32*** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32***, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32*** %3, i32**** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 1, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %44

19:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %40, %19
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load i32***, i32**** %10, align 8
  %26 = getelementptr inbounds i32**, i32*** %25, i64 0
  %27 = load i32**, i32*** %26, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, %33
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %24
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %20

43:                                               ; preds = %20
  br label %277

44:                                               ; preds = %5
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %186

47:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %113, %47
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %116

52:                                               ; preds = %48
  %53 = load i32***, i32**** %10, align 8
  %54 = getelementptr inbounds i32**, i32*** %53, i64 0
  %55 = load i32**, i32*** %54, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %113

64:                                               ; preds = %52
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %109, %64
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %112

69:                                               ; preds = %65
  %70 = load i32***, i32**** %10, align 8
  %71 = getelementptr inbounds i32**, i32*** %70, i64 1
  %72 = load i32**, i32*** %71, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %109

81:                                               ; preds = %69
  %82 = load i32***, i32**** %10, align 8
  %83 = getelementptr inbounds i32**, i32*** %82, i64 0
  %84 = load i32**, i32*** %83, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32***, i32**** %10, align 8
  %92 = getelementptr inbounds i32**, i32*** %91, i64 1
  %93 = load i32**, i32*** %92, align 8
  %94 = getelementptr inbounds i32*, i32** %93, i64 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %90, %99
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, %100
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %81, %80
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  br label %65

112:                                              ; preds = %65
  br label %113

113:                                              ; preds = %112, %63
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %48

116:                                              ; preds = %48
  store i32 0, i32* %12, align 4
  br label %117

117:                                              ; preds = %182, %116
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp sle i32 %118, %119
  br i1 %120, label %121, label %185

121:                                              ; preds = %117
  %122 = load i32***, i32**** %10, align 8
  %123 = getelementptr inbounds i32**, i32*** %122, i64 0
  %124 = load i32**, i32*** %123, align 8
  %125 = getelementptr inbounds i32*, i32** %124, i64 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %121
  br label %182

133:                                              ; preds = %121
  store i32 0, i32* %13, align 4
  br label %134

134:                                              ; preds = %178, %133
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp sle i32 %135, %136
  br i1 %137, label %138, label %181

138:                                              ; preds = %134
  %139 = load i32***, i32**** %10, align 8
  %140 = getelementptr inbounds i32**, i32*** %139, i64 1
  %141 = load i32**, i32*** %140, align 8
  %142 = getelementptr inbounds i32*, i32** %141, i64 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %138
  br label %178

150:                                              ; preds = %138
  %151 = load i32***, i32**** %10, align 8
  %152 = getelementptr inbounds i32**, i32*** %151, i64 0
  %153 = load i32**, i32*** %152, align 8
  %154 = getelementptr inbounds i32*, i32** %153, i64 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32***, i32**** %10, align 8
  %161 = getelementptr inbounds i32**, i32*** %160, i64 1
  %162 = load i32**, i32*** %161, align 8
  %163 = getelementptr inbounds i32*, i32** %162, i64 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 %159, %168
  %170 = load i32*, i32** %11, align 8
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %170, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 %176, %169
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %150, %149
  %179 = load i32, i32* %13, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %13, align 4
  br label %134

181:                                              ; preds = %134
  br label %182

182:                                              ; preds = %181, %132
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %12, align 4
  br label %117

185:                                              ; preds = %117
  br label %276

186:                                              ; preds = %44
  store i32 0, i32* %12, align 4
  br label %187

187:                                              ; preds = %272, %186
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %275

191:                                              ; preds = %187
  %192 = load i32*, i32** %7, align 8
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* %12, align 4
  %196 = load i32***, i32**** %10, align 8
  %197 = call i64 @sub_determinant(i32* %192, i32 %193, i32 %194, i32 0, i32 %195, i32*** %196, i32** %15)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %191
  store i32 -1, i32* %6, align 4
  br label %278

200:                                              ; preds = %191
  store i32 0, i32* %13, align 4
  br label %201

201:                                              ; preds = %264, %200
  %202 = load i32, i32* %13, align 4
  %203 = load i32, i32* %8, align 4
  %204 = icmp sle i32 %202, %203
  br i1 %204, label %205, label %267

205:                                              ; preds = %201
  %206 = load i32***, i32**** %10, align 8
  %207 = getelementptr inbounds i32**, i32*** %206, i64 0
  %208 = load i32**, i32*** %207, align 8
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32*, i32** %208, i64 %210
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %13, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %205
  br label %264

219:                                              ; preds = %205
  store i32 0, i32* %14, align 4
  br label %220

220:                                              ; preds = %260, %219
  %221 = load i32, i32* %14, align 4
  %222 = load i32, i32* %8, align 4
  %223 = icmp sle i32 %221, %222
  br i1 %223, label %224, label %263

224:                                              ; preds = %220
  %225 = load i32*, i32** %15, align 8
  %226 = load i32, i32* %14, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %224
  br label %260

232:                                              ; preds = %224
  %233 = load i32, i32* %16, align 4
  %234 = load i32***, i32**** %10, align 8
  %235 = getelementptr inbounds i32**, i32*** %234, i64 0
  %236 = load i32**, i32*** %235, align 8
  %237 = load i32, i32* %12, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32*, i32** %236, i64 %238
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %13, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = mul nsw i32 %233, %244
  %246 = load i32*, i32** %15, align 8
  %247 = load i32, i32* %14, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = mul nsw i32 %245, %250
  %252 = load i32*, i32** %11, align 8
  %253 = load i32, i32* %13, align 4
  %254 = load i32, i32* %14, align 4
  %255 = add nsw i32 %253, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %252, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = add nsw i32 %258, %251
  store i32 %259, i32* %257, align 4
  br label %260

260:                                              ; preds = %232, %231
  %261 = load i32, i32* %14, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %14, align 4
  br label %220

263:                                              ; preds = %220
  br label %264

264:                                              ; preds = %263, %218
  %265 = load i32, i32* %13, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %13, align 4
  br label %201

267:                                              ; preds = %201
  %268 = load i32*, i32** %15, align 8
  %269 = call i32 @free(i32* %268)
  %270 = load i32, i32* %16, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %16, align 4
  br label %272

272:                                              ; preds = %267
  %273 = load i32, i32* %12, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %12, align 4
  br label %187

275:                                              ; preds = %187
  br label %276

276:                                              ; preds = %275, %185
  br label %277

277:                                              ; preds = %276, %43
  store i32 0, i32* %6, align 4
  br label %278

278:                                              ; preds = %277, %199
  %279 = load i32, i32* %6, align 4
  ret i32 %279
}

declare dso_local i64 @sub_determinant(i32*, i32, i32, i32, i32, i32***, i32**) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
