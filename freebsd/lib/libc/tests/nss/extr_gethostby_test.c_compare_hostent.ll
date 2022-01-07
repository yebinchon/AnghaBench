; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_gethostby_test.c_compare_hostent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_gethostby_test.c_compare_hostent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i8*, i64, i8**, i8**, i32 }

@.str = private unnamed_addr constant [46 x i8] c"h1 aliases item can't be found in h2 aliases\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"h2 aliases item can't be found in h1 aliases\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"h1 addresses item can't be found in h2 addresses\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"h2 addresses item can't be found in h1 addresses\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"following structures are not equal:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostent*, %struct.hostent*, i8*)* @compare_hostent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_hostent(%struct.hostent* %0, %struct.hostent* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostent*, align 8
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store %struct.hostent* %0, %struct.hostent** %5, align 8
  store %struct.hostent* %1, %struct.hostent** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.hostent*, %struct.hostent** %5, align 8
  %14 = load %struct.hostent*, %struct.hostent** %6, align 8
  %15 = icmp eq %struct.hostent* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %274

17:                                               ; preds = %3
  %18 = load %struct.hostent*, %struct.hostent** %5, align 8
  %19 = icmp eq %struct.hostent* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load %struct.hostent*, %struct.hostent** %6, align 8
  %22 = icmp eq %struct.hostent* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17
  br label %264

24:                                               ; preds = %20
  %25 = load %struct.hostent*, %struct.hostent** %5, align 8
  %26 = getelementptr inbounds %struct.hostent, %struct.hostent* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.hostent*, %struct.hostent** %6, align 8
  %31 = getelementptr inbounds %struct.hostent, %struct.hostent* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %24
  br label %264

35:                                               ; preds = %29
  %36 = load %struct.hostent*, %struct.hostent** %5, align 8
  %37 = getelementptr inbounds %struct.hostent, %struct.hostent* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.hostent*, %struct.hostent** %6, align 8
  %40 = getelementptr inbounds %struct.hostent, %struct.hostent* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %60, label %43

43:                                               ; preds = %35
  %44 = load %struct.hostent*, %struct.hostent** %5, align 8
  %45 = getelementptr inbounds %struct.hostent, %struct.hostent* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.hostent*, %struct.hostent** %6, align 8
  %48 = getelementptr inbounds %struct.hostent, %struct.hostent* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %46, %49
  br i1 %50, label %60, label %51

51:                                               ; preds = %43
  %52 = load %struct.hostent*, %struct.hostent** %5, align 8
  %53 = getelementptr inbounds %struct.hostent, %struct.hostent* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.hostent*, %struct.hostent** %6, align 8
  %56 = getelementptr inbounds %struct.hostent, %struct.hostent* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strcmp(i8* %54, i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51, %43, %35
  br label %264

61:                                               ; preds = %51
  %62 = load %struct.hostent*, %struct.hostent** %5, align 8
  %63 = getelementptr inbounds %struct.hostent, %struct.hostent* %62, i32 0, i32 2
  %64 = load i8**, i8*** %63, align 8
  store i8** %64, i8*** %8, align 8
  %65 = load %struct.hostent*, %struct.hostent** %6, align 8
  %66 = getelementptr inbounds %struct.hostent, %struct.hostent* %65, i32 0, i32 2
  %67 = load i8**, i8*** %66, align 8
  store i8** %67, i8*** %9, align 8
  %68 = load %struct.hostent*, %struct.hostent** %5, align 8
  %69 = getelementptr inbounds %struct.hostent, %struct.hostent* %68, i32 0, i32 2
  %70 = load i8**, i8*** %69, align 8
  %71 = icmp eq i8** %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %61
  %73 = load %struct.hostent*, %struct.hostent** %6, align 8
  %74 = getelementptr inbounds %struct.hostent, %struct.hostent* %73, i32 0, i32 2
  %75 = load i8**, i8*** %74, align 8
  %76 = icmp eq i8** %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %72, %61
  %78 = load %struct.hostent*, %struct.hostent** %5, align 8
  %79 = getelementptr inbounds %struct.hostent, %struct.hostent* %78, i32 0, i32 2
  %80 = load i8**, i8*** %79, align 8
  %81 = load %struct.hostent*, %struct.hostent** %6, align 8
  %82 = getelementptr inbounds %struct.hostent, %struct.hostent* %81, i32 0, i32 2
  %83 = load i8**, i8*** %82, align 8
  %84 = icmp ne i8** %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %264

86:                                               ; preds = %77, %72
  %87 = load i8**, i8*** %8, align 8
  %88 = icmp ne i8** %87, null
  br i1 %88, label %89, label %159

89:                                               ; preds = %86
  %90 = load i8**, i8*** %9, align 8
  %91 = icmp ne i8** %90, null
  br i1 %91, label %92, label %159

92:                                               ; preds = %89
  %93 = load i8**, i8*** %8, align 8
  store i8** %93, i8*** %11, align 8
  br label %94

94:                                               ; preds = %122, %92
  %95 = load i8**, i8*** %8, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %125

98:                                               ; preds = %94
  store i32 0, i32* %12, align 4
  %99 = load i8**, i8*** %9, align 8
  store i8** %99, i8*** %10, align 8
  br label %100

100:                                              ; preds = %113, %98
  %101 = load i8**, i8*** %10, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %116

104:                                              ; preds = %100
  %105 = load i8**, i8*** %8, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = load i8**, i8*** %10, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @strcmp(i8* %106, i8* %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  store i32 1, i32* %12, align 4
  br label %116

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112
  %114 = load i8**, i8*** %10, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i32 1
  store i8** %115, i8*** %10, align 8
  br label %100

116:                                              ; preds = %111, %100
  %117 = load i32, i32* %12, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %264

121:                                              ; preds = %116
  br label %122

122:                                              ; preds = %121
  %123 = load i8**, i8*** %8, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i32 1
  store i8** %124, i8*** %8, align 8
  br label %94

125:                                              ; preds = %94
  %126 = load i8**, i8*** %11, align 8
  store i8** %126, i8*** %8, align 8
  br label %127

127:                                              ; preds = %155, %125
  %128 = load i8**, i8*** %9, align 8
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %158

131:                                              ; preds = %127
  store i32 0, i32* %12, align 4
  %132 = load i8**, i8*** %8, align 8
  store i8** %132, i8*** %10, align 8
  br label %133

133:                                              ; preds = %146, %131
  %134 = load i8**, i8*** %10, align 8
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %149

137:                                              ; preds = %133
  %138 = load i8**, i8*** %9, align 8
  %139 = load i8*, i8** %138, align 8
  %140 = load i8**, i8*** %10, align 8
  %141 = load i8*, i8** %140, align 8
  %142 = call i64 @strcmp(i8* %139, i8* %141)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  store i32 1, i32* %12, align 4
  br label %149

145:                                              ; preds = %137
  br label %146

146:                                              ; preds = %145
  %147 = load i8**, i8*** %10, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i32 1
  store i8** %148, i8*** %10, align 8
  br label %133

149:                                              ; preds = %144, %133
  %150 = load i32, i32* %12, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %264

154:                                              ; preds = %149
  br label %155

155:                                              ; preds = %154
  %156 = load i8**, i8*** %9, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i32 1
  store i8** %157, i8*** %9, align 8
  br label %127

158:                                              ; preds = %127
  br label %159

159:                                              ; preds = %158, %89, %86
  %160 = load %struct.hostent*, %struct.hostent** %5, align 8
  %161 = getelementptr inbounds %struct.hostent, %struct.hostent* %160, i32 0, i32 3
  %162 = load i8**, i8*** %161, align 8
  store i8** %162, i8*** %8, align 8
  %163 = load %struct.hostent*, %struct.hostent** %6, align 8
  %164 = getelementptr inbounds %struct.hostent, %struct.hostent* %163, i32 0, i32 3
  %165 = load i8**, i8*** %164, align 8
  store i8** %165, i8*** %9, align 8
  %166 = load %struct.hostent*, %struct.hostent** %5, align 8
  %167 = getelementptr inbounds %struct.hostent, %struct.hostent* %166, i32 0, i32 3
  %168 = load i8**, i8*** %167, align 8
  %169 = icmp eq i8** %168, null
  br i1 %169, label %175, label %170

170:                                              ; preds = %159
  %171 = load %struct.hostent*, %struct.hostent** %6, align 8
  %172 = getelementptr inbounds %struct.hostent, %struct.hostent* %171, i32 0, i32 3
  %173 = load i8**, i8*** %172, align 8
  %174 = icmp eq i8** %173, null
  br i1 %174, label %175, label %184

175:                                              ; preds = %170, %159
  %176 = load %struct.hostent*, %struct.hostent** %5, align 8
  %177 = getelementptr inbounds %struct.hostent, %struct.hostent* %176, i32 0, i32 3
  %178 = load i8**, i8*** %177, align 8
  %179 = load %struct.hostent*, %struct.hostent** %6, align 8
  %180 = getelementptr inbounds %struct.hostent, %struct.hostent* %179, i32 0, i32 3
  %181 = load i8**, i8*** %180, align 8
  %182 = icmp ne i8** %178, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %175
  br label %264

184:                                              ; preds = %175, %170
  %185 = load i8**, i8*** %8, align 8
  %186 = icmp ne i8** %185, null
  br i1 %186, label %187, label %263

187:                                              ; preds = %184
  %188 = load i8**, i8*** %9, align 8
  %189 = icmp ne i8** %188, null
  br i1 %189, label %190, label %263

190:                                              ; preds = %187
  %191 = load i8**, i8*** %8, align 8
  store i8** %191, i8*** %11, align 8
  br label %192

192:                                              ; preds = %223, %190
  %193 = load i8**, i8*** %8, align 8
  %194 = load i8*, i8** %193, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %226

196:                                              ; preds = %192
  store i32 0, i32* %12, align 4
  %197 = load i8**, i8*** %9, align 8
  store i8** %197, i8*** %10, align 8
  br label %198

198:                                              ; preds = %214, %196
  %199 = load i8**, i8*** %10, align 8
  %200 = load i8*, i8** %199, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %217

202:                                              ; preds = %198
  %203 = load i8**, i8*** %8, align 8
  %204 = load i8*, i8** %203, align 8
  %205 = load i8**, i8*** %10, align 8
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.hostent*, %struct.hostent** %5, align 8
  %208 = getelementptr inbounds %struct.hostent, %struct.hostent* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = call i64 @memcmp(i8* %204, i8* %206, i32 %209)
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %202
  store i32 1, i32* %12, align 4
  br label %217

213:                                              ; preds = %202
  br label %214

214:                                              ; preds = %213
  %215 = load i8**, i8*** %10, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i32 1
  store i8** %216, i8*** %10, align 8
  br label %198

217:                                              ; preds = %212, %198
  %218 = load i32, i32* %12, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %217
  %221 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %264

222:                                              ; preds = %217
  br label %223

223:                                              ; preds = %222
  %224 = load i8**, i8*** %8, align 8
  %225 = getelementptr inbounds i8*, i8** %224, i32 1
  store i8** %225, i8*** %8, align 8
  br label %192

226:                                              ; preds = %192
  %227 = load i8**, i8*** %11, align 8
  store i8** %227, i8*** %8, align 8
  br label %228

228:                                              ; preds = %259, %226
  %229 = load i8**, i8*** %9, align 8
  %230 = load i8*, i8** %229, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %232, label %262

232:                                              ; preds = %228
  store i32 0, i32* %12, align 4
  %233 = load i8**, i8*** %8, align 8
  store i8** %233, i8*** %10, align 8
  br label %234

234:                                              ; preds = %250, %232
  %235 = load i8**, i8*** %10, align 8
  %236 = load i8*, i8** %235, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %238, label %253

238:                                              ; preds = %234
  %239 = load i8**, i8*** %9, align 8
  %240 = load i8*, i8** %239, align 8
  %241 = load i8**, i8*** %10, align 8
  %242 = load i8*, i8** %241, align 8
  %243 = load %struct.hostent*, %struct.hostent** %5, align 8
  %244 = getelementptr inbounds %struct.hostent, %struct.hostent* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = call i64 @memcmp(i8* %240, i8* %242, i32 %245)
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %238
  store i32 1, i32* %12, align 4
  br label %253

249:                                              ; preds = %238
  br label %250

250:                                              ; preds = %249
  %251 = load i8**, i8*** %10, align 8
  %252 = getelementptr inbounds i8*, i8** %251, i32 1
  store i8** %252, i8*** %10, align 8
  br label %234

253:                                              ; preds = %248, %234
  %254 = load i32, i32* %12, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %253
  %257 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %264

258:                                              ; preds = %253
  br label %259

259:                                              ; preds = %258
  %260 = load i8**, i8*** %9, align 8
  %261 = getelementptr inbounds i8*, i8** %260, i32 1
  store i8** %261, i8*** %9, align 8
  br label %228

262:                                              ; preds = %228
  br label %263

263:                                              ; preds = %262, %187, %184
  store i32 0, i32* %4, align 4
  br label %274

264:                                              ; preds = %256, %220, %183, %152, %119, %85, %60, %34, %23
  %265 = load i8*, i8** %7, align 8
  %266 = icmp eq i8* %265, null
  br i1 %266, label %267, label %273

267:                                              ; preds = %264
  %268 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %269 = load %struct.hostent*, %struct.hostent** %5, align 8
  %270 = call i32 @dump_hostent(%struct.hostent* %269)
  %271 = load %struct.hostent*, %struct.hostent** %6, align 8
  %272 = call i32 @dump_hostent(%struct.hostent* %271)
  br label %273

273:                                              ; preds = %267, %264
  store i32 -1, i32* %4, align 4
  br label %274

274:                                              ; preds = %273, %263, %16
  %275 = load i32, i32* %4, align 4
  ret i32 %275
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @dump_hostent(%struct.hostent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
