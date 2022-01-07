; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_b_print.c_fmtint.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_b_print.c_fmtint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DP_F_UNSIGNED = common dso_local global i32 0, align 4
@DP_F_PLUS = common dso_local global i32 0, align 4
@DP_F_SPACE = common dso_local global i32 0, align 4
@DP_F_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@DP_F_UP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@DP_F_ZERO = common dso_local global i32 0, align 4
@DP_F_MINUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i64*, i64*, i64, i32, i32, i32, i32)* @fmtint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fmtint(i8** %0, i8** %1, i64* %2, i64* %3, i64 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i8** %0, i8*** %11, align 8
  store i8** %1, i8*** %12, align 8
  store i64* %2, i64** %13, align 8
  store i64* %3, i64** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %30 = load i64, i64* %15, align 8
  %31 = call i32 @DECIMAL_SIZE(i64 %30)
  %32 = add nsw i32 %31, 3
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %23, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %24, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %36 = load i32, i32* %18, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %9
  store i32 0, i32* %18, align 4
  br label %39

39:                                               ; preds = %38, %9
  %40 = load i64, i64* %15, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %22, align 4
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* @DP_F_UNSIGNED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %68, label %46

46:                                               ; preds = %39
  %47 = load i64, i64* %15, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  store i32 45, i32* %20, align 4
  %50 = load i64, i64* %15, align 8
  %51 = trunc i64 %50 to i32
  %52 = sub i32 0, %51
  store i32 %52, i32* %22, align 4
  br label %67

53:                                               ; preds = %46
  %54 = load i32, i32* %19, align 4
  %55 = load i32, i32* @DP_F_PLUS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 43, i32* %20, align 4
  br label %66

59:                                               ; preds = %53
  %60 = load i32, i32* %19, align 4
  %61 = load i32, i32* @DP_F_SPACE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 32, i32* %20, align 4
  br label %65

65:                                               ; preds = %64, %59
  br label %66

66:                                               ; preds = %65, %58
  br label %67

67:                                               ; preds = %66, %49
  br label %68

68:                                               ; preds = %67, %39
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* @DP_F_NUM, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load i32, i32* %16, align 4
  %75 = icmp eq i32 %74, 8
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %77

77:                                               ; preds = %76, %73
  %78 = load i32, i32* %16, align 4
  %79 = icmp eq i32 %78, 16
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %21, align 8
  br label %81

81:                                               ; preds = %80, %77
  br label %82

82:                                               ; preds = %81, %68
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* @DP_F_UP, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 1, i32* %28, align 4
  br label %88

88:                                               ; preds = %87, %82
  br label %89

89:                                               ; preds = %114, %88
  %90 = load i32, i32* %28, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0)
  %94 = load i32, i32* %22, align 4
  %95 = load i32, i32* %16, align 4
  %96 = urem i32 %94, %95
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %93, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = load i32, i32* %25, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %25, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %35, i64 %102
  store i8 %99, i8* %103, align 1
  %104 = load i32, i32* %22, align 4
  %105 = load i32, i32* %16, align 4
  %106 = udiv i32 %104, %105
  store i32 %106, i32* %22, align 4
  br label %107

107:                                              ; preds = %89
  %108 = load i32, i32* %22, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* %25, align 4
  %112 = trunc i64 %33 to i32
  %113 = icmp slt i32 %111, %112
  br label %114

114:                                              ; preds = %110, %107
  %115 = phi i1 [ false, %107 ], [ %113, %110 ]
  br i1 %115, label %89, label %116

116:                                              ; preds = %114
  %117 = load i32, i32* %25, align 4
  %118 = sext i32 %117 to i64
  %119 = icmp eq i64 %118, %33
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32, i32* %25, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %25, align 4
  br label %123

123:                                              ; preds = %120, %116
  %124 = load i32, i32* %25, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %35, i64 %125
  store i8 0, i8* %126, align 1
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* %25, align 4
  %129 = sub nsw i32 %127, %128
  store i32 %129, i32* %27, align 4
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* %18, align 4
  %132 = load i32, i32* %25, align 4
  %133 = call i32 @OSSL_MAX(i32 %131, i32 %132)
  %134 = sub nsw i32 %130, %133
  %135 = load i32, i32* %20, align 4
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32 1, i32 0
  %139 = sub nsw i32 %134, %138
  %140 = load i8*, i8** %21, align 8
  %141 = call i32 @strlen(i8* %140)
  %142 = sub nsw i32 %139, %141
  store i32 %142, i32* %26, align 4
  %143 = load i32, i32* %27, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %123
  store i32 0, i32* %27, align 4
  br label %146

146:                                              ; preds = %145, %123
  %147 = load i32, i32* %26, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  store i32 0, i32* %26, align 4
  br label %150

150:                                              ; preds = %149, %146
  %151 = load i32, i32* %19, align 4
  %152 = load i32, i32* @DP_F_ZERO, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i32, i32* %27, align 4
  %157 = load i32, i32* %26, align 4
  %158 = call i32 @OSSL_MAX(i32 %156, i32 %157)
  store i32 %158, i32* %27, align 4
  store i32 0, i32* %26, align 4
  br label %159

159:                                              ; preds = %155, %150
  %160 = load i32, i32* %19, align 4
  %161 = load i32, i32* @DP_F_MINUS, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i32, i32* %26, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %26, align 4
  br label %167

167:                                              ; preds = %164, %159
  br label %168

168:                                              ; preds = %179, %167
  %169 = load i32, i32* %26, align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %168
  %172 = load i8**, i8*** %11, align 8
  %173 = load i8**, i8*** %12, align 8
  %174 = load i64*, i64** %13, align 8
  %175 = load i64*, i64** %14, align 8
  %176 = call i32 @doapr_outch(i8** %172, i8** %173, i64* %174, i64* %175, i8 signext 32)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %171
  store i32 0, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %267

179:                                              ; preds = %171
  %180 = load i32, i32* %26, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %26, align 4
  br label %168

182:                                              ; preds = %168
  %183 = load i32, i32* %20, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %182
  %186 = load i8**, i8*** %11, align 8
  %187 = load i8**, i8*** %12, align 8
  %188 = load i64*, i64** %13, align 8
  %189 = load i64*, i64** %14, align 8
  %190 = load i32, i32* %20, align 4
  %191 = trunc i32 %190 to i8
  %192 = call i32 @doapr_outch(i8** %186, i8** %187, i64* %188, i64* %189, i8 signext %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %185
  store i32 0, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %267

195:                                              ; preds = %185
  br label %196

196:                                              ; preds = %195, %182
  br label %197

197:                                              ; preds = %211, %196
  %198 = load i8*, i8** %21, align 8
  %199 = load i8, i8* %198, align 1
  %200 = icmp ne i8 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %197
  %202 = load i8**, i8*** %11, align 8
  %203 = load i8**, i8*** %12, align 8
  %204 = load i64*, i64** %13, align 8
  %205 = load i64*, i64** %14, align 8
  %206 = load i8*, i8** %21, align 8
  %207 = load i8, i8* %206, align 1
  %208 = call i32 @doapr_outch(i8** %202, i8** %203, i64* %204, i64* %205, i8 signext %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %201
  store i32 0, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %267

211:                                              ; preds = %201
  %212 = load i8*, i8** %21, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %21, align 8
  br label %197

214:                                              ; preds = %197
  %215 = load i32, i32* %27, align 4
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %233

217:                                              ; preds = %214
  br label %218

218:                                              ; preds = %229, %217
  %219 = load i32, i32* %27, align 4
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %232

221:                                              ; preds = %218
  %222 = load i8**, i8*** %11, align 8
  %223 = load i8**, i8*** %12, align 8
  %224 = load i64*, i64** %13, align 8
  %225 = load i64*, i64** %14, align 8
  %226 = call i32 @doapr_outch(i8** %222, i8** %223, i64* %224, i64* %225, i8 signext 48)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %221
  store i32 0, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %267

229:                                              ; preds = %221
  %230 = load i32, i32* %27, align 4
  %231 = add nsw i32 %230, -1
  store i32 %231, i32* %27, align 4
  br label %218

232:                                              ; preds = %218
  br label %233

233:                                              ; preds = %232, %214
  br label %234

234:                                              ; preds = %250, %233
  %235 = load i32, i32* %25, align 4
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %237, label %251

237:                                              ; preds = %234
  %238 = load i8**, i8*** %11, align 8
  %239 = load i8**, i8*** %12, align 8
  %240 = load i64*, i64** %13, align 8
  %241 = load i64*, i64** %14, align 8
  %242 = load i32, i32* %25, align 4
  %243 = add nsw i32 %242, -1
  store i32 %243, i32* %25, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* %35, i64 %244
  %246 = load i8, i8* %245, align 1
  %247 = call i32 @doapr_outch(i8** %238, i8** %239, i64* %240, i64* %241, i8 signext %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %237
  store i32 0, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %267

250:                                              ; preds = %237
  br label %234

251:                                              ; preds = %234
  br label %252

252:                                              ; preds = %263, %251
  %253 = load i32, i32* %26, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %266

255:                                              ; preds = %252
  %256 = load i8**, i8*** %11, align 8
  %257 = load i8**, i8*** %12, align 8
  %258 = load i64*, i64** %13, align 8
  %259 = load i64*, i64** %14, align 8
  %260 = call i32 @doapr_outch(i8** %256, i8** %257, i64* %258, i64* %259, i8 signext 32)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %255
  store i32 0, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %267

263:                                              ; preds = %255
  %264 = load i32, i32* %26, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %26, align 4
  br label %252

266:                                              ; preds = %252
  store i32 1, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %267

267:                                              ; preds = %266, %262, %249, %228, %210, %194, %178
  %268 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %268)
  %269 = load i32, i32* %10, align 4
  ret i32 %269
}

declare dso_local i32 @DECIMAL_SIZE(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @OSSL_MAX(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @doapr_outch(i8**, i8**, i64*, i64*, i8 signext) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
