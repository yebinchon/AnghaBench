; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_strtoll.c_strtoll_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_strtoll.c_strtoll_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LLONG_MIN = common dso_local global i64 0, align 8
@LLONG_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strtoll_l(i8* noalias %0, i8** noalias %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
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
  store i64 0, i64* %10, align 8
  %117 = load i32, i32* %7, align 4
  %118 = icmp slt i32 %117, 2
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %7, align 4
  %121 = icmp sgt i32 %120, 36
  br i1 %121, label %122, label %123

122:                                              ; preds = %119, %116
  br label %242

123:                                              ; preds = %119
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load i64, i64* @LLONG_MIN, align 8
  %128 = load i64, i64* @LLONG_MAX, align 8
  %129 = add i64 %127, %128
  %130 = sub i64 0, %129
  %131 = load i64, i64* @LLONG_MAX, align 8
  %132 = add i64 %130, %131
  br label %135

133:                                              ; preds = %123
  %134 = load i64, i64* @LLONG_MAX, align 8
  br label %135

135:                                              ; preds = %133, %126
  %136 = phi i64 [ %132, %126 ], [ %134, %133 ]
  store i64 %136, i64* %12, align 8
  %137 = load i64, i64* %12, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = urem i64 %137, %139
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %12, align 8
  %145 = udiv i64 %144, %143
  store i64 %145, i64* %12, align 8
  br label %146

146:                                              ; preds = %221, %135
  %147 = load i8, i8* %11, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp sge i32 %148, 48
  br i1 %149, label %150, label %159

150:                                              ; preds = %146
  %151 = load i8, i8* %11, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp sle i32 %152, 57
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load i8, i8* %11, align 1
  %156 = sext i8 %155 to i32
  %157 = sub nsw i32 %156, 48
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %11, align 1
  br label %188

159:                                              ; preds = %150, %146
  %160 = load i8, i8* %11, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp sge i32 %161, 65
  br i1 %162, label %163, label %172

163:                                              ; preds = %159
  %164 = load i8, i8* %11, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp sle i32 %165, 90
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load i8, i8* %11, align 1
  %169 = sext i8 %168 to i32
  %170 = sub nsw i32 %169, 55
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %11, align 1
  br label %187

172:                                              ; preds = %163, %159
  %173 = load i8, i8* %11, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp sge i32 %174, 97
  br i1 %175, label %176, label %185

176:                                              ; preds = %172
  %177 = load i8, i8* %11, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp sle i32 %178, 122
  br i1 %179, label %180, label %185

180:                                              ; preds = %176
  %181 = load i8, i8* %11, align 1
  %182 = sext i8 %181 to i32
  %183 = sub nsw i32 %182, 87
  %184 = trunc i32 %183 to i8
  store i8 %184, i8* %11, align 1
  br label %186

185:                                              ; preds = %176, %172
  br label %225

186:                                              ; preds = %180
  br label %187

187:                                              ; preds = %186, %167
  br label %188

188:                                              ; preds = %187, %154
  %189 = load i8, i8* %11, align 1
  %190 = sext i8 %189 to i32
  %191 = load i32, i32* %7, align 4
  %192 = icmp sge i32 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %225

194:                                              ; preds = %188
  %195 = load i32, i32* %14, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %210, label %197

197:                                              ; preds = %194
  %198 = load i64, i64* %10, align 8
  %199 = load i64, i64* %12, align 8
  %200 = icmp ugt i64 %198, %199
  br i1 %200, label %210, label %201

201:                                              ; preds = %197
  %202 = load i64, i64* %10, align 8
  %203 = load i64, i64* %12, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %211

205:                                              ; preds = %201
  %206 = load i8, i8* %11, align 1
  %207 = sext i8 %206 to i32
  %208 = load i32, i32* %15, align 4
  %209 = icmp sgt i32 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %205, %197, %194
  store i32 -1, i32* %14, align 4
  br label %220

211:                                              ; preds = %205, %201
  store i32 1, i32* %14, align 4
  %212 = load i32, i32* %7, align 4
  %213 = sext i32 %212 to i64
  %214 = load i64, i64* %10, align 8
  %215 = mul i64 %214, %213
  store i64 %215, i64* %10, align 8
  %216 = load i8, i8* %11, align 1
  %217 = sext i8 %216 to i64
  %218 = load i64, i64* %10, align 8
  %219 = add i64 %218, %217
  store i64 %219, i64* %10, align 8
  br label %220

220:                                              ; preds = %211, %210
  br label %221

221:                                              ; preds = %220
  %222 = load i8*, i8** %9, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %9, align 8
  %224 = load i8, i8* %222, align 1
  store i8 %224, i8* %11, align 1
  br label %146

225:                                              ; preds = %193, %185
  %226 = load i32, i32* %14, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %238

228:                                              ; preds = %225
  %229 = load i32, i32* %13, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %228
  %232 = load i64, i64* @LLONG_MIN, align 8
  br label %235

233:                                              ; preds = %228
  %234 = load i64, i64* @LLONG_MAX, align 8
  br label %235

235:                                              ; preds = %233, %231
  %236 = phi i64 [ %232, %231 ], [ %234, %233 ]
  store i64 %236, i64* %10, align 8
  %237 = load i32, i32* @ERANGE, align 4
  store i32 %237, i32* @errno, align 4
  br label %252

238:                                              ; preds = %225
  %239 = load i32, i32* %14, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %238
  br label %242

242:                                              ; preds = %241, %122
  %243 = load i32, i32* @EINVAL, align 4
  store i32 %243, i32* @errno, align 4
  br label %251

244:                                              ; preds = %238
  %245 = load i32, i32* %13, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %244
  %248 = load i64, i64* %10, align 8
  %249 = sub i64 0, %248
  store i64 %249, i64* %10, align 8
  br label %250

250:                                              ; preds = %247, %244
  br label %251

251:                                              ; preds = %250, %242
  br label %252

252:                                              ; preds = %251, %235
  %253 = load i8**, i8*** %6, align 8
  %254 = icmp ne i8** %253, null
  br i1 %254, label %255, label %266

255:                                              ; preds = %252
  %256 = load i32, i32* %14, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load i8*, i8** %9, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 -1
  br label %263

261:                                              ; preds = %255
  %262 = load i8*, i8** %5, align 8
  br label %263

263:                                              ; preds = %261, %258
  %264 = phi i8* [ %260, %258 ], [ %262, %261 ]
  %265 = load i8**, i8*** %6, align 8
  store i8* %264, i8** %265, align 8
  br label %266

266:                                              ; preds = %263, %252
  %267 = load i64, i64* %10, align 8
  ret i64 %267
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local i64 @isspace_l(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
