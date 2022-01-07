; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_clean_ttys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_clean_ttys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_5__*, i64, i64, i64, i64, i64, i64 }
%struct.ttyent = type { i8*, i32, i64 }

@sessions = common dso_local global %struct.TYPE_5__* null, align 8
@SE_PRESENT = common dso_local global i32 0, align 4
@TTY_ON = common dso_local global i32 0, align 4
@SE_SHUTDOWN = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"can't parse getty for port %s\00", align 1
@multi_user = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @clean_ttys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clean_ttys() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.ttyent*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sessions, align 8
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %1, align 8
  br label %9

9:                                                ; preds = %19, %0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load i32, i32* @SE_PRESENT, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  br label %19

19:                                               ; preds = %12
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %1, align 8
  br label %9

23:                                               ; preds = %9
  store i32 3, i32* %4, align 4
  br label %24

24:                                               ; preds = %236, %235, %71, %23
  %25 = call %struct.ttyent* (...) @getttyent()
  store %struct.ttyent* %25, %struct.ttyent** %3, align 8
  %26 = icmp ne %struct.ttyent* %25, null
  br i1 %26, label %27, label %240

27:                                               ; preds = %24
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sessions, align 8
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %1, align 8
  br label %29

29:                                               ; preds = %46, %27
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = load %struct.ttyent*, %struct.ttyent** %3, align 8
  %34 = getelementptr inbounds %struct.ttyent, %struct.ttyent* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 8
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = call i64 @strcmp(i8* %35, i64 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %51

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %2, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %1, align 8
  br label %29

51:                                               ; preds = %44, %29
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  br i1 %53, label %54, label %236

54:                                               ; preds = %51
  %55 = load i32, i32* @SE_PRESENT, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.ttyent*, %struct.ttyent** %3, align 8
  %61 = getelementptr inbounds %struct.ttyent, %struct.ttyent* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @TTY_ON, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %54
  %67 = load %struct.ttyent*, %struct.ttyent** %3, align 8
  %68 = getelementptr inbounds %struct.ttyent, %struct.ttyent* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %66, %54
  %72 = load i32, i32* @SE_SHUTDOWN, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @SIGHUP, align 4
  %81 = call i32 @kill(i32 %79, i32 %80)
  br label %24

82:                                               ; preds = %66
  %83 = load i32, i32* @SE_SHUTDOWN, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 7
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %82
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 7
  %96 = load i64, i64* %95, align 8
  %97 = call i8* @strdup(i64 %96)
  br label %99

98:                                               ; preds = %82
  br label %99

99:                                               ; preds = %98, %93
  %100 = phi i8* [ %97, %93 ], [ null, %98 ]
  store i8* %100, i8** %5, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = call i8* @strdup(i64 %108)
  br label %111

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110, %105
  %112 = phi i8* [ %109, %105 ], [ null, %110 ]
  store i8* %112, i8** %6, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = call i8* @strdup(i64 %120)
  br label %123

122:                                              ; preds = %111
  br label %123

123:                                              ; preds = %122, %117
  %124 = phi i8* [ %121, %117 ], [ null, %122 ]
  store i8* %124, i8** %7, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %126 = load %struct.ttyent*, %struct.ttyent** %3, align 8
  %127 = call i64 @setupargv(%struct.TYPE_5__* %125, %struct.ttyent* %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %123
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 8
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %132)
  %134 = load i32, i32* @SE_SHUTDOWN, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @SIGHUP, align 4
  %143 = call i32 @kill(i32 %141, i32 %142)
  br label %217

144:                                              ; preds = %123
  %145 = load i8*, i8** %5, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %206

147:                                              ; preds = %144
  %148 = load i8*, i8** %7, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %155, label %150

150:                                              ; preds = %147
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %206, label %155

155:                                              ; preds = %150, %147
  %156 = load i8*, i8** %7, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %206

163:                                              ; preds = %158, %155
  %164 = load i8*, i8** %6, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %171, label %166

166:                                              ; preds = %163
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 6
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %206, label %171

171:                                              ; preds = %166, %163
  %172 = load i8*, i8** %6, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 6
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %206

179:                                              ; preds = %174, %171
  %180 = load i8*, i8** %5, align 8
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 7
  %183 = load i64, i64* %182, align 8
  %184 = call i64 @strcmp(i8* %180, i64 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %206, label %186

186:                                              ; preds = %179
  %187 = load i8*, i8** %6, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %196

189:                                              ; preds = %186
  %190 = load i8*, i8** %6, align 8
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 6
  %193 = load i64, i64* %192, align 8
  %194 = call i64 @strcmp(i8* %190, i64 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %206, label %196

196:                                              ; preds = %189, %186
  %197 = load i8*, i8** %7, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %216

199:                                              ; preds = %196
  %200 = load i8*, i8** %7, align 8
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = call i64 @strcmp(i8* %200, i64 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %199, %189, %179, %174, %166, %158, %150, %144
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 4
  store i64 0, i64* %208, align 8
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 3
  store i64 0, i64* %210, align 8
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @SIGHUP, align 4
  %215 = call i32 @kill(i32 %213, i32 %214)
  br label %216

216:                                              ; preds = %206, %199, %196
  br label %217

217:                                              ; preds = %216, %129
  %218 = load i8*, i8** %5, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load i8*, i8** %5, align 8
  %222 = call i32 @free(i8* %221)
  br label %223

223:                                              ; preds = %220, %217
  %224 = load i8*, i8** %6, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load i8*, i8** %6, align 8
  %228 = call i32 @free(i8* %227)
  br label %229

229:                                              ; preds = %226, %223
  %230 = load i8*, i8** %7, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load i8*, i8** %7, align 8
  %234 = call i32 @free(i8* %233)
  br label %235

235:                                              ; preds = %232, %229
  br label %24

236:                                              ; preds = %51
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %238 = load %struct.ttyent*, %struct.ttyent** %3, align 8
  %239 = call i32 @new_session(%struct.TYPE_5__* %237, %struct.ttyent* %238)
  br label %24

240:                                              ; preds = %24
  %241 = call i32 (...) @endttyent()
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sessions, align 8
  store %struct.TYPE_5__* %242, %struct.TYPE_5__** %1, align 8
  br label %243

243:                                              ; preds = %265, %240
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %245 = icmp ne %struct.TYPE_5__* %244, null
  br i1 %245, label %246, label %269

246:                                              ; preds = %243
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @SE_PRESENT, align 4
  %251 = and i32 %249, %250
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %264

253:                                              ; preds = %246
  %254 = load i32, i32* @SE_SHUTDOWN, align 4
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 8
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @SIGHUP, align 4
  %263 = call i32 @kill(i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %253, %246
  br label %265

265:                                              ; preds = %264
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 2
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %267, align 8
  store %struct.TYPE_5__* %268, %struct.TYPE_5__** %1, align 8
  br label %243

269:                                              ; preds = %243
  %270 = load i32, i32* @multi_user, align 4
  ret i32 %270
}

declare dso_local %struct.ttyent* @getttyent(...) #1

declare dso_local i64 @strcmp(i8*, i64) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i8* @strdup(i64) #1

declare dso_local i64 @setupargv(%struct.TYPE_5__*, %struct.ttyent*) #1

declare dso_local i32 @warning(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @new_session(%struct.TYPE_5__*, %struct.ttyent*) #1

declare dso_local i32 @endttyent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
