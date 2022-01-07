; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_sysctl/tests/extr_sysctl_test.c_checkcaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_sysctl/tests/extr_sysctl_test.c_checkcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSCTL0_NAME = common dso_local global i32 0, align 4
@SYSCTL1_NAME = common dso_local global i32 0, align 4
@SYSCTL0_READ0 = common dso_local global i32 0, align 4
@ENOTCAPABLE = common dso_local global i32 0, align 4
@SYSCTL0_WRITE = common dso_local global i32 0, align 4
@SYSCTL0_READ1 = common dso_local global i32 0, align 4
@SYSCTL0_READ_WRITE = common dso_local global i32 0, align 4
@SYSCTL0_READ2 = common dso_local global i32 0, align 4
@SYSCTL1_READ0 = common dso_local global i32 0, align 4
@SYSCTL1_WRITE = common dso_local global i32 0, align 4
@SYSCTL1_READ1 = common dso_local global i32 0, align 4
@SYSCTL1_READ_WRITE = common dso_local global i32 0, align 4
@SYSCTL1_READ2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @checkcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkcaps(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %13 = call i64 @nitems(i32* %12)
  store i64 %13, i64* %4, align 8
  %14 = load i32, i32* @SYSCTL0_NAME, align 4
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %16 = call i64 @sysctlnametomib(i32 %14, i32* %15, i64* %4)
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @ATF_REQUIRE(i32 %18)
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %21 = call i64 @nitems(i32* %20)
  store i64 %21, i64* %5, align 8
  %22 = load i32, i32* @SYSCTL1_NAME, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %24 = call i64 @sysctlnametomib(i32 %22, i32* %23, i64* %5)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @ATF_REQUIRE(i32 %26)
  store i64 4, i64* %6, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @SYSCTL0_NAME, align 4
  %30 = call i64 @cap_sysctlbyname(i32* %28, i32 %29, i32* %10, i64* %6, i32* null, i32 0)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %1
  %33 = load i64, i64* %6, align 8
  %34 = icmp eq i64 %33, 4
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @SYSCTL0_READ0, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %32
  br label %40

40:                                               ; preds = %39, %1
  %41 = load i32*, i32** %2, align 8
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @cap_sysctl(i32* %41, i32* %42, i64 %43, i32* %10, i64* %6, i32* null, i32 0)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @SYSCTL0_READ0, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @ATF_REQUIRE(i32 %52)
  br label %60

54:                                               ; preds = %40
  %55 = load i32, i32* @ENOTCAPABLE, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @ATF_REQUIRE_ERRNO(i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %54, %49
  store i32 123, i32* %11, align 4
  %61 = load i32*, i32** %2, align 8
  %62 = load i32, i32* @SYSCTL0_NAME, align 4
  %63 = call i64 @cap_sysctlbyname(i32* %61, i32 %62, i32* null, i64* null, i32* %11, i32 4)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @SYSCTL0_WRITE, align 4
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @SYSCTL0_WRITE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %69
  store i64 4, i64* %6, align 8
  %75 = load i32*, i32** %2, align 8
  %76 = load i32, i32* @SYSCTL0_NAME, align 4
  %77 = call i64 @cap_sysctlbyname(i32* %75, i32 %76, i32* %10, i64* %6, i32* null, i32 0)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load i64, i64* %6, align 8
  %81 = icmp eq i64 %80, 4
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = icmp eq i32 %83, 123
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* @SYSCTL0_READ1, align 4
  %87 = load i32, i32* %3, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %82, %79
  br label %90

90:                                               ; preds = %89, %74
  br label %91

91:                                               ; preds = %90, %69
  store i32 123, i32* %11, align 4
  %92 = load i32*, i32** %2, align 8
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %94 = load i64, i64* %4, align 8
  %95 = call i32 @cap_sysctl(i32* %92, i32* %93, i64 %94, i32* null, i64* null, i32* %11, i32 4)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @SYSCTL0_WRITE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %91
  %101 = load i32, i32* %7, align 4
  %102 = icmp eq i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @ATF_REQUIRE(i32 %103)
  br label %111

105:                                              ; preds = %91
  %106 = load i32, i32* @ENOTCAPABLE, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @ATF_REQUIRE_ERRNO(i32 %106, i32 %109)
  br label %111

111:                                              ; preds = %105, %100
  store i64 4, i64* %6, align 8
  store i32 4567, i32* %11, align 4
  %112 = load i32*, i32** %2, align 8
  %113 = load i32, i32* @SYSCTL0_NAME, align 4
  %114 = call i64 @cap_sysctlbyname(i32* %112, i32 %113, i32* %10, i64* %6, i32* %11, i32 4)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %111
  %117 = load i64, i64* %6, align 8
  %118 = icmp eq i64 %117, 4
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load i32, i32* %10, align 4
  %121 = icmp eq i32 %120, 123
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i32, i32* @SYSCTL0_READ_WRITE, align 4
  %124 = load i32, i32* %3, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %122, %119, %116
  br label %127

127:                                              ; preds = %126, %111
  %128 = load i32, i32* %3, align 4
  %129 = load i32, i32* @SYSCTL0_READ_WRITE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %149

132:                                              ; preds = %127
  store i64 4, i64* %6, align 8
  %133 = load i32*, i32** %2, align 8
  %134 = load i32, i32* @SYSCTL0_NAME, align 4
  %135 = call i64 @cap_sysctlbyname(i32* %133, i32 %134, i32* %10, i64* %6, i32* null, i32 0)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %132
  %138 = load i64, i64* %6, align 8
  %139 = icmp eq i64 %138, 4
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load i32, i32* %10, align 4
  %142 = icmp eq i32 %141, 4567
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i32, i32* @SYSCTL0_READ2, align 4
  %145 = load i32, i32* %3, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %143, %140, %137
  br label %148

148:                                              ; preds = %147, %132
  br label %149

149:                                              ; preds = %148, %127
  store i64 4, i64* %6, align 8
  %150 = load i32*, i32** %2, align 8
  %151 = load i32, i32* @SYSCTL1_NAME, align 4
  %152 = call i64 @cap_sysctlbyname(i32* %150, i32 %151, i32* %10, i64* %6, i32* null, i32 0)
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = load i64, i64* %6, align 8
  %156 = icmp eq i64 %155, 4
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load i32, i32* @SYSCTL1_READ0, align 4
  %159 = load i32, i32* %3, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %157, %154
  br label %162

162:                                              ; preds = %161, %149
  %163 = load i32*, i32** %2, align 8
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %165 = load i64, i64* %5, align 8
  %166 = call i32 @cap_sysctl(i32* %163, i32* %164, i64 %165, i32* %10, i64* %6, i32* null, i32 0)
  store i32 %166, i32* %7, align 4
  %167 = load i32, i32* %3, align 4
  %168 = load i32, i32* @SYSCTL1_READ0, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %162
  %172 = load i32, i32* %7, align 4
  %173 = icmp eq i32 %172, 0
  %174 = zext i1 %173 to i32
  %175 = call i32 @ATF_REQUIRE(i32 %174)
  br label %182

176:                                              ; preds = %162
  %177 = load i32, i32* @ENOTCAPABLE, align 4
  %178 = load i32, i32* %7, align 4
  %179 = icmp ne i32 %178, 0
  %180 = zext i1 %179 to i32
  %181 = call i32 @ATF_REQUIRE_ERRNO(i32 %177, i32 %180)
  br label %182

182:                                              ; preds = %176, %171
  store i32 506, i32* %11, align 4
  %183 = load i32*, i32** %2, align 8
  %184 = load i32, i32* @SYSCTL1_NAME, align 4
  %185 = call i64 @cap_sysctlbyname(i32* %183, i32 %184, i32* null, i64* null, i32* %11, i32 4)
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = load i32, i32* @SYSCTL1_WRITE, align 4
  %189 = load i32, i32* %3, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %3, align 4
  br label %191

191:                                              ; preds = %187, %182
  %192 = load i32, i32* %3, align 4
  %193 = load i32, i32* @SYSCTL1_WRITE, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %220

196:                                              ; preds = %191
  store i32 506, i32* %11, align 4
  %197 = load i32*, i32** %2, align 8
  %198 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %199 = load i64, i64* %5, align 8
  %200 = call i32 @cap_sysctl(i32* %197, i32* %198, i64 %199, i32* null, i64* null, i32* %11, i32 4)
  %201 = icmp eq i32 %200, 0
  %202 = zext i1 %201 to i32
  %203 = call i32 @ATF_REQUIRE(i32 %202)
  store i64 4, i64* %6, align 8
  %204 = load i32*, i32** %2, align 8
  %205 = load i32, i32* @SYSCTL1_NAME, align 4
  %206 = call i64 @cap_sysctlbyname(i32* %204, i32 %205, i32* %10, i64* %6, i32* null, i32 0)
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %219

208:                                              ; preds = %196
  %209 = load i64, i64* %6, align 8
  %210 = icmp eq i64 %209, 4
  br i1 %210, label %211, label %218

211:                                              ; preds = %208
  %212 = load i32, i32* %10, align 4
  %213 = icmp eq i32 %212, 506
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = load i32, i32* @SYSCTL1_READ1, align 4
  %216 = load i32, i32* %3, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %214, %211, %208
  br label %219

219:                                              ; preds = %218, %196
  br label %220

220:                                              ; preds = %219, %191
  store i32 506, i32* %11, align 4
  %221 = load i32*, i32** %2, align 8
  %222 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %223 = load i64, i64* %5, align 8
  %224 = call i32 @cap_sysctl(i32* %221, i32* %222, i64 %223, i32* null, i64* null, i32* %11, i32 4)
  store i32 %224, i32* %7, align 4
  %225 = load i32, i32* %3, align 4
  %226 = load i32, i32* @SYSCTL1_WRITE, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %220
  %230 = load i32, i32* %7, align 4
  %231 = icmp eq i32 %230, 0
  %232 = zext i1 %231 to i32
  %233 = call i32 @ATF_REQUIRE(i32 %232)
  br label %240

234:                                              ; preds = %220
  %235 = load i32, i32* @ENOTCAPABLE, align 4
  %236 = load i32, i32* %7, align 4
  %237 = icmp ne i32 %236, 0
  %238 = zext i1 %237 to i32
  %239 = call i32 @ATF_REQUIRE_ERRNO(i32 %235, i32 %238)
  br label %240

240:                                              ; preds = %234, %229
  store i64 4, i64* %6, align 8
  store i32 7008, i32* %11, align 4
  %241 = load i32*, i32** %2, align 8
  %242 = load i32, i32* @SYSCTL1_NAME, align 4
  %243 = call i64 @cap_sysctlbyname(i32* %241, i32 %242, i32* %10, i64* %6, i32* %11, i32 4)
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %256

245:                                              ; preds = %240
  %246 = load i64, i64* %6, align 8
  %247 = icmp eq i64 %246, 4
  br i1 %247, label %248, label %255

248:                                              ; preds = %245
  %249 = load i32, i32* %10, align 4
  %250 = icmp eq i32 %249, 506
  br i1 %250, label %251, label %255

251:                                              ; preds = %248
  %252 = load i32, i32* @SYSCTL1_READ_WRITE, align 4
  %253 = load i32, i32* %3, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %3, align 4
  br label %255

255:                                              ; preds = %251, %248, %245
  br label %256

256:                                              ; preds = %255, %240
  %257 = load i32, i32* %3, align 4
  %258 = load i32, i32* @SYSCTL1_READ_WRITE, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %278

261:                                              ; preds = %256
  store i64 4, i64* %6, align 8
  %262 = load i32*, i32** %2, align 8
  %263 = load i32, i32* @SYSCTL1_NAME, align 4
  %264 = call i64 @cap_sysctlbyname(i32* %262, i32 %263, i32* %10, i64* %6, i32* null, i32 0)
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %277

266:                                              ; preds = %261
  %267 = load i64, i64* %6, align 8
  %268 = icmp eq i64 %267, 4
  br i1 %268, label %269, label %276

269:                                              ; preds = %266
  %270 = load i32, i32* %10, align 4
  %271 = icmp eq i32 %270, 7008
  br i1 %271, label %272, label %276

272:                                              ; preds = %269
  %273 = load i32, i32* @SYSCTL1_READ2, align 4
  %274 = load i32, i32* %3, align 4
  %275 = or i32 %274, %273
  store i32 %275, i32* %3, align 4
  br label %276

276:                                              ; preds = %272, %269, %266
  br label %277

277:                                              ; preds = %276, %261
  br label %278

278:                                              ; preds = %277, %256
  %279 = load i32, i32* %3, align 4
  ret i32 %279
}

declare dso_local i64 @nitems(i32*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i64 @sysctlnametomib(i32, i32*, i64*) #1

declare dso_local i64 @cap_sysctlbyname(i32*, i32, i32*, i64*, i32*, i32) #1

declare dso_local i32 @cap_sysctl(i32*, i32*, i64, i32*, i64*, i32*, i32) #1

declare dso_local i32 @ATF_REQUIRE_ERRNO(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
