; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_strtoimax.c_strtoimax_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_strtoimax.c_strtoimax_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTMAX_MIN = common dso_local global i32 0, align 4
@INTMAX_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strtoimax_l(i8* noalias %0, i8** noalias %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @FIX_LOCALE(i32 %16)
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %9, align 8
  br label %19

19:                                               ; preds = %23, %4
  %20 = load i8*, i8** %9, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %9, align 8
  %22 = load i8, i8* %20, align 1
  store i8 %22, i8* %11, align 1
  br label %23

23:                                               ; preds = %19
  %24 = load i8, i8* %11, align 1
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @isspace_l(i8 zeroext %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %19, label %28

28:                                               ; preds = %23
  %29 = load i8, i8* %11, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 45
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  store i32 1, i32* %13, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %9, align 8
  %35 = load i8, i8* %33, align 1
  store i8 %35, i8* %11, align 1
  br label %45

36:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  %37 = load i8, i8* %11, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 43
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %9, align 8
  %43 = load i8, i8* %41, align 1
  store i8 %43, i8* %11, align 1
  br label %44

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %44, %32
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 16
  br i1 %50, label %51, label %107

51:                                               ; preds = %48, %45
  %52 = load i8, i8* %11, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 48
  br i1 %54, label %55, label %107

55:                                               ; preds = %51
  %56 = load i8*, i8** %9, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 120
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %9, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 88
  br i1 %64, label %65, label %107

65:                                               ; preds = %60, %55
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp sge i32 %69, 48
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp sle i32 %75, 57
  br i1 %76, label %101, label %77

77:                                               ; preds = %71, %65
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp sge i32 %81, 65
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp sle i32 %87, 70
  br i1 %88, label %101, label %89

89:                                               ; preds = %83, %77
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp sge i32 %93, 97
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp sle i32 %99, 102
  br i1 %100, label %101, label %107

101:                                              ; preds = %95, %83, %71
  %102 = load i8*, i8** %9, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = load i8, i8* %103, align 1
  store i8 %104, i8* %11, align 1
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 2
  store i8* %106, i8** %9, align 8
  store i32 16, i32* %7, align 4
  br label %107

107:                                              ; preds = %101, %95, %89, %60, %51, %48
  %108 = load i32, i32* %7, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i8, i8* %11, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 48
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 8, i32 10
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %110, %107
  store i32 0, i32* %14, align 4
  store i32 0, i32* %10, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp slt i32 %117, 2
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %7, align 4
  %121 = icmp sgt i32 %120, 36
  br i1 %121, label %122, label %123

122:                                              ; preds = %119, %116
  br label %238

123:                                              ; preds = %119
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load i32, i32* @INTMAX_MIN, align 4
  %128 = load i32, i32* @INTMAX_MAX, align 4
  %129 = add nsw i32 %127, %128
  %130 = sub nsw i32 0, %129
  %131 = load i32, i32* @INTMAX_MAX, align 4
  %132 = add nsw i32 %130, %131
  br label %135

133:                                              ; preds = %123
  %134 = load i32, i32* @INTMAX_MAX, align 4
  br label %135

135:                                              ; preds = %133, %126
  %136 = phi i32 [ %132, %126 ], [ %134, %133 ]
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %7, align 4
  %139 = srem i32 %137, %138
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %12, align 4
  %142 = sdiv i32 %141, %140
  store i32 %142, i32* %12, align 4
  br label %143

143:                                              ; preds = %217, %135
  %144 = load i8, i8* %11, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp sge i32 %145, 48
  br i1 %146, label %147, label %156

147:                                              ; preds = %143
  %148 = load i8, i8* %11, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp sle i32 %149, 57
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = load i8, i8* %11, align 1
  %153 = sext i8 %152 to i32
  %154 = sub nsw i32 %153, 48
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %11, align 1
  br label %185

156:                                              ; preds = %147, %143
  %157 = load i8, i8* %11, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp sge i32 %158, 65
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = load i8, i8* %11, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp sle i32 %162, 90
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = load i8, i8* %11, align 1
  %166 = sext i8 %165 to i32
  %167 = sub nsw i32 %166, 55
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %11, align 1
  br label %184

169:                                              ; preds = %160, %156
  %170 = load i8, i8* %11, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp sge i32 %171, 97
  br i1 %172, label %173, label %182

173:                                              ; preds = %169
  %174 = load i8, i8* %11, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp sle i32 %175, 122
  br i1 %176, label %177, label %182

177:                                              ; preds = %173
  %178 = load i8, i8* %11, align 1
  %179 = sext i8 %178 to i32
  %180 = sub nsw i32 %179, 87
  %181 = trunc i32 %180 to i8
  store i8 %181, i8* %11, align 1
  br label %183

182:                                              ; preds = %173, %169
  br label %221

183:                                              ; preds = %177
  br label %184

184:                                              ; preds = %183, %164
  br label %185

185:                                              ; preds = %184, %151
  %186 = load i8, i8* %11, align 1
  %187 = sext i8 %186 to i32
  %188 = load i32, i32* %7, align 4
  %189 = icmp sge i32 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  br label %221

191:                                              ; preds = %185
  %192 = load i32, i32* %14, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %207, label %194

194:                                              ; preds = %191
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* %12, align 4
  %197 = icmp sgt i32 %195, %196
  br i1 %197, label %207, label %198

198:                                              ; preds = %194
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* %12, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %198
  %203 = load i8, i8* %11, align 1
  %204 = sext i8 %203 to i32
  %205 = load i32, i32* %15, align 4
  %206 = icmp sgt i32 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %202, %194, %191
  store i32 -1, i32* %14, align 4
  br label %216

208:                                              ; preds = %202, %198
  store i32 1, i32* %14, align 4
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* %10, align 4
  %211 = mul nsw i32 %210, %209
  store i32 %211, i32* %10, align 4
  %212 = load i8, i8* %11, align 1
  %213 = sext i8 %212 to i32
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %214, %213
  store i32 %215, i32* %10, align 4
  br label %216

216:                                              ; preds = %208, %207
  br label %217

217:                                              ; preds = %216
  %218 = load i8*, i8** %9, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %9, align 8
  %220 = load i8, i8* %218, align 1
  store i8 %220, i8* %11, align 1
  br label %143

221:                                              ; preds = %190, %182
  %222 = load i32, i32* %14, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %221
  %225 = load i32, i32* %13, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %224
  %228 = load i32, i32* @INTMAX_MIN, align 4
  br label %231

229:                                              ; preds = %224
  %230 = load i32, i32* @INTMAX_MAX, align 4
  br label %231

231:                                              ; preds = %229, %227
  %232 = phi i32 [ %228, %227 ], [ %230, %229 ]
  store i32 %232, i32* %10, align 4
  %233 = load i32, i32* @ERANGE, align 4
  store i32 %233, i32* @errno, align 4
  br label %248

234:                                              ; preds = %221
  %235 = load i32, i32* %14, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %234
  br label %238

238:                                              ; preds = %237, %122
  %239 = load i32, i32* @EINVAL, align 4
  store i32 %239, i32* @errno, align 4
  br label %247

240:                                              ; preds = %234
  %241 = load i32, i32* %13, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load i32, i32* %10, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %10, align 4
  br label %246

246:                                              ; preds = %243, %240
  br label %247

247:                                              ; preds = %246, %238
  br label %248

248:                                              ; preds = %247, %231
  %249 = load i8**, i8*** %6, align 8
  %250 = icmp ne i8** %249, null
  br i1 %250, label %251, label %262

251:                                              ; preds = %248
  %252 = load i32, i32* %14, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load i8*, i8** %9, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 -1
  br label %259

257:                                              ; preds = %251
  %258 = load i8*, i8** %5, align 8
  br label %259

259:                                              ; preds = %257, %254
  %260 = phi i8* [ %256, %254 ], [ %258, %257 ]
  %261 = load i8**, i8*** %6, align 8
  store i8* %260, i8** %261, align 8
  br label %262

262:                                              ; preds = %259, %248
  %263 = load i32, i32* %10, align 4
  ret i32 %263
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local i64 @isspace_l(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
