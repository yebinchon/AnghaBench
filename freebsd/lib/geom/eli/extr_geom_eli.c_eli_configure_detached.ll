; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_configure_detached.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_configure_detached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_eli_metadata = type { i32 }

@G_ELI_FLAG_BOOT = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"BOOT flag already configured for %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"BOOT flag not configured for %s.\0A\00", align 1
@G_ELI_FLAG_GELIBOOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"GELIBOOT flag already configured for %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"GELIBOOT flag not configured for %s.\0A\00", align 1
@G_ELI_FLAG_GELIDISPLAYPASS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"GELIDISPLAYPASS flag already configured for %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"GELIDISPLAYPASS flag not configured for %s.\0A\00", align 1
@G_ELI_FLAG_NODELETE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"TRIM disable flag already configured for %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"TRIM disable flag not configured for %s.\0A\00", align 1
@G_ELI_FLAG_AUTORESIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"AUTORESIZE flag already configured for %s.\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"AUTORESIZE flag not configured for %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, i8*, i32, i32, i32, i32, i32)* @eli_configure_detached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eli_configure_detached(%struct.gctl_req* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.gctl_req*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.g_eli_metadata, align 4
  %16 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.gctl_req*, %struct.gctl_req** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @eli_metadata_read(%struct.gctl_req* %17, i8* %18, %struct.g_eli_metadata* %15)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %7
  br label %291

22:                                               ; preds = %7
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %15, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @G_ELI_FLAG_BOOT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i64, i64* @verbose, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %34, %31
  br label %74

38:                                               ; preds = %25, %22
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %15, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @G_ELI_FLAG_BOOT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = load i64, i64* @verbose, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %50, %47
  br label %73

54:                                               ; preds = %41, %38
  %55 = load i32, i32* %10, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, i32* @G_ELI_FLAG_BOOT, align 4
  %62 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %15, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  br label %71

65:                                               ; preds = %57
  %66 = load i32, i32* @G_ELI_FLAG_BOOT, align 4
  %67 = xor i32 %66, -1
  %68 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %15, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %67
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %60
  store i32 1, i32* %16, align 4
  br label %72

72:                                               ; preds = %71, %54
  br label %73

73:                                               ; preds = %72, %53
  br label %74

74:                                               ; preds = %73, %37
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %90

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %15, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @G_ELI_FLAG_GELIBOOT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load i64, i64* @verbose, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %86, %83
  br label %126

90:                                               ; preds = %77, %74
  %91 = load i32, i32* %11, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %15, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @G_ELI_FLAG_GELIBOOT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %93
  %100 = load i64, i64* @verbose, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %102, %99
  br label %125

106:                                              ; preds = %93, %90
  %107 = load i32, i32* %11, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i32, i32* @G_ELI_FLAG_GELIBOOT, align 4
  %114 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %15, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %113
  store i32 %116, i32* %114, align 4
  br label %123

117:                                              ; preds = %109
  %118 = load i32, i32* @G_ELI_FLAG_GELIBOOT, align 4
  %119 = xor i32 %118, -1
  %120 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %15, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, %119
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %117, %112
  store i32 1, i32* %16, align 4
  br label %124

124:                                              ; preds = %123, %106
  br label %125

125:                                              ; preds = %124, %105
  br label %126

126:                                              ; preds = %125, %89
  %127 = load i32, i32* %12, align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %142

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %15, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @G_ELI_FLAG_GELIDISPLAYPASS, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %129
  %136 = load i64, i64* @verbose, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i8*, i8** %9, align 8
  %140 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %138, %135
  br label %178

142:                                              ; preds = %129, %126
  %143 = load i32, i32* %12, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %15, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @G_ELI_FLAG_GELIDISPLAYPASS, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %145
  %152 = load i64, i64* @verbose, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i8*, i8** %9, align 8
  %156 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %155)
  br label %157

157:                                              ; preds = %154, %151
  br label %177

158:                                              ; preds = %145, %142
  %159 = load i32, i32* %12, align 4
  %160 = icmp sge i32 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %158
  %162 = load i32, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load i32, i32* @G_ELI_FLAG_GELIDISPLAYPASS, align 4
  %166 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %15, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %165
  store i32 %168, i32* %166, align 4
  br label %175

169:                                              ; preds = %161
  %170 = load i32, i32* @G_ELI_FLAG_GELIDISPLAYPASS, align 4
  %171 = xor i32 %170, -1
  %172 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %15, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, %171
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %169, %164
  store i32 1, i32* %16, align 4
  br label %176

176:                                              ; preds = %175, %158
  br label %177

177:                                              ; preds = %176, %157
  br label %178

178:                                              ; preds = %177, %141
  %179 = load i32, i32* %13, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %194

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %15, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @G_ELI_FLAG_NODELETE, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %181
  %188 = load i64, i64* @verbose, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i8*, i8** %9, align 8
  %192 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* %191)
  br label %193

193:                                              ; preds = %190, %187
  br label %230

194:                                              ; preds = %181, %178
  %195 = load i32, i32* %13, align 4
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %210

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %15, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @G_ELI_FLAG_NODELETE, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %210, label %203

203:                                              ; preds = %197
  %204 = load i64, i64* @verbose, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i8*, i8** %9, align 8
  %208 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* %207)
  br label %209

209:                                              ; preds = %206, %203
  br label %229

210:                                              ; preds = %197, %194
  %211 = load i32, i32* %13, align 4
  %212 = icmp sge i32 %211, 0
  br i1 %212, label %213, label %228

213:                                              ; preds = %210
  %214 = load i32, i32* %13, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %213
  %217 = load i32, i32* @G_ELI_FLAG_NODELETE, align 4
  %218 = xor i32 %217, -1
  %219 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %15, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = and i32 %220, %218
  store i32 %221, i32* %219, align 4
  br label %227

222:                                              ; preds = %213
  %223 = load i32, i32* @G_ELI_FLAG_NODELETE, align 4
  %224 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %15, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %225, %223
  store i32 %226, i32* %224, align 4
  br label %227

227:                                              ; preds = %222, %216
  store i32 1, i32* %16, align 4
  br label %228

228:                                              ; preds = %227, %210
  br label %229

229:                                              ; preds = %228, %209
  br label %230

230:                                              ; preds = %229, %193
  %231 = load i32, i32* %14, align 4
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %233, label %246

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %15, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @G_ELI_FLAG_AUTORESIZE, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %233
  %240 = load i64, i64* @verbose, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load i8*, i8** %9, align 8
  %244 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i8* %243)
  br label %245

245:                                              ; preds = %242, %239
  br label %282

246:                                              ; preds = %233, %230
  %247 = load i32, i32* %14, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %262

249:                                              ; preds = %246
  %250 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %15, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @G_ELI_FLAG_AUTORESIZE, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %262, label %255

255:                                              ; preds = %249
  %256 = load i64, i64* @verbose, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load i8*, i8** %9, align 8
  %260 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i8* %259)
  br label %261

261:                                              ; preds = %258, %255
  br label %281

262:                                              ; preds = %249, %246
  %263 = load i32, i32* %14, align 4
  %264 = icmp sge i32 %263, 0
  br i1 %264, label %265, label %280

265:                                              ; preds = %262
  %266 = load i32, i32* %14, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %265
  %269 = load i32, i32* @G_ELI_FLAG_AUTORESIZE, align 4
  %270 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %15, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = or i32 %271, %269
  store i32 %272, i32* %270, align 4
  br label %279

273:                                              ; preds = %265
  %274 = load i32, i32* @G_ELI_FLAG_AUTORESIZE, align 4
  %275 = xor i32 %274, -1
  %276 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %15, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = and i32 %277, %275
  store i32 %278, i32* %276, align 4
  br label %279

279:                                              ; preds = %273, %268
  store i32 1, i32* %16, align 4
  br label %280

280:                                              ; preds = %279, %262
  br label %281

281:                                              ; preds = %280, %261
  br label %282

282:                                              ; preds = %281, %245
  %283 = load i32, i32* %16, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %282
  %286 = load %struct.gctl_req*, %struct.gctl_req** %8, align 8
  %287 = load i8*, i8** %9, align 8
  %288 = call i32 @eli_metadata_store(%struct.gctl_req* %286, i8* %287, %struct.g_eli_metadata* %15)
  br label %289

289:                                              ; preds = %285, %282
  %290 = call i32 @explicit_bzero(%struct.g_eli_metadata* %15, i32 4)
  br label %291

291:                                              ; preds = %289, %21
  ret void
}

declare dso_local i32 @eli_metadata_read(%struct.gctl_req*, i8*, %struct.g_eli_metadata*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @eli_metadata_store(%struct.gctl_req*, i8*, %struct.g_eli_metadata*) #1

declare dso_local i32 @explicit_bzero(%struct.g_eli_metadata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
