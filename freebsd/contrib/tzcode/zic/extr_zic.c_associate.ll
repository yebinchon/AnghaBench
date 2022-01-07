; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tzcode/zic/extr_zic.c_associate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tzcode/zic/extr_zic.c_associate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rule = type { i32, i32, i32 }
%struct.zone = type { i32, i32, i32, i32, i32, i32, %struct.rule* }

@nrules = common dso_local global i32 0, align 4
@rules = common dso_local global %struct.rule* null, align 8
@rcomp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"same rule name in multiple files\00", align 1
@nzones = common dso_local global i32 0, align 4
@zones = common dso_local global %struct.zone* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"unruly zone\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"%s in ruleless zone\00", align 1
@errors = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @associate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @associate() #0 {
  %1 = alloca %struct.zone*, align 8
  %2 = alloca %struct.rule*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @nrules, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %154

9:                                                ; preds = %0
  %10 = load %struct.rule*, %struct.rule** @rules, align 8
  %11 = bitcast %struct.rule* %10 to i8*
  %12 = load i32, i32* @nrules, align 4
  %13 = sext i32 %12 to i64
  %14 = load i32, i32* @rcomp, align 4
  %15 = call i32 @qsort(i8* %11, i64 %13, i64 12, i32 %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %150, %9
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @nrules, align 4
  %19 = sub nsw i32 %18, 1
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %153

21:                                               ; preds = %16
  %22 = load %struct.rule*, %struct.rule** @rules, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.rule, %struct.rule* %22, i64 %24
  %26 = getelementptr inbounds %struct.rule, %struct.rule* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rule*, %struct.rule** @rules, align 8
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.rule, %struct.rule* %28, i64 %31
  %33 = getelementptr inbounds %struct.rule, %struct.rule* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @strcmp(i32 %27, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  br label %150

38:                                               ; preds = %21
  %39 = load %struct.rule*, %struct.rule** @rules, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.rule, %struct.rule* %39, i64 %41
  %43 = getelementptr inbounds %struct.rule, %struct.rule* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rule*, %struct.rule** @rules, align 8
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.rule, %struct.rule* %45, i64 %48
  %50 = getelementptr inbounds %struct.rule, %struct.rule* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @strcmp(i32 %44, i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %38
  br label %150

55:                                               ; preds = %38
  %56 = load %struct.rule*, %struct.rule** @rules, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.rule, %struct.rule* %56, i64 %58
  %60 = getelementptr inbounds %struct.rule, %struct.rule* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.rule*, %struct.rule** @rules, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.rule, %struct.rule* %62, i64 %64
  %66 = getelementptr inbounds %struct.rule, %struct.rule* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @eat(i32 %61, i32 %67)
  %69 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %70 = call i32 @warning(i32 %69)
  %71 = load %struct.rule*, %struct.rule** @rules, align 8
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.rule, %struct.rule* %71, i64 %74
  %76 = getelementptr inbounds %struct.rule, %struct.rule* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.rule*, %struct.rule** @rules, align 8
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.rule, %struct.rule* %78, i64 %81
  %83 = getelementptr inbounds %struct.rule, %struct.rule* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @eat(i32 %77, i32 %84)
  %86 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %87 = call i32 @warning(i32 %86)
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 2
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %144, %55
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @nrules, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %147

94:                                               ; preds = %90
  %95 = load %struct.rule*, %struct.rule** @rules, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.rule, %struct.rule* %95, i64 %97
  %99 = getelementptr inbounds %struct.rule, %struct.rule* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.rule*, %struct.rule** @rules, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.rule, %struct.rule* %101, i64 %103
  %105 = getelementptr inbounds %struct.rule, %struct.rule* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @strcmp(i32 %100, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %94
  br label %147

110:                                              ; preds = %94
  %111 = load %struct.rule*, %struct.rule** @rules, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.rule, %struct.rule* %111, i64 %113
  %115 = getelementptr inbounds %struct.rule, %struct.rule* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.rule*, %struct.rule** @rules, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.rule, %struct.rule* %117, i64 %119
  %121 = getelementptr inbounds %struct.rule, %struct.rule* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @strcmp(i32 %116, i32 %122)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %110
  br label %144

126:                                              ; preds = %110
  %127 = load %struct.rule*, %struct.rule** @rules, align 8
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.rule, %struct.rule* %127, i64 %130
  %132 = getelementptr inbounds %struct.rule, %struct.rule* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.rule*, %struct.rule** @rules, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.rule, %struct.rule* %134, i64 %136
  %138 = getelementptr inbounds %struct.rule, %struct.rule* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @strcmp(i32 %133, i32 %139)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %126
  br label %144

143:                                              ; preds = %126
  br label %147

144:                                              ; preds = %142, %125
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %6, align 4
  br label %90

147:                                              ; preds = %143, %109, %90
  %148 = load i32, i32* %6, align 4
  %149 = sub nsw i32 %148, 1
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %147, %54, %37
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  br label %16

153:                                              ; preds = %16
  br label %154

154:                                              ; preds = %153, %0
  store i32 0, i32* %5, align 4
  br label %155

155:                                              ; preds = %168, %154
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* @nzones, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %171

159:                                              ; preds = %155
  %160 = load %struct.zone*, %struct.zone** @zones, align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.zone, %struct.zone* %160, i64 %162
  store %struct.zone* %163, %struct.zone** %1, align 8
  %164 = load %struct.zone*, %struct.zone** %1, align 8
  %165 = getelementptr inbounds %struct.zone, %struct.zone* %164, i32 0, i32 6
  store %struct.rule* null, %struct.rule** %165, align 8
  %166 = load %struct.zone*, %struct.zone** %1, align 8
  %167 = getelementptr inbounds %struct.zone, %struct.zone* %166, i32 0, i32 0
  store i32 0, i32* %167, align 8
  br label %168

168:                                              ; preds = %159
  %169 = load i32, i32* %5, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %5, align 4
  br label %155

171:                                              ; preds = %155
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %236, %171
  %173 = load i32, i32* %3, align 4
  %174 = load i32, i32* @nrules, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %238

176:                                              ; preds = %172
  %177 = load %struct.rule*, %struct.rule** @rules, align 8
  %178 = load i32, i32* %3, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.rule, %struct.rule* %177, i64 %179
  store %struct.rule* %180, %struct.rule** %2, align 8
  %181 = load i32, i32* %3, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %201, %176
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* @nrules, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %204

187:                                              ; preds = %183
  %188 = load %struct.rule*, %struct.rule** %2, align 8
  %189 = getelementptr inbounds %struct.rule, %struct.rule* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.rule*, %struct.rule** @rules, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.rule, %struct.rule* %191, i64 %193
  %195 = getelementptr inbounds %struct.rule, %struct.rule* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i64 @strcmp(i32 %190, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %187
  br label %204

200:                                              ; preds = %187
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %4, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %4, align 4
  br label %183

204:                                              ; preds = %199, %183
  store i32 0, i32* %5, align 4
  br label %205

205:                                              ; preds = %232, %204
  %206 = load i32, i32* %5, align 4
  %207 = load i32, i32* @nzones, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %235

209:                                              ; preds = %205
  %210 = load %struct.zone*, %struct.zone** @zones, align 8
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.zone, %struct.zone* %210, i64 %212
  store %struct.zone* %213, %struct.zone** %1, align 8
  %214 = load %struct.zone*, %struct.zone** %1, align 8
  %215 = getelementptr inbounds %struct.zone, %struct.zone* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.rule*, %struct.rule** %2, align 8
  %218 = getelementptr inbounds %struct.rule, %struct.rule* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i64 @strcmp(i32 %216, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %209
  br label %232

223:                                              ; preds = %209
  %224 = load %struct.rule*, %struct.rule** %2, align 8
  %225 = load %struct.zone*, %struct.zone** %1, align 8
  %226 = getelementptr inbounds %struct.zone, %struct.zone* %225, i32 0, i32 6
  store %struct.rule* %224, %struct.rule** %226, align 8
  %227 = load i32, i32* %4, align 4
  %228 = load i32, i32* %3, align 4
  %229 = sub nsw i32 %227, %228
  %230 = load %struct.zone*, %struct.zone** %1, align 8
  %231 = getelementptr inbounds %struct.zone, %struct.zone* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 8
  br label %232

232:                                              ; preds = %223, %222
  %233 = load i32, i32* %5, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %5, align 4
  br label %205

235:                                              ; preds = %205
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %4, align 4
  store i32 %237, i32* %3, align 4
  br label %172

238:                                              ; preds = %172
  store i32 0, i32* %5, align 4
  br label %239

239:                                              ; preds = %278, %238
  %240 = load i32, i32* %5, align 4
  %241 = load i32, i32* @nzones, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %281

243:                                              ; preds = %239
  %244 = load %struct.zone*, %struct.zone** @zones, align 8
  %245 = load i32, i32* %5, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.zone, %struct.zone* %244, i64 %246
  store %struct.zone* %247, %struct.zone** %1, align 8
  %248 = load %struct.zone*, %struct.zone** %1, align 8
  %249 = getelementptr inbounds %struct.zone, %struct.zone* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %277

252:                                              ; preds = %243
  %253 = load %struct.zone*, %struct.zone** %1, align 8
  %254 = getelementptr inbounds %struct.zone, %struct.zone* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.zone*, %struct.zone** %1, align 8
  %257 = getelementptr inbounds %struct.zone, %struct.zone* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @eat(i32 %255, i32 %258)
  %260 = load %struct.zone*, %struct.zone** %1, align 8
  %261 = getelementptr inbounds %struct.zone, %struct.zone* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %264 = load i32, i32* @TRUE, align 4
  %265 = call i32 @gethms(i32 %262, i32 %263, i32 %264)
  %266 = load %struct.zone*, %struct.zone** %1, align 8
  %267 = getelementptr inbounds %struct.zone, %struct.zone* %266, i32 0, i32 3
  store i32 %265, i32* %267, align 4
  %268 = load %struct.zone*, %struct.zone** %1, align 8
  %269 = getelementptr inbounds %struct.zone, %struct.zone* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = call i64 @strchr(i32 %270, i8 signext 37)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %252
  %274 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %275 = call i32 @error(i32 %274)
  br label %276

276:                                              ; preds = %273, %252
  br label %277

277:                                              ; preds = %276, %243
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %5, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %5, align 4
  br label %239

281:                                              ; preds = %239
  %282 = load i64, i64* @errors, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %281
  %285 = load i32, i32* @EXIT_FAILURE, align 4
  %286 = call i32 @exit(i32 %285) #3
  unreachable

287:                                              ; preds = %281
  ret void
}

declare dso_local i32 @qsort(i8*, i64, i64, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @eat(i32, i32) #1

declare dso_local i32 @warning(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @gethms(i32, i32, i32) #1

declare dso_local i64 @strchr(i32, i8 signext) #1

declare dso_local i32 @error(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
