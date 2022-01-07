; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_parsestreams.c_parserput.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_parsestreams.c_parserput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i64 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i8 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_25__* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { i32 }

@DD_RPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"parse: parserput - forward type 0x%x\0A\00", align 1
@QPCTL = common dso_local global i8 0, align 1
@PARSE_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"parse: parserput - parser disabled - forward type 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"parse: parserput - M_%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"BREAK\00", align 1
@BPRI_MED = common dso_local global i32 0, align 4
@cd_invert = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"parse: parserput - M_%sHANGUP\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"UN\00", align 1
@SYNC_ONE = common dso_local global i64 0, align 8
@SYNC_ZERO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_27__*)* @parserput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parserput(%struct.TYPE_25__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_24__, align 4
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_24__, align 4
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %4, align 8
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %5, align 1
  %19 = zext i8 %18 to i32
  switch i32 %19, label %20 [
    i32 131, label %50
    i32 130, label %50
    i32 129, label %218
    i32 128, label %218
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* @DD_RPUT, align 4
  %22 = load i8, i8* %5, align 1
  %23 = zext i8 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @parseprintf(i32 %21, i8* %24)
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @canput(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %20
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* @QPCTL, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp sgt i32 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %31, %20
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %44 = call i32 @putnext(%struct.TYPE_25__* %42, %struct.TYPE_27__* %43)
  br label %49

45:                                               ; preds = %31
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %48 = call i32 @putq(%struct.TYPE_25__* %46, %struct.TYPE_27__* %47)
  br label %49

49:                                               ; preds = %45, %41
  br label %344

50:                                               ; preds = %2, %2
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = bitcast i8* %54 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %55, %struct.TYPE_26__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %57 = call i32 @uniqtime(i32* %56)
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @PARSE_ENABLE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %94, label %64

64:                                               ; preds = %50
  %65 = load i32, i32* @DD_RPUT, align 4
  %66 = load i8, i8* %5, align 1
  %67 = zext i8 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @parseprintf(i32 %65, i8* %68)
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @canput(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %64
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8, i8* @QPCTL, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp sgt i32 %81, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %75, %64
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %88 = call i32 @putnext(%struct.TYPE_25__* %86, %struct.TYPE_27__* %87)
  br label %93

89:                                               ; preds = %75
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %92 = call i32 @putq(%struct.TYPE_25__* %90, %struct.TYPE_27__* %91)
  br label %93

93:                                               ; preds = %89, %85
  br label %217

94:                                               ; preds = %50
  %95 = load i32, i32* @DD_RPUT, align 4
  %96 = load i8, i8* %5, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %97, 130
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %101 = call i32 @parseprintf(i32 %95, i8* %100)
  %102 = load i8, i8* %5, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 130
  br i1 %104, label %105, label %165

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %163, %105
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %108 = icmp ne %struct.TYPE_27__* %107, null
  br i1 %108, label %109, label %164

109:                                              ; preds = %106
  %110 = call i64 @rdchar(%struct.TYPE_27__** %4)
  store i64 %110, i64* %8, align 8
  %111 = load i64, i64* %8, align 8
  %112 = icmp ne i64 %111, -1
  br i1 %112, label %113, label %163

113:                                              ; preds = %109
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 2
  %116 = load i64, i64* %8, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 @parse_ioread(%struct.TYPE_21__* %115, i32 %117, %struct.TYPE_24__* %9)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %163

120:                                              ; preds = %113
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %7, align 8
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @canput(i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %152

128:                                              ; preds = %120
  %129 = load i32, i32* @BPRI_MED, align 4
  %130 = call %struct.TYPE_27__* @allocb(i32 4, i32 %129)
  store %struct.TYPE_27__* %130, %struct.TYPE_27__** %7, align 8
  %131 = icmp ne %struct.TYPE_27__* %130, null
  br i1 %131, label %132, label %152

132:                                              ; preds = %128
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = ptrtoint i32* %135 to i32
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @bcopy(i32 %136, i32 %139, i32 4)
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = add i64 %144, 4
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %142, align 8
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %148, align 8
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %151 = call i32 @putnext(%struct.TYPE_25__* %149, %struct.TYPE_27__* %150)
  br label %159

152:                                              ; preds = %128, %120
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %154 = icmp ne %struct.TYPE_27__* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %157 = call i32 @freemsg(%struct.TYPE_27__* %156)
  br label %158

158:                                              ; preds = %155, %152
  br label %159

159:                                              ; preds = %158, %132
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 2
  %162 = call i32 @parse_iodone(%struct.TYPE_21__* %161)
  br label %163

163:                                              ; preds = %159, %113, %109
  br label %106

164:                                              ; preds = %106
  br label %216

165:                                              ; preds = %94
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 2
  %168 = call i32 @parse_ioread(%struct.TYPE_21__* %167, i32 0, %struct.TYPE_24__* %9)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %213

170:                                              ; preds = %165
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %7, align 8
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @canput(i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %202

178:                                              ; preds = %170
  %179 = load i32, i32* @BPRI_MED, align 4
  %180 = call %struct.TYPE_27__* @allocb(i32 4, i32 %179)
  store %struct.TYPE_27__* %180, %struct.TYPE_27__** %7, align 8
  %181 = icmp ne %struct.TYPE_27__* %180, null
  br i1 %181, label %182, label %202

182:                                              ; preds = %178
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 0
  %186 = ptrtoint i32* %185 to i32
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @bcopy(i32 %186, i32 %189, i32 4)
  %191 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = add i64 %194, 4
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %192, align 8
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i32 0, i32 3
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %198, align 8
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %201 = call i32 @putnext(%struct.TYPE_25__* %199, %struct.TYPE_27__* %200)
  br label %209

202:                                              ; preds = %178, %170
  %203 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %204 = icmp ne %struct.TYPE_27__* %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %207 = call i32 @freemsg(%struct.TYPE_27__* %206)
  br label %208

208:                                              ; preds = %205, %202
  br label %209

209:                                              ; preds = %208, %182
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 2
  %212 = call i32 @parse_iodone(%struct.TYPE_21__* %211)
  br label %213

213:                                              ; preds = %209, %165
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %215 = call i32 @freemsg(%struct.TYPE_27__* %214)
  br label %216

216:                                              ; preds = %213, %164
  br label %344

217:                                              ; preds = %93
  br label %218

218:                                              ; preds = %2, %2, %217
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = inttoptr i64 %221 to i8*
  %223 = bitcast i8* %222 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %223, %struct.TYPE_26__** %10, align 8
  %224 = load i32, i32* @cd_invert, align 4
  %225 = load i8, i8* %5, align 1
  %226 = zext i8 %225 to i32
  %227 = icmp eq i32 %226, 128
  %228 = zext i1 %227 to i32
  %229 = xor i32 %224, %228
  store i32 %229, i32* %13, align 4
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %231 = call i32 @uniqtime(i32* %230)
  %232 = load i32, i32* @DD_RPUT, align 4
  %233 = load i8, i8* %5, align 1
  %234 = zext i8 %233 to i32
  %235 = icmp eq i32 %234, 129
  %236 = zext i1 %235 to i64
  %237 = select i1 %235, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)
  %238 = call i32 @parseprintf(i32 %232, i8* %237)
  %239 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @PARSE_ENABLE, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %304

245:                                              ; preds = %218
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %246, i32 0, i32 2
  %248 = load i32, i32* %13, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %245
  %251 = load i64, i64* @SYNC_ONE, align 8
  br label %254

252:                                              ; preds = %245
  %253 = load i64, i64* @SYNC_ZERO, align 8
  br label %254

254:                                              ; preds = %252, %250
  %255 = phi i64 [ %251, %250 ], [ %253, %252 ]
  %256 = trunc i64 %255 to i32
  %257 = call i32 @parse_iopps(%struct.TYPE_21__* %247, i32 %256, %struct.TYPE_24__* %11)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %304

259:                                              ; preds = %254
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %12, align 8
  %260 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %261 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %260, i32 0, i32 3
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @canput(i32 %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %291

267:                                              ; preds = %259
  %268 = load i32, i32* @BPRI_MED, align 4
  %269 = call %struct.TYPE_27__* @allocb(i32 4, i32 %268)
  store %struct.TYPE_27__* %269, %struct.TYPE_27__** %12, align 8
  %270 = icmp ne %struct.TYPE_27__* %269, null
  br i1 %270, label %271, label %291

271:                                              ; preds = %267
  %272 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 0
  %275 = ptrtoint i32* %274 to i32
  %276 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %277 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @bcopy(i32 %275, i32 %278, i32 4)
  %280 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %281 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = sext i32 %282 to i64
  %284 = add i64 %283, 4
  %285 = trunc i64 %284 to i32
  store i32 %285, i32* %281, align 8
  %286 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %287 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %286, i32 0, i32 3
  %288 = load %struct.TYPE_25__*, %struct.TYPE_25__** %287, align 8
  %289 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %290 = call i32 @putnext(%struct.TYPE_25__* %288, %struct.TYPE_27__* %289)
  br label %298

291:                                              ; preds = %267, %259
  %292 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %293 = icmp ne %struct.TYPE_27__* %292, null
  br i1 %293, label %294, label %297

294:                                              ; preds = %291
  %295 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %296 = call i32 @freemsg(%struct.TYPE_27__* %295)
  br label %297

297:                                              ; preds = %294, %291
  br label %298

298:                                              ; preds = %297, %271
  %299 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %300 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %299, i32 0, i32 2
  %301 = call i32 @parse_iodone(%struct.TYPE_21__* %300)
  %302 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %303 = call i32 @freemsg(%struct.TYPE_27__* %302)
  br label %329

304:                                              ; preds = %254, %218
  %305 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @canput(i32 %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %320, label %310

310:                                              ; preds = %304
  %311 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %311, i32 0, i32 1
  %313 = load %struct.TYPE_22__*, %struct.TYPE_22__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %313, i32 0, i32 0
  %315 = load i8, i8* %314, align 1
  %316 = zext i8 %315 to i32
  %317 = load i8, i8* @QPCTL, align 1
  %318 = zext i8 %317 to i32
  %319 = icmp sgt i32 %316, %318
  br i1 %319, label %320, label %324

320:                                              ; preds = %310, %304
  %321 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %322 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %323 = call i32 @putnext(%struct.TYPE_25__* %321, %struct.TYPE_27__* %322)
  br label %328

324:                                              ; preds = %310
  %325 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %326 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %327 = call i32 @putq(%struct.TYPE_25__* %325, %struct.TYPE_27__* %326)
  br label %328

328:                                              ; preds = %324, %320
  br label %329

329:                                              ; preds = %328, %298
  %330 = load i32, i32* %13, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %343

332:                                              ; preds = %329
  %333 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %336 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %336, i32 0, i32 1
  store i32 %334, i32* %337, align 4
  %338 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %339 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %340, align 4
  br label %343

343:                                              ; preds = %332, %329
  br label %344

344:                                              ; preds = %343, %216, %49
  ret i32 0
}

declare dso_local i32 @parseprintf(i32, i8*) #1

declare dso_local i32 @canput(i32) #1

declare dso_local i32 @putnext(%struct.TYPE_25__*, %struct.TYPE_27__*) #1

declare dso_local i32 @putq(%struct.TYPE_25__*, %struct.TYPE_27__*) #1

declare dso_local i32 @uniqtime(i32*) #1

declare dso_local i64 @rdchar(%struct.TYPE_27__**) #1

declare dso_local i32 @parse_ioread(%struct.TYPE_21__*, i32, %struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_27__* @allocb(i32, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @freemsg(%struct.TYPE_27__*) #1

declare dso_local i32 @parse_iodone(%struct.TYPE_21__*) #1

declare dso_local i32 @parse_iopps(%struct.TYPE_21__*, i32, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
