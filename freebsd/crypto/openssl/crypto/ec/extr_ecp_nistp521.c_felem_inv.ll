; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp521.c_felem_inv.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp521.c_felem_inv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @felem_inv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @felem_inv(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @felem_square(i32 %11, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @felem_reduce(i32 %14, i32 %15)
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @felem_mul(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @felem_reduce(i32 %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @felem_assign(i32 %24, i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @felem_square(i32 %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @felem_reduce(i32 %30, i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @felem_mul(i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @felem_reduce(i32 %37, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @felem_square(i32 %40, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @felem_reduce(i32 %43, i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @felem_square(i32 %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @felem_reduce(i32 %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @felem_square(i32 %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @felem_reduce(i32 %55, i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @felem_mul(i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @felem_reduce(i32 %62, i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @felem_assign(i32 %65, i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @felem_square(i32 %68, i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @felem_reduce(i32 %71, i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @felem_square(i32 %74, i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @felem_reduce(i32 %77, i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @felem_square(i32 %80, i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @felem_reduce(i32 %83, i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @felem_square(i32 %86, i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @felem_reduce(i32 %89, i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @felem_assign(i32 %92, i32 %93)
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @felem_mul(i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @felem_reduce(i32 %99, i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @felem_square(i32 %102, i32 %103)
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @felem_reduce(i32 %105, i32 %106)
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @felem_mul(i32 %108, i32 %109, i32 %110)
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @felem_reduce(i32 %112, i32 %113)
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @felem_assign(i32 %115, i32 %116)
  store i32 0, i32* %10, align 4
  br label %118

118:                                              ; preds = %128, %2
  %119 = load i32, i32* %10, align 4
  %120 = icmp ult i32 %119, 8
  br i1 %120, label %121, label %131

121:                                              ; preds = %118
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @felem_square(i32 %122, i32 %123)
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @felem_reduce(i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %121
  %129 = load i32, i32* %10, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %118

131:                                              ; preds = %118
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @felem_mul(i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @felem_reduce(i32 %136, i32 %137)
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @felem_assign(i32 %139, i32 %140)
  store i32 0, i32* %10, align 4
  br label %142

142:                                              ; preds = %152, %131
  %143 = load i32, i32* %10, align 4
  %144 = icmp ult i32 %143, 16
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @felem_square(i32 %146, i32 %147)
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @felem_reduce(i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %145
  %153 = load i32, i32* %10, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %142

155:                                              ; preds = %142
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @felem_mul(i32 %156, i32 %157, i32 %158)
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @felem_reduce(i32 %160, i32 %161)
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @felem_assign(i32 %163, i32 %164)
  store i32 0, i32* %10, align 4
  br label %166

166:                                              ; preds = %176, %155
  %167 = load i32, i32* %10, align 4
  %168 = icmp ult i32 %167, 32
  br i1 %168, label %169, label %179

169:                                              ; preds = %166
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @felem_square(i32 %170, i32 %171)
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @felem_reduce(i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %169
  %177 = load i32, i32* %10, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %10, align 4
  br label %166

179:                                              ; preds = %166
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @felem_mul(i32 %180, i32 %181, i32 %182)
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @felem_reduce(i32 %184, i32 %185)
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @felem_assign(i32 %187, i32 %188)
  store i32 0, i32* %10, align 4
  br label %190

190:                                              ; preds = %200, %179
  %191 = load i32, i32* %10, align 4
  %192 = icmp ult i32 %191, 64
  br i1 %192, label %193, label %203

193:                                              ; preds = %190
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* %7, align 4
  %196 = call i32 @felem_square(i32 %194, i32 %195)
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* %9, align 4
  %199 = call i32 @felem_reduce(i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %193
  %201 = load i32, i32* %10, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %10, align 4
  br label %190

203:                                              ; preds = %190
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @felem_mul(i32 %204, i32 %205, i32 %206)
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @felem_reduce(i32 %208, i32 %209)
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @felem_assign(i32 %211, i32 %212)
  store i32 0, i32* %10, align 4
  br label %214

214:                                              ; preds = %224, %203
  %215 = load i32, i32* %10, align 4
  %216 = icmp ult i32 %215, 128
  br i1 %216, label %217, label %227

217:                                              ; preds = %214
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %7, align 4
  %220 = call i32 @felem_square(i32 %218, i32 %219)
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* %9, align 4
  %223 = call i32 @felem_reduce(i32 %221, i32 %222)
  br label %224

224:                                              ; preds = %217
  %225 = load i32, i32* %10, align 4
  %226 = add i32 %225, 1
  store i32 %226, i32* %10, align 4
  br label %214

227:                                              ; preds = %214
  %228 = load i32, i32* %9, align 4
  %229 = load i32, i32* %7, align 4
  %230 = load i32, i32* %6, align 4
  %231 = call i32 @felem_mul(i32 %228, i32 %229, i32 %230)
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* %9, align 4
  %234 = call i32 @felem_reduce(i32 %232, i32 %233)
  %235 = load i32, i32* %6, align 4
  %236 = load i32, i32* %7, align 4
  %237 = call i32 @felem_assign(i32 %235, i32 %236)
  store i32 0, i32* %10, align 4
  br label %238

238:                                              ; preds = %248, %227
  %239 = load i32, i32* %10, align 4
  %240 = icmp ult i32 %239, 256
  br i1 %240, label %241, label %251

241:                                              ; preds = %238
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* %7, align 4
  %244 = call i32 @felem_square(i32 %242, i32 %243)
  %245 = load i32, i32* %7, align 4
  %246 = load i32, i32* %9, align 4
  %247 = call i32 @felem_reduce(i32 %245, i32 %246)
  br label %248

248:                                              ; preds = %241
  %249 = load i32, i32* %10, align 4
  %250 = add i32 %249, 1
  store i32 %250, i32* %10, align 4
  br label %238

251:                                              ; preds = %238
  %252 = load i32, i32* %9, align 4
  %253 = load i32, i32* %7, align 4
  %254 = load i32, i32* %6, align 4
  %255 = call i32 @felem_mul(i32 %252, i32 %253, i32 %254)
  %256 = load i32, i32* %7, align 4
  %257 = load i32, i32* %9, align 4
  %258 = call i32 @felem_reduce(i32 %256, i32 %257)
  store i32 0, i32* %10, align 4
  br label %259

259:                                              ; preds = %269, %251
  %260 = load i32, i32* %10, align 4
  %261 = icmp ult i32 %260, 9
  br i1 %261, label %262, label %272

262:                                              ; preds = %259
  %263 = load i32, i32* %9, align 4
  %264 = load i32, i32* %7, align 4
  %265 = call i32 @felem_square(i32 %263, i32 %264)
  %266 = load i32, i32* %7, align 4
  %267 = load i32, i32* %9, align 4
  %268 = call i32 @felem_reduce(i32 %266, i32 %267)
  br label %269

269:                                              ; preds = %262
  %270 = load i32, i32* %10, align 4
  %271 = add i32 %270, 1
  store i32 %271, i32* %10, align 4
  br label %259

272:                                              ; preds = %259
  %273 = load i32, i32* %9, align 4
  %274 = load i32, i32* %7, align 4
  %275 = load i32, i32* %8, align 4
  %276 = call i32 @felem_mul(i32 %273, i32 %274, i32 %275)
  %277 = load i32, i32* %7, align 4
  %278 = load i32, i32* %9, align 4
  %279 = call i32 @felem_reduce(i32 %277, i32 %278)
  %280 = load i32, i32* %9, align 4
  %281 = load i32, i32* %7, align 4
  %282 = load i32, i32* %4, align 4
  %283 = call i32 @felem_mul(i32 %280, i32 %281, i32 %282)
  %284 = load i32, i32* %3, align 4
  %285 = load i32, i32* %9, align 4
  %286 = call i32 @felem_reduce(i32 %284, i32 %285)
  ret void
}

declare dso_local i32 @felem_square(i32, i32) #1

declare dso_local i32 @felem_reduce(i32, i32) #1

declare dso_local i32 @felem_mul(i32, i32, i32) #1

declare dso_local i32 @felem_assign(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
