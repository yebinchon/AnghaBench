; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ent_setup.c__kadm5_setup_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ent_setup.c__kadm5_setup_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_20__, i32, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_16__*, i32, i32, i64, i32, i64, i32, i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_16__* }

@KADM5_PRINC_EXPIRE_TIME = common dso_local global i32 0, align 4
@KADM5_PW_EXPIRATION = common dso_local global i32 0, align 4
@KADM5_ATTRIBUTES = common dso_local global i32 0, align 4
@KADM5_MAX_LIFE = common dso_local global i32 0, align 4
@KADM5_KVNO = common dso_local global i32 0, align 4
@KADM5_MAX_RLIFE = common dso_local global i32 0, align 4
@KADM5_KEY_DATA = common dso_local global i32 0, align 4
@KADM5_TL_DATA = common dso_local global i32 0, align 4
@KADM5_FAIL_AUTH_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_kadm5_setup_entry(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1, i32 %2, %struct.TYPE_18__* %3, i32 %4, %struct.TYPE_18__* %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_18__* %5, %struct.TYPE_18__** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @KADM5_PRINC_EXPIRE_TIME, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %7
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @KADM5_PRINC_EXPIRE_TIME, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 8
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @set_value(i32 %36, i64 %39)
  br label %47

41:                                               ; preds = %27
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @set_null(i32 %45)
  br label %47

47:                                               ; preds = %41, %32
  br label %48

48:                                               ; preds = %47, %22, %7
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @KADM5_PW_EXPIRATION, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %79

53:                                               ; preds = %48
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @KADM5_PW_EXPIRATION, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %53
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 7
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 7
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @set_value(i32 %67, i64 %70)
  br label %78

72:                                               ; preds = %58
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @set_null(i32 %76)
  br label %78

78:                                               ; preds = %72, %63
  br label %79

79:                                               ; preds = %78, %53, %48
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @KADM5_ATTRIBUTES, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %119

84:                                               ; preds = %79
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @KADM5_ATTRIBUTES, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 3
  %96 = call i32 @attr_to_flags(i32 %92, %struct.TYPE_20__* %95)
  br label %118

97:                                               ; preds = %84
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* @KADM5_ATTRIBUTES, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %97
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 3
  %109 = call i32 @attr_to_flags(i32 %105, %struct.TYPE_20__* %108)
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  store i64 0, i64* %113, align 8
  br label %117

114:                                              ; preds = %97
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %116 = call i32 @default_flags(%struct.TYPE_19__* %115, i32 1)
  br label %117

117:                                              ; preds = %114, %102
  br label %118

118:                                              ; preds = %117, %89
  br label %119

119:                                              ; preds = %118, %79
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* @KADM5_MAX_LIFE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %178

124:                                              ; preds = %119
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* @KADM5_MAX_LIFE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %150

129:                                              ; preds = %124
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %129
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @set_value(i32 %138, i64 %141)
  br label %149

143:                                              ; preds = %129
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @set_null(i32 %147)
  br label %149

149:                                              ; preds = %143, %134
  br label %177

150:                                              ; preds = %124
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* @KADM5_MAX_LIFE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %176

155:                                              ; preds = %150
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %155
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @set_value(i32 %164, i64 %167)
  br label %175

169:                                              ; preds = %155
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @set_null(i32 %173)
  br label %175

175:                                              ; preds = %169, %160
  br label %176

176:                                              ; preds = %175, %150
  br label %177

177:                                              ; preds = %176, %149
  br label %178

178:                                              ; preds = %177, %119
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* @KADM5_KVNO, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %178
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* @KADM5_KVNO, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %183
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 1
  store i32 %191, i32* %194, align 4
  br label %195

195:                                              ; preds = %188, %183, %178
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* @KADM5_MAX_RLIFE, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %254

200:                                              ; preds = %195
  %201 = load i32, i32* %13, align 4
  %202 = load i32, i32* @KADM5_MAX_RLIFE, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %226

205:                                              ; preds = %200
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %205
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @set_value(i32 %214, i64 %217)
  br label %225

219:                                              ; preds = %205
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @set_null(i32 %223)
  br label %225

225:                                              ; preds = %219, %210
  br label %253

226:                                              ; preds = %200
  %227 = load i32, i32* %15, align 4
  %228 = load i32, i32* @KADM5_MAX_RLIFE, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %252

231:                                              ; preds = %226
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %245

236:                                              ; preds = %231
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = call i32 @set_value(i32 %240, i64 %243)
  br label %251

245:                                              ; preds = %231
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @set_null(i32 %249)
  br label %251

251:                                              ; preds = %245, %236
  br label %252

252:                                              ; preds = %251, %226
  br label %253

253:                                              ; preds = %252, %225
  br label %254

254:                                              ; preds = %253, %195
  %255 = load i32, i32* %11, align 4
  %256 = load i32, i32* @KADM5_KEY_DATA, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %275

259:                                              ; preds = %254
  %260 = load i32, i32* %13, align 4
  %261 = load i32, i32* @KADM5_KEY_DATA, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %275

264:                                              ; preds = %259
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @_kadm5_set_keys2(%struct.TYPE_17__* %265, %struct.TYPE_15__* %267, i32 %270, i32 %273)
  br label %275

275:                                              ; preds = %264, %259, %254
  %276 = load i32, i32* %11, align 4
  %277 = load i32, i32* @KADM5_TL_DATA, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %307

280:                                              ; preds = %275
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 0
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %282, align 8
  store %struct.TYPE_16__* %283, %struct.TYPE_16__** %16, align 8
  br label %284

284:                                              ; preds = %302, %280
  %285 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %286 = icmp ne %struct.TYPE_16__* %285, null
  br i1 %286, label %287, label %306

287:                                              ; preds = %284
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %296 = call i64 @perform_tl_data(i32 %290, i32 %293, %struct.TYPE_19__* %294, %struct.TYPE_16__* %295)
  store i64 %296, i64* %17, align 8
  %297 = load i64, i64* %17, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %287
  %300 = load i64, i64* %17, align 8
  store i64 %300, i64* %8, align 8
  br label %314

301:                                              ; preds = %287
  br label %302

302:                                              ; preds = %301
  %303 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %304, align 8
  store %struct.TYPE_16__* %305, %struct.TYPE_16__** %16, align 8
  br label %284

306:                                              ; preds = %284
  br label %307

307:                                              ; preds = %306, %275
  %308 = load i32, i32* %11, align 4
  %309 = load i32, i32* @KADM5_FAIL_AUTH_COUNT, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %307
  br label %313

313:                                              ; preds = %312, %307
  store i64 0, i64* %8, align 8
  br label %314

314:                                              ; preds = %313, %299
  %315 = load i64, i64* %8, align 8
  ret i64 %315
}

declare dso_local i32 @set_value(i32, i64) #1

declare dso_local i32 @set_null(i32) #1

declare dso_local i32 @attr_to_flags(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @default_flags(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @_kadm5_set_keys2(%struct.TYPE_17__*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @perform_tl_data(i32, i32, %struct.TYPE_19__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
