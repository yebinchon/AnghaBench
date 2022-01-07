; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_libmap.c_lmc_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_libmap.c_lmc_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"includedir\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @lmc_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lmc_parse(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %15 = load i32, i32* @MAXPATHLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* @MAXPATHLEN, align 4
  %20 = add nsw i32 %19, 13
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i8* null, i8** %9, align 8
  br label %23

23:                                               ; preds = %272, %250, %216, %182, %181, %174, %157, %119, %92, %2
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %273

27:                                               ; preds = %23
  store i64 0, i64* %14, align 8
  br label %28

28:                                               ; preds = %45, %27
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i8*, i8** %3, align 8
  %34 = load i64, i64* %13, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 10
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i64, i64* %14, align 8
  %41 = sub i64 %21, 1
  %42 = icmp ult i64 %40, %41
  br label %43

43:                                               ; preds = %39, %32, %28
  %44 = phi i1 [ false, %32 ], [ false, %28 ], [ %42, %39 ]
  br i1 %44, label %45, label %56

45:                                               ; preds = %43
  %46 = load i8*, i8** %3, align 8
  %47 = load i64, i64* %13, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = load i64, i64* %14, align 8
  %51 = getelementptr inbounds i8, i8* %22, i64 %50
  store i8 %49, i8* %51, align 1
  %52 = load i64, i64* %13, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %13, align 8
  %54 = load i64, i64* %14, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %14, align 8
  br label %28

56:                                               ; preds = %43
  %57 = load i64, i64* %14, align 8
  %58 = getelementptr inbounds i8, i8* %22, i64 %57
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %72, %56
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* %4, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i8*, i8** %3, align 8
  %65 = load i64, i64* %13, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 10
  br label %70

70:                                               ; preds = %63, %59
  %71 = phi i1 [ false, %59 ], [ %69, %63 ]
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = load i64, i64* %13, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %13, align 8
  br label %59

75:                                               ; preds = %70
  %76 = load i64, i64* %13, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %13, align 8
  %78 = getelementptr inbounds i8, i8* %22, i64 0
  store i8* %78, i8** %5, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  br label %79

79:                                               ; preds = %84, %75
  %80 = load i8*, i8** %5, align 8
  %81 = load i8, i8* %80, align 1
  %82 = call i64 @rtld_isspace(i8 signext %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %5, align 8
  br label %79

87:                                               ; preds = %79
  %88 = load i8*, i8** %5, align 8
  %89 = load i8, i8* %88, align 1
  %90 = call i64 @iseol(i8 signext %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %23

93:                                               ; preds = %87
  %94 = load i8*, i8** %5, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 91
  br i1 %97, label %98, label %183

98:                                               ; preds = %93
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %5, align 8
  br label %101

101:                                              ; preds = %106, %98
  %102 = load i8*, i8** %5, align 8
  %103 = load i8, i8* %102, align 1
  %104 = call i64 @rtld_isspace(i8 signext %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %5, align 8
  br label %101

109:                                              ; preds = %101
  %110 = load i8*, i8** %5, align 8
  %111 = load i8, i8* %110, align 1
  %112 = call i64 @iseol(i8 signext %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load i8*, i8** %5, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 93
  br i1 %118, label %119, label %120

119:                                              ; preds = %114, %109
  br label %23

120:                                              ; preds = %114
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %5, align 8
  store i8* %121, i8** %8, align 8
  br label %123

123:                                              ; preds = %140, %120
  %124 = load i8*, i8** %5, align 8
  %125 = load i8, i8* %124, align 1
  %126 = call i64 @rtld_isspace(i8 signext %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %138, label %128

128:                                              ; preds = %123
  %129 = load i8*, i8** %5, align 8
  %130 = load i8, i8* %129, align 1
  %131 = call i64 @iseol(i8 signext %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = load i8*, i8** %5, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 93
  br label %138

138:                                              ; preds = %133, %128, %123
  %139 = phi i1 [ false, %128 ], [ false, %123 ], [ %137, %133 ]
  br i1 %139, label %140, label %143

140:                                              ; preds = %138
  %141 = load i8*, i8** %5, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %5, align 8
  br label %123

143:                                              ; preds = %138
  br label %144

144:                                              ; preds = %149, %143
  %145 = load i8*, i8** %5, align 8
  %146 = load i8, i8* %145, align 1
  %147 = call i64 @rtld_isspace(i8 signext %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i8*, i8** %5, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %5, align 8
  store i8 0, i8* %150, align 1
  br label %144

152:                                              ; preds = %144
  %153 = load i8*, i8** %5, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 93
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %23

158:                                              ; preds = %152
  %159 = load i8*, i8** %5, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %5, align 8
  store i8 0, i8* %159, align 1
  br label %161

161:                                              ; preds = %166, %158
  %162 = load i8*, i8** %5, align 8
  %163 = load i8, i8* %162, align 1
  %164 = call i64 @rtld_isspace(i8 signext %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load i8*, i8** %5, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %5, align 8
  br label %161

169:                                              ; preds = %161
  %170 = load i8*, i8** %5, align 8
  %171 = load i8, i8* %170, align 1
  %172 = call i64 @iseol(i8 signext %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %169
  br label %23

175:                                              ; preds = %169
  %176 = load i8*, i8** %8, align 8
  %177 = trunc i64 %16 to i32
  %178 = call i32 @strlcpy(i8* %18, i8* %176, i32 %177)
  %179 = sext i32 %178 to i64
  %180 = icmp uge i64 %179, %16
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  br label %23

182:                                              ; preds = %175
  store i8* %18, i8** %9, align 8
  br label %23

183:                                              ; preds = %93
  %184 = load i8*, i8** %5, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %5, align 8
  store i8* %184, i8** %6, align 8
  br label %186

186:                                              ; preds = %199, %183
  %187 = load i8*, i8** %5, align 8
  %188 = load i8, i8* %187, align 1
  %189 = call i64 @rtld_isspace(i8 signext %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %197, label %191

191:                                              ; preds = %186
  %192 = load i8*, i8** %5, align 8
  %193 = load i8, i8* %192, align 1
  %194 = call i64 @iseol(i8 signext %193)
  %195 = icmp ne i64 %194, 0
  %196 = xor i1 %195, true
  br label %197

197:                                              ; preds = %191, %186
  %198 = phi i1 [ false, %186 ], [ %196, %191 ]
  br i1 %198, label %199, label %202

199:                                              ; preds = %197
  %200 = load i8*, i8** %5, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %5, align 8
  br label %186

202:                                              ; preds = %197
  br label %203

203:                                              ; preds = %208, %202
  %204 = load i8*, i8** %5, align 8
  %205 = load i8, i8* %204, align 1
  %206 = call i64 @rtld_isspace(i8 signext %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load i8*, i8** %5, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %5, align 8
  store i8 0, i8* %209, align 1
  br label %203

211:                                              ; preds = %203
  %212 = load i8*, i8** %5, align 8
  %213 = load i8, i8* %212, align 1
  %214 = call i64 @iseol(i8 signext %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  br label %23

217:                                              ; preds = %211
  %218 = load i8*, i8** %5, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %5, align 8
  store i8* %218, i8** %7, align 8
  br label %220

220:                                              ; preds = %233, %217
  %221 = load i8*, i8** %5, align 8
  %222 = load i8, i8* %221, align 1
  %223 = call i64 @rtld_isspace(i8 signext %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %231, label %225

225:                                              ; preds = %220
  %226 = load i8*, i8** %5, align 8
  %227 = load i8, i8* %226, align 1
  %228 = call i64 @iseol(i8 signext %227)
  %229 = icmp ne i64 %228, 0
  %230 = xor i1 %229, true
  br label %231

231:                                              ; preds = %225, %220
  %232 = phi i1 [ false, %220 ], [ %230, %225 ]
  br i1 %232, label %233, label %236

233:                                              ; preds = %231
  %234 = load i8*, i8** %5, align 8
  %235 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %235, i8** %5, align 8
  br label %220

236:                                              ; preds = %231
  br label %237

237:                                              ; preds = %242, %236
  %238 = load i8*, i8** %5, align 8
  %239 = load i8, i8* %238, align 1
  %240 = call i64 @rtld_isspace(i8 signext %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = load i8*, i8** %5, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %5, align 8
  store i8 0, i8* %243, align 1
  br label %237

245:                                              ; preds = %237
  %246 = load i8*, i8** %5, align 8
  %247 = load i8, i8* %246, align 1
  %248 = call i64 @iseol(i8 signext %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %245
  br label %23

251:                                              ; preds = %245
  %252 = load i8*, i8** %5, align 8
  store i8 0, i8* %252, align 1
  %253 = load i8*, i8** %6, align 8
  %254 = call i64 @strcmp(i8* %253, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %251
  %257 = load i8*, i8** %7, align 8
  %258 = call i32 @lmc_parse_dir(i8* %257)
  br label %272

259:                                              ; preds = %251
  %260 = load i8*, i8** %6, align 8
  %261 = call i64 @strcmp(i8* %260, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %259
  %264 = load i8*, i8** %7, align 8
  %265 = call i32 @lmc_parse_file(i8* %264)
  br label %271

266:                                              ; preds = %259
  %267 = load i8*, i8** %9, align 8
  %268 = load i8*, i8** %6, align 8
  %269 = load i8*, i8** %7, align 8
  %270 = call i32 @lm_add(i8* %267, i8* %268, i8* %269)
  br label %271

271:                                              ; preds = %266, %263
  br label %272

272:                                              ; preds = %271, %256
  br label %23

273:                                              ; preds = %23
  %274 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %274)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @rtld_isspace(i8 signext) #2

declare dso_local i64 @iseol(i8 signext) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @lmc_parse_dir(i8*) #2

declare dso_local i32 @lmc_parse_file(i8*) #2

declare dso_local i32 @lm_add(i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
