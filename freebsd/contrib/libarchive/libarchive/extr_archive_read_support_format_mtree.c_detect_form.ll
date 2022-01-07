; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_detect_form.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_detect_form.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }

@MAX_BID_ENTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"/set\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"/unset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i32*)* @detect_form to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_form(%struct.archive_read* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
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
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %19, %2
  %22 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %23 = call i8* @__archive_read_ahead(%struct.archive_read* %22, i32 1, i32* %7)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %289

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %260, %127, %84, %27
  %30 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %31 = call i32 @next_line(%struct.archive_read* %30, i8** %6, i32* %7, i32* %8, i32* %11)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %29
  br label %268

38:                                               ; preds = %34
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %93, label %41

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %59, %41
  %43 = load i32, i32* %10, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i8*, i8** %6, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 32
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 9
  br label %55

55:                                               ; preds = %50, %45
  %56 = phi i1 [ true, %45 ], [ %54, %50 ]
  br label %57

57:                                               ; preds = %55, %42
  %58 = phi i1 [ false, %42 ], [ %56, %55 ]
  br i1 %58, label %59, label %66

59:                                               ; preds = %57
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %10, align 4
  br label %42

66:                                               ; preds = %57
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 35
  br i1 %71, label %84, label %72

72:                                               ; preds = %66
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 10
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 13
  br i1 %83, label %84, label %92

84:                                               ; preds = %78, %72, %66
  %85 = load i32, i32* %10, align 4
  %86 = load i8*, i8** %6, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %6, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %7, align 4
  %91 = sub nsw i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %29

92:                                               ; preds = %78
  br label %135

93:                                               ; preds = %38
  %94 = load i8*, i8** %6, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i64 @bid_keyword_list(i8* %94, i32 %95, i32 0, i32 0)
  %97 = icmp sle i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %268

99:                                               ; preds = %93
  %100 = load i32, i32* %13, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %102, %99
  %107 = load i8*, i8** %6, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %11, align 4
  %110 = sub nsw i32 %108, %109
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %107, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 92
  br i1 %116, label %117, label %127

117:                                              ; preds = %106
  %118 = load i32, i32* %13, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* @MAX_BID_ENTRY, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %268

126:                                              ; preds = %120, %117
  store i32 0, i32* %13, align 4
  br label %127

127:                                              ; preds = %126, %106
  %128 = load i32, i32* %10, align 4
  %129 = load i8*, i8** %6, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8* %131, i8** %6, align 8
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %7, align 4
  %134 = sub nsw i32 %133, %132
  store i32 %134, i32* %7, align 4
  br label %29

135:                                              ; preds = %92
  %136 = load i8*, i8** %6, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 47
  br i1 %140, label %141, label %201

141:                                              ; preds = %135
  %142 = load i8*, i8** %6, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @bid_entry(i8* %142, i32 %143, i32 %144, i32* %15)
  store i32 %145, i32* %16, align 4
  %146 = load i32, i32* %16, align 4
  %147 = icmp sge i32 %146, 0
  br i1 %147, label %148, label %199

148:                                              ; preds = %141
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %14, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %148
  %155 = load i32, i32* %15, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  store i32 1, i32* %14, align 4
  br label %163

158:                                              ; preds = %154
  %159 = load i32, i32* %16, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 -1, i32* %14, align 4
  br label %162

162:                                              ; preds = %161, %158
  br label %163

163:                                              ; preds = %162, %157
  br label %176

164:                                              ; preds = %148
  %165 = load i32, i32* %14, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %175

167:                                              ; preds = %164
  %168 = load i32, i32* %15, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %16, align 4
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  br label %268

174:                                              ; preds = %170, %167
  br label %175

175:                                              ; preds = %174, %164
  br label %176

176:                                              ; preds = %175, %163
  %177 = load i32, i32* %15, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %191, label %179

179:                                              ; preds = %176
  %180 = load i8*, i8** %6, align 8
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %11, align 4
  %183 = sub nsw i32 %181, %182
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %180, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 92
  br i1 %189, label %190, label %191

190:                                              ; preds = %179
  store i32 1, i32* %13, align 4
  br label %198

191:                                              ; preds = %179, %176
  %192 = load i32, i32* %12, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %12, align 4
  %194 = load i32, i32* @MAX_BID_ENTRY, align 4
  %195 = icmp sge i32 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %191
  br label %268

197:                                              ; preds = %191
  br label %198

198:                                              ; preds = %197, %190
  br label %200

199:                                              ; preds = %141
  br label %268

200:                                              ; preds = %198
  br label %260

201:                                              ; preds = %135
  %202 = load i32, i32* %10, align 4
  %203 = icmp sgt i32 %202, 4
  br i1 %203, label %204, label %229

204:                                              ; preds = %201
  %205 = load i8*, i8** %6, align 8
  %206 = call i64 @strncmp(i8* %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %229

208:                                              ; preds = %204
  %209 = load i8*, i8** %6, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 4
  %211 = load i32, i32* %10, align 4
  %212 = sub nsw i32 %211, 4
  %213 = call i64 @bid_keyword_list(i8* %210, i32 %212, i32 0, i32 0)
  %214 = icmp sle i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %208
  br label %268

216:                                              ; preds = %208
  %217 = load i8*, i8** %6, align 8
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* %11, align 4
  %220 = sub nsw i32 %218, %219
  %221 = sub nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %217, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 92
  br i1 %226, label %227, label %228

227:                                              ; preds = %216
  store i32 2, i32* %13, align 4
  br label %228

228:                                              ; preds = %227, %216
  br label %259

229:                                              ; preds = %204, %201
  %230 = load i32, i32* %10, align 4
  %231 = icmp sgt i32 %230, 6
  br i1 %231, label %232, label %257

232:                                              ; preds = %229
  %233 = load i8*, i8** %6, align 8
  %234 = call i64 @strncmp(i8* %233, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %257

236:                                              ; preds = %232
  %237 = load i8*, i8** %6, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 6
  %239 = load i32, i32* %10, align 4
  %240 = sub nsw i32 %239, 6
  %241 = call i64 @bid_keyword_list(i8* %238, i32 %240, i32 1, i32 0)
  %242 = icmp sle i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  br label %268

244:                                              ; preds = %236
  %245 = load i8*, i8** %6, align 8
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* %11, align 4
  %248 = sub nsw i32 %246, %247
  %249 = sub nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %245, i64 %250
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp eq i32 %253, 92
  br i1 %254, label %255, label %256

255:                                              ; preds = %244
  store i32 2, i32* %13, align 4
  br label %256

256:                                              ; preds = %255, %244
  br label %258

257:                                              ; preds = %232, %229
  br label %268

258:                                              ; preds = %256
  br label %259

259:                                              ; preds = %258, %228
  br label %260

260:                                              ; preds = %259, %200
  %261 = load i32, i32* %10, align 4
  %262 = load i8*, i8** %6, align 8
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds i8, i8* %262, i64 %263
  store i8* %264, i8** %6, align 8
  %265 = load i32, i32* %10, align 4
  %266 = load i32, i32* %7, align 4
  %267 = sub nsw i32 %266, %265
  store i32 %267, i32* %7, align 4
  br label %29

268:                                              ; preds = %257, %243, %215, %199, %196, %173, %125, %98, %37
  %269 = load i32, i32* %12, align 4
  %270 = load i32, i32* @MAX_BID_ENTRY, align 4
  %271 = icmp sge i32 %269, %270
  br i1 %271, label %278, label %272

272:                                              ; preds = %268
  %273 = load i32, i32* %12, align 4
  %274 = icmp sgt i32 %273, 0
  br i1 %274, label %275, label %288

275:                                              ; preds = %272
  %276 = load i32, i32* %10, align 4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %288

278:                                              ; preds = %275, %268
  %279 = load i32*, i32** %5, align 8
  %280 = icmp ne i32* %279, null
  br i1 %280, label %281, label %287

281:                                              ; preds = %278
  %282 = load i32, i32* %14, align 4
  %283 = icmp eq i32 %282, 1
  br i1 %283, label %284, label %286

284:                                              ; preds = %281
  %285 = load i32*, i32** %5, align 8
  store i32 1, i32* %285, align 4
  br label %286

286:                                              ; preds = %284, %281
  br label %287

287:                                              ; preds = %286, %278
  store i32 32, i32* %3, align 4
  br label %289

288:                                              ; preds = %275, %272
  store i32 0, i32* %3, align 4
  br label %289

289:                                              ; preds = %288, %287, %26
  %290 = load i32, i32* %3, align 4
  ret i32 %290
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i32 @next_line(%struct.archive_read*, i8**, i32*, i32*, i32*) #1

declare dso_local i64 @bid_keyword_list(i8*, i32, i32, i32) #1

declare dso_local i32 @bid_entry(i8*, i32, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
