; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mdconfig/extr_mdconfig.c_md_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mdconfig/extr_mdconfig.c_md_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmesh = type { i32 }
%struct.gprovider = type { i8*, %struct.gconf, %struct.ggeom* }
%struct.gconf = type { i32 }
%struct.ggeom = type { %struct.gclass* }
%struct.gclass = type { i8* }
%struct.gident = type { i64, %struct.gprovider* }
%struct.devstat = type { i32 }

@ISPROVIDER = common dso_local global i64 0, align 8
@CLASS_NAME_MD = common dso_local global i8* null, align 8
@OPT_UNIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"vnode\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"preload\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@nflag = common dso_local global i64 0, align 8
@MD_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@OPT_VERBOSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\09%s\09\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"\09%s\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OPT_DONE = common dso_local global i32 0, align 4
@OPT_LIST = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @md_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_list(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gmesh, align 4
  %9 = alloca %struct.gprovider*, align 8
  %10 = alloca %struct.gconf*, align 8
  %11 = alloca %struct.gident*, align 8
  %12 = alloca %struct.devstat*, align 8
  %13 = alloca %struct.ggeom*, align 8
  %14 = alloca %struct.gclass*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %21, align 8
  store i8* null, i8** %20, align 8
  %23 = call i32 @geom_gettree(%struct.gmesh* %8)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %280

27:                                               ; preds = %3
  %28 = call i32 (...) @geom_stats_open()
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %280

32:                                               ; preds = %27
  %33 = call i8* (...) @geom_stats_snapshot_get()
  store i8* %33, i8** %15, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %280

37:                                               ; preds = %32
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %38

38:                                               ; preds = %202, %123, %117, %89, %72, %49, %37
  %39 = load i8*, i8** %15, align 8
  %40 = call %struct.devstat* @geom_stats_snapshot_next(i8* %39)
  store %struct.devstat* %40, %struct.devstat** %12, align 8
  %41 = icmp ne %struct.devstat* %40, null
  br i1 %41, label %42, label %203

42:                                               ; preds = %38
  %43 = load %struct.devstat*, %struct.devstat** %12, align 8
  %44 = getelementptr inbounds %struct.devstat, %struct.devstat* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.gident* @geom_lookupid(%struct.gmesh* %8, i32 %45)
  store %struct.gident* %46, %struct.gident** %11, align 8
  %47 = load %struct.gident*, %struct.gident** %11, align 8
  %48 = icmp eq %struct.gident* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %38

50:                                               ; preds = %42
  %51 = load %struct.gident*, %struct.gident** %11, align 8
  %52 = getelementptr inbounds %struct.gident, %struct.gident* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ISPROVIDER, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %202

56:                                               ; preds = %50
  %57 = load %struct.gident*, %struct.gident** %11, align 8
  %58 = getelementptr inbounds %struct.gident, %struct.gident* %57, i32 0, i32 1
  %59 = load %struct.gprovider*, %struct.gprovider** %58, align 8
  store %struct.gprovider* %59, %struct.gprovider** %9, align 8
  %60 = load %struct.gprovider*, %struct.gprovider** %9, align 8
  %61 = getelementptr inbounds %struct.gprovider, %struct.gprovider* %60, i32 0, i32 2
  %62 = load %struct.ggeom*, %struct.ggeom** %61, align 8
  store %struct.ggeom* %62, %struct.ggeom** %13, align 8
  %63 = load %struct.ggeom*, %struct.ggeom** %13, align 8
  %64 = getelementptr inbounds %struct.ggeom, %struct.ggeom* %63, i32 0, i32 0
  %65 = load %struct.gclass*, %struct.gclass** %64, align 8
  store %struct.gclass* %65, %struct.gclass** %14, align 8
  %66 = load %struct.gclass*, %struct.gclass** %14, align 8
  %67 = getelementptr inbounds %struct.gclass, %struct.gclass* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** @CLASS_NAME_MD, align 8
  %70 = call i64 @strcmp(i8* %68, i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %56
  br label %38

73:                                               ; preds = %56
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @OPT_UNIT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %73
  %79 = load i8*, i8** %5, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load i8*, i8** %5, align 8
  %83 = load %struct.gprovider*, %struct.gprovider** %9, align 8
  %84 = getelementptr inbounds %struct.gprovider, %struct.gprovider* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @md_find(i8* %82, i8* %85)
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %87, 1
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %38

90:                                               ; preds = %81
  store i32 1, i32* %18, align 4
  br label %91

91:                                               ; preds = %90
  br label %92

92:                                               ; preds = %91, %78, %73
  %93 = load %struct.gprovider*, %struct.gprovider** %9, align 8
  %94 = getelementptr inbounds %struct.gprovider, %struct.gprovider* %93, i32 0, i32 1
  store %struct.gconf* %94, %struct.gconf** %10, align 8
  %95 = load %struct.gconf*, %struct.gconf** %10, align 8
  %96 = call i8* @geom_config_get(%struct.gconf* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %96, i8** %20, align 8
  %97 = load i8*, i8** %20, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %120

99:                                               ; preds = %92
  %100 = load i8*, i8** %20, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i8*, i8** %20, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %103, %99
  %108 = load %struct.gconf*, %struct.gconf** %10, align 8
  %109 = call i8* @geom_config_get(%struct.gconf* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %109, i8** %21, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load i8*, i8** %7, align 8
  %114 = load i8*, i8** %21, align 8
  %115 = call i64 @strcmp(i8* %113, i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %38

118:                                              ; preds = %112, %107
  store i32 1, i32* %17, align 4
  br label %119

119:                                              ; preds = %118
  br label %125

120:                                              ; preds = %103, %92
  %121 = load i8*, i8** %7, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %38

124:                                              ; preds = %120
  br label %125

125:                                              ; preds = %124, %119
  %126 = load i64, i64* @nflag, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %125
  %129 = load %struct.gprovider*, %struct.gprovider** %9, align 8
  %130 = getelementptr inbounds %struct.gprovider, %struct.gprovider* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* @MD_NAME, align 4
  %133 = call i64 @strncmp(i8* %131, i32 %132, i32 2)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %128
  %136 = load %struct.gprovider*, %struct.gprovider** %9, align 8
  %137 = getelementptr inbounds %struct.gprovider, %struct.gprovider* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 2
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %139)
  br label %146

141:                                              ; preds = %128, %125
  %142 = load %struct.gprovider*, %struct.gprovider** %9, align 8
  %143 = getelementptr inbounds %struct.gprovider, %struct.gprovider* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %144)
  br label %146

146:                                              ; preds = %141, %135
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @OPT_VERBOSE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %159, label %151

151:                                              ; preds = %146
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @OPT_UNIT, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %184

156:                                              ; preds = %151
  %157 = load i8*, i8** %7, align 8
  %158 = icmp eq i8* %157, null
  br i1 %158, label %159, label %184

159:                                              ; preds = %156, %146
  %160 = load %struct.gconf*, %struct.gconf** %10, align 8
  %161 = call i8* @geom_config_get(%struct.gconf* %160, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i8* %161, i8** %19, align 8
  %162 = load i8*, i8** %20, align 8
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %162)
  %164 = load i8*, i8** %19, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %159
  %167 = load i8*, i8** %19, align 8
  %168 = call i32 @md_prthumanval(i8* %167)
  br label %169

169:                                              ; preds = %166, %159
  %170 = load i8*, i8** %21, align 8
  %171 = icmp eq i8* %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %21, align 8
  br label %173

173:                                              ; preds = %172, %169
  %174 = load i8*, i8** %21, align 8
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %174)
  store i8* null, i8** %21, align 8
  %176 = load %struct.gconf*, %struct.gconf** %10, align 8
  %177 = call i8* @geom_config_get(%struct.gconf* %176, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  store i8* %177, i8** %22, align 8
  %178 = load i8*, i8** %22, align 8
  %179 = icmp eq i8* %178, null
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8** %22, align 8
  br label %181

181:                                              ; preds = %180, %173
  %182 = load i8*, i8** %22, align 8
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %182)
  br label %184

184:                                              ; preds = %181, %156, %151
  %185 = load i32, i32* @OPT_DONE, align 4
  %186 = load i32, i32* %6, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %6, align 4
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* @OPT_LIST, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %184
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* @OPT_VERBOSE, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %192
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %201

199:                                              ; preds = %192, %184
  %200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %201

201:                                              ; preds = %199, %197
  br label %202

202:                                              ; preds = %201, %50
  br label %38

203:                                              ; preds = %38
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* @OPT_LIST, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %220

208:                                              ; preds = %203
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* @OPT_DONE, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %208
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* @OPT_VERBOSE, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %213
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %220

220:                                              ; preds = %218, %213, %208, %203
  %221 = load i8*, i8** %15, align 8
  %222 = call i32 @geom_stats_snapshot_free(i8* %221)
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* @OPT_UNIT, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %262

227:                                              ; preds = %220
  %228 = load i8*, i8** %7, align 8
  %229 = icmp eq i8* %228, null
  br i1 %229, label %230, label %233

230:                                              ; preds = %227
  %231 = load i32, i32* %18, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %260, label %233

233:                                              ; preds = %230, %227
  %234 = load i8*, i8** %7, align 8
  %235 = icmp eq i8* %234, null
  br i1 %235, label %236, label %242

236:                                              ; preds = %233
  %237 = load i8*, i8** %5, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load i32, i32* %18, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %260, label %242

242:                                              ; preds = %239, %236, %233
  %243 = load i8*, i8** %7, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load i32, i32* %17, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %260, label %248

248:                                              ; preds = %245, %242
  %249 = load i8*, i8** %7, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %261

251:                                              ; preds = %248
  %252 = load i8*, i8** %5, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %254, label %261

254:                                              ; preds = %251
  %255 = load i32, i32* %18, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %254
  %258 = load i32, i32* %17, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %257, %245, %239, %230
  store i32 0, i32* %4, align 4
  br label %280

261:                                              ; preds = %257, %254, %251, %248
  br label %279

262:                                              ; preds = %220
  %263 = load i32, i32* %6, align 4
  %264 = load i32, i32* @OPT_LIST, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %278

267:                                              ; preds = %262
  %268 = load i8*, i8** %7, align 8
  %269 = icmp eq i8* %268, null
  br i1 %269, label %276, label %270

270:                                              ; preds = %267
  %271 = load i8*, i8** %7, align 8
  %272 = icmp ne i8* %271, null
  br i1 %272, label %273, label %277

273:                                              ; preds = %270
  %274 = load i32, i32* %17, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %273, %267
  store i32 0, i32* %4, align 4
  br label %280

277:                                              ; preds = %273, %270
  br label %278

278:                                              ; preds = %277, %262
  br label %279

279:                                              ; preds = %278, %261
  store i32 -1, i32* %4, align 4
  br label %280

280:                                              ; preds = %279, %276, %260, %36, %31, %26
  %281 = load i32, i32* %4, align 4
  ret i32 %281
}

declare dso_local i32 @geom_gettree(%struct.gmesh*) #1

declare dso_local i32 @geom_stats_open(...) #1

declare dso_local i8* @geom_stats_snapshot_get(...) #1

declare dso_local %struct.devstat* @geom_stats_snapshot_next(i8*) #1

declare dso_local %struct.gident* @geom_lookupid(%struct.gmesh*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @md_find(i8*, i8*) #1

declare dso_local i8* @geom_config_get(%struct.gconf*, i8*) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @md_prthumanval(i8*) #1

declare dso_local i32 @geom_stats_snapshot_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
