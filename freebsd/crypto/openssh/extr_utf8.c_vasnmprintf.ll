; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_utf8.c_vasnmprintf.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_utf8.c_vasnmprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i64 0, align 8
@MB_CUR_MAX = common dso_local global i32 0, align 4
@VIS_OCTAL = common dso_local global i32 0, align 4
@VIS_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64, i32*, i8*, i32)* @vasnmprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vasnmprintf(i8** %0, i64 %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @vasprintf(i8** %12, i8* %25, i32 %26)
  store i32 %27, i32* %20, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  br label %249

30:                                               ; preds = %5
  %31 = load i8*, i8** %12, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %17, align 8
  %35 = load i64, i64* %17, align 8
  %36 = call i8* @malloc(i64 %35)
  store i8* %36, i8** %14, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i8*, i8** %12, align 8
  %40 = call i32 @free(i8* %39)
  store i32 -1, i32* %20, align 4
  br label %249

41:                                               ; preds = %30
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @INT_MAX, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @INT_MAX, align 8
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i8*, i8** %12, align 8
  store i8* %48, i8** %13, align 8
  %49 = load i8*, i8** %14, align 8
  store i8* %49, i8** %15, align 8
  store i32 0, i32* %20, align 4
  store i32 1, i32* %24, align 4
  store i32 0, i32* %22, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i64, i64* @INT_MAX, align 8
  br label %58

54:                                               ; preds = %47
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  br label %58

58:                                               ; preds = %54, %52
  %59 = phi i64 [ %53, %52 ], [ %57, %54 ]
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %23, align 4
  br label %61

61:                                               ; preds = %226, %158, %58
  %62 = load i8*, i8** %13, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %227

66:                                               ; preds = %61
  %67 = load i8*, i8** %13, align 8
  %68 = load i32, i32* @MB_CUR_MAX, align 4
  %69 = call i32 @mbtowc(i32* %18, i8* %67, i32 %68)
  store i32 %69, i32* %19, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i32, i32* @MB_CUR_MAX, align 4
  %73 = call i32 @mbtowc(i32* null, i8* null, i32 %72)
  %74 = call i64 (...) @dangerous_locale()
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 -1, i32* %20, align 4
  br label %227

77:                                               ; preds = %71
  store i32 1, i32* %19, align 4
  store i32 -1, i32* %21, align 4
  br label %101

78:                                               ; preds = %66
  %79 = load i32*, i32** %9, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load i32, i32* %18, align 4
  %83 = icmp eq i32 %82, 10
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %18, align 4
  %86 = icmp eq i32 %85, 13
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %18, align 4
  %89 = icmp eq i32 %88, 9
  br i1 %89, label %90, label %91

90:                                               ; preds = %87, %84, %81
  store i32 0, i32* %21, align 4
  br label %100

91:                                               ; preds = %87, %78
  %92 = load i32, i32* %18, align 4
  %93 = call i32 @wcwidth(i32 %92)
  store i32 %93, i32* %21, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = call i64 (...) @dangerous_locale()
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 -1, i32* %20, align 4
  br label %227

99:                                               ; preds = %95, %91
  br label %100

100:                                              ; preds = %99, %90
  br label %101

101:                                              ; preds = %100, %77
  %102 = load i32, i32* %21, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %159

104:                                              ; preds = %101
  %105 = load i32, i32* %24, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %104
  %108 = load i8*, i8** %15, align 8
  %109 = load i8*, i8** %14, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = load i64, i64* %8, align 8
  %114 = trunc i64 %113 to i32
  %115 = load i32, i32* %19, align 4
  %116 = sub nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = icmp sge i64 %112, %117
  br i1 %118, label %125, label %119

119:                                              ; preds = %107
  %120 = load i32, i32* %22, align 4
  %121 = load i32, i32* %23, align 4
  %122 = load i32, i32* %21, align 4
  %123 = sub nsw i32 %121, %122
  %124 = icmp sgt i32 %120, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %119, %107
  store i32 0, i32* %24, align 4
  br label %126

126:                                              ; preds = %125, %119, %104
  %127 = load i32, i32* %24, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %147

129:                                              ; preds = %126
  %130 = load i64, i64* %8, align 8
  %131 = load i32, i32* %19, align 4
  %132 = call i32 @grow_dst(i8** %14, i64* %17, i64 %130, i8** %15, i32 %131)
  %133 = icmp eq i32 %132, -1
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i32 -1, i32* %20, align 4
  br label %227

135:                                              ; preds = %129
  %136 = load i32, i32* %21, align 4
  %137 = load i32, i32* %22, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %22, align 4
  %139 = load i8*, i8** %15, align 8
  %140 = load i8*, i8** %13, align 8
  %141 = load i32, i32* %19, align 4
  %142 = call i32 @memcpy(i8* %139, i8* %140, i32 %141)
  %143 = load i32, i32* %19, align 4
  %144 = load i8*, i8** %15, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  store i8* %146, i8** %15, align 8
  br label %147

147:                                              ; preds = %135, %126
  %148 = load i32, i32* %19, align 4
  %149 = load i8*, i8** %13, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  store i8* %151, i8** %13, align 8
  %152 = load i32, i32* %20, align 4
  %153 = icmp sge i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %147
  %155 = load i32, i32* %19, align 4
  %156 = load i32, i32* %20, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %20, align 4
  br label %158

158:                                              ; preds = %154, %147
  br label %61

159:                                              ; preds = %101
  br label %160

160:                                              ; preds = %221, %159
  %161 = load i32, i32* %19, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %222

163:                                              ; preds = %160
  %164 = load i32, i32* %24, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %183

166:                                              ; preds = %163
  %167 = load i8*, i8** %15, align 8
  %168 = load i8*, i8** %14, align 8
  %169 = ptrtoint i8* %167 to i64
  %170 = ptrtoint i8* %168 to i64
  %171 = sub i64 %169, %170
  %172 = load i64, i64* %8, align 8
  %173 = trunc i64 %172 to i32
  %174 = sub nsw i32 %173, 4
  %175 = sext i32 %174 to i64
  %176 = icmp sge i64 %171, %175
  br i1 %176, label %182, label %177

177:                                              ; preds = %166
  %178 = load i32, i32* %22, align 4
  %179 = load i32, i32* %23, align 4
  %180 = sub nsw i32 %179, 4
  %181 = icmp sgt i32 %178, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %177, %166
  store i32 0, i32* %24, align 4
  br label %183

183:                                              ; preds = %182, %177, %163
  %184 = load i32, i32* %24, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %209

186:                                              ; preds = %183
  %187 = load i64, i64* %8, align 8
  %188 = call i32 @grow_dst(i8** %14, i64* %17, i64 %187, i8** %15, i32 4)
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  store i32 -1, i32* %20, align 4
  br label %222

191:                                              ; preds = %186
  %192 = load i8*, i8** %15, align 8
  %193 = load i8*, i8** %13, align 8
  %194 = load i8, i8* %193, align 1
  %195 = load i32, i32* @VIS_OCTAL, align 4
  %196 = load i32, i32* @VIS_ALL, align 4
  %197 = or i32 %195, %196
  %198 = call i8* @vis(i8* %192, i8 signext %194, i32 %197, i32 0)
  store i8* %198, i8** %16, align 8
  %199 = load i8*, i8** %16, align 8
  %200 = load i8*, i8** %15, align 8
  %201 = ptrtoint i8* %199 to i64
  %202 = ptrtoint i8* %200 to i64
  %203 = sub i64 %201, %202
  %204 = trunc i64 %203 to i32
  store i32 %204, i32* %21, align 4
  %205 = load i32, i32* %21, align 4
  %206 = load i32, i32* %22, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %22, align 4
  %208 = load i8*, i8** %16, align 8
  store i8* %208, i8** %15, align 8
  br label %210

209:                                              ; preds = %183
  store i32 4, i32* %21, align 4
  br label %210

210:                                              ; preds = %209, %191
  %211 = load i32, i32* %19, align 4
  %212 = add nsw i32 %211, -1
  store i32 %212, i32* %19, align 4
  %213 = load i8*, i8** %13, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %13, align 8
  %215 = load i32, i32* %20, align 4
  %216 = icmp sge i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %210
  %218 = load i32, i32* %21, align 4
  %219 = load i32, i32* %20, align 4
  %220 = add nsw i32 %219, %218
  store i32 %220, i32* %20, align 4
  br label %221

221:                                              ; preds = %217, %210
  br label %160

222:                                              ; preds = %190, %160
  %223 = load i32, i32* %19, align 4
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %222
  br label %227

226:                                              ; preds = %222
  br label %61

227:                                              ; preds = %225, %134, %98, %76, %61
  %228 = load i8*, i8** %12, align 8
  %229 = call i32 @free(i8* %228)
  %230 = load i8*, i8** %15, align 8
  store i8 0, i8* %230, align 1
  %231 = load i8*, i8** %14, align 8
  %232 = load i8**, i8*** %7, align 8
  store i8* %231, i8** %232, align 8
  %233 = load i32*, i32** %9, align 8
  %234 = icmp ne i32* %233, null
  br i1 %234, label %235, label %238

235:                                              ; preds = %227
  %236 = load i32, i32* %22, align 4
  %237 = load i32*, i32** %9, align 8
  store i32 %236, i32* %237, align 4
  br label %238

238:                                              ; preds = %235, %227
  %239 = load i32, i32* %20, align 4
  %240 = load i64, i64* %8, align 8
  %241 = trunc i64 %240 to i32
  %242 = icmp slt i32 %239, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %238
  %244 = load i32, i32* %24, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %243
  store i32 -1, i32* %20, align 4
  br label %247

247:                                              ; preds = %246, %243, %238
  %248 = load i32, i32* %20, align 4
  store i32 %248, i32* %6, align 4
  br label %262

249:                                              ; preds = %38, %29
  %250 = load i32*, i32** %9, align 8
  %251 = icmp ne i32* %250, null
  br i1 %251, label %252, label %254

252:                                              ; preds = %249
  %253 = load i32*, i32** %9, align 8
  store i32 0, i32* %253, align 4
  br label %254

254:                                              ; preds = %252, %249
  %255 = load i32, i32* %20, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %254
  %258 = load i8*, i8** %12, align 8
  %259 = load i8**, i8*** %7, align 8
  store i8* %258, i8** %259, align 8
  store i32 0, i32* %6, align 4
  br label %262

260:                                              ; preds = %254
  %261 = load i8**, i8*** %7, align 8
  store i8* null, i8** %261, align 8
  store i32 -1, i32* %6, align 4
  br label %262

262:                                              ; preds = %260, %257, %247
  %263 = load i32, i32* %6, align 4
  ret i32 %263
}

declare dso_local i32 @vasprintf(i8**, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @mbtowc(i32*, i8*, i32) #1

declare dso_local i64 @dangerous_locale(...) #1

declare dso_local i32 @wcwidth(i32) #1

declare dso_local i32 @grow_dst(i8**, i64*, i64, i8**, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @vis(i8*, i8 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
