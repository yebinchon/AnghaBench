; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zones_answer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zones_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zones = type { i32 }
%struct.module_env = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.query_info = type { i32, i32, i32, i32, i32 }
%struct.edns_data = type { i32 }
%struct.regional = type { i32 }
%struct.comm_reply = type { i32 }
%struct.config_strlist = type { i32 }
%struct.view = type { i32, i32, i32, i64 }
%struct.local_data = type { i32 }
%struct.local_zone = type { i32, i32, i32, i32, i32, i32 }

@local_zone_transparent = common dso_local global i32 0, align 4
@local_zone_noview = common dso_local global i32 0, align 4
@local_zone_typetransparent = common dso_local global i32 0, align 4
@local_zone_inform = common dso_local global i32 0, align 4
@local_zone_always_transparent = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"using localzone %s %s from view %s\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"using localzone %s %s\00", align 1
@local_zone_inform_deny = common dso_local global i32 0, align 4
@local_zone_inform_redirect = common dso_local global i32 0, align 4
@local_zone_always_refuse = common dso_local global i32 0, align 4
@local_zone_always_nxdomain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @local_zones_answer(%struct.local_zones* %0, %struct.module_env* %1, %struct.query_info* %2, %struct.edns_data* %3, i32* %4, %struct.regional* %5, %struct.comm_reply* %6, i32* %7, i64 %8, i32* %9, i64 %10, %struct.config_strlist** %11, i64 %12, i8** %13, i32 %14, %struct.view* %15) #0 {
  %17 = alloca i32, align 4
  %18 = alloca %struct.local_zones*, align 8
  %19 = alloca %struct.module_env*, align 8
  %20 = alloca %struct.query_info*, align 8
  %21 = alloca %struct.edns_data*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.regional*, align 8
  %24 = alloca %struct.comm_reply*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct.config_strlist**, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8**, align 8
  %32 = alloca i32, align 4
  %33 = alloca %struct.view*, align 8
  %34 = alloca i32, align 4
  %35 = alloca %struct.local_data*, align 8
  %36 = alloca %struct.local_zone*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca [256 x i8], align 16
  %41 = alloca [256 x i8], align 16
  store %struct.local_zones* %0, %struct.local_zones** %18, align 8
  store %struct.module_env* %1, %struct.module_env** %19, align 8
  store %struct.query_info* %2, %struct.query_info** %20, align 8
  store %struct.edns_data* %3, %struct.edns_data** %21, align 8
  store i32* %4, i32** %22, align 8
  store %struct.regional* %5, %struct.regional** %23, align 8
  store %struct.comm_reply* %6, %struct.comm_reply** %24, align 8
  store i32* %7, i32** %25, align 8
  store i64 %8, i64* %26, align 8
  store i32* %9, i32** %27, align 8
  store i64 %10, i64* %28, align 8
  store %struct.config_strlist** %11, %struct.config_strlist*** %29, align 8
  store i64 %12, i64* %30, align 8
  store i8** %13, i8*** %31, align 8
  store i32 %14, i32* %32, align 4
  store %struct.view* %15, %struct.view** %33, align 8
  %42 = load %struct.query_info*, %struct.query_info** %20, align 8
  %43 = getelementptr inbounds %struct.query_info, %struct.query_info* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dname_count_labels(i32 %44)
  store i32 %45, i32* %34, align 4
  store %struct.local_data* null, %struct.local_data** %35, align 8
  store %struct.local_zone* null, %struct.local_zone** %36, align 8
  %46 = load i32, i32* @local_zone_transparent, align 4
  store i32 %46, i32* %37, align 4
  store i32 -1, i32* %39, align 4
  %47 = load %struct.view*, %struct.view** %33, align 8
  %48 = icmp ne %struct.view* %47, null
  br i1 %48, label %49, label %162

49:                                               ; preds = %16
  %50 = load %struct.view*, %struct.view** %33, align 8
  %51 = getelementptr inbounds %struct.view, %struct.view* %50, i32 0, i32 0
  %52 = call i32 @lock_rw_rdlock(i32* %51)
  %53 = load %struct.view*, %struct.view** %33, align 8
  %54 = getelementptr inbounds %struct.view, %struct.view* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %83

57:                                               ; preds = %49
  %58 = load %struct.view*, %struct.view** %33, align 8
  %59 = getelementptr inbounds %struct.view, %struct.view* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.query_info*, %struct.query_info** %20, align 8
  %62 = getelementptr inbounds %struct.query_info, %struct.query_info* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.query_info*, %struct.query_info** %20, align 8
  %65 = getelementptr inbounds %struct.query_info, %struct.query_info* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %34, align 4
  %68 = load %struct.query_info*, %struct.query_info** %20, align 8
  %69 = getelementptr inbounds %struct.query_info, %struct.query_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.query_info*, %struct.query_info** %20, align 8
  %72 = getelementptr inbounds %struct.query_info, %struct.query_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.local_zone* @local_zones_lookup(i64 %60, i32 %63, i32 %66, i32 %67, i32 %70, i32 %73)
  store %struct.local_zone* %74, %struct.local_zone** %36, align 8
  %75 = icmp ne %struct.local_zone* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %57
  %77 = load %struct.local_zone*, %struct.local_zone** %36, align 8
  %78 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %77, i32 0, i32 1
  %79 = call i32 @lock_rw_rdlock(i32* %78)
  %80 = load %struct.local_zone*, %struct.local_zone** %36, align 8
  %81 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %37, align 4
  br label %83

83:                                               ; preds = %76, %57, %49
  %84 = load i32, i32* %37, align 4
  %85 = load i32, i32* @local_zone_noview, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load %struct.local_zone*, %struct.local_zone** %36, align 8
  %89 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %88, i32 0, i32 1
  %90 = call i32 @lock_rw_unlock(i32* %89)
  store %struct.local_zone* null, %struct.local_zone** %36, align 8
  br label %91

91:                                               ; preds = %87, %83
  %92 = load %struct.local_zone*, %struct.local_zone** %36, align 8
  %93 = icmp ne %struct.local_zone* %92, null
  br i1 %93, label %94, label %120

94:                                               ; preds = %91
  %95 = load i32, i32* %37, align 4
  %96 = load i32, i32* @local_zone_transparent, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %110, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %37, align 4
  %100 = load i32, i32* @local_zone_typetransparent, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %110, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %37, align 4
  %104 = load i32, i32* @local_zone_inform, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %37, align 4
  %108 = load i32, i32* @local_zone_always_transparent, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %106, %102, %98, %94
  %111 = load %struct.local_zone*, %struct.local_zone** %36, align 8
  %112 = load %struct.query_info*, %struct.query_info** %20, align 8
  %113 = load i32, i32* %34, align 4
  %114 = call i64 @local_zone_does_not_cover(%struct.local_zone* %111, %struct.query_info* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load %struct.local_zone*, %struct.local_zone** %36, align 8
  %118 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %117, i32 0, i32 1
  %119 = call i32 @lock_rw_unlock(i32* %118)
  store %struct.local_zone* null, %struct.local_zone** %36, align 8
  br label %120

120:                                              ; preds = %116, %110, %106, %91
  %121 = load %struct.view*, %struct.view** %33, align 8
  %122 = getelementptr inbounds %struct.view, %struct.view* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %120
  %126 = load %struct.local_zone*, %struct.local_zone** %36, align 8
  %127 = icmp ne %struct.local_zone* %126, null
  br i1 %127, label %137, label %128

128:                                              ; preds = %125
  %129 = load %struct.view*, %struct.view** %33, align 8
  %130 = getelementptr inbounds %struct.view, %struct.view* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %128
  %134 = load %struct.view*, %struct.view** %33, align 8
  %135 = getelementptr inbounds %struct.view, %struct.view* %134, i32 0, i32 0
  %136 = call i32 @lock_rw_unlock(i32* %135)
  store i32 0, i32* %17, align 4
  br label %327

137:                                              ; preds = %128, %125, %120
  %138 = load %struct.local_zone*, %struct.local_zone** %36, align 8
  %139 = icmp ne %struct.local_zone* %138, null
  br i1 %139, label %140, label %158

140:                                              ; preds = %137
  %141 = load i64, i64* @verbosity, align 8
  %142 = load i64, i64* @VERB_ALGO, align 8
  %143 = icmp sge i64 %141, %142
  br i1 %143, label %144, label %158

144:                                              ; preds = %140
  %145 = load %struct.local_zone*, %struct.local_zone** %36, align 8
  %146 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds [256 x i8], [256 x i8]* %40, i64 0, i64 0
  %149 = call i32 @dname_str(i32 %147, i8* %148)
  %150 = load i64, i64* @VERB_ALGO, align 8
  %151 = getelementptr inbounds [256 x i8], [256 x i8]* %40, i64 0, i64 0
  %152 = load i32, i32* %37, align 4
  %153 = call i32 @local_zone_type2str(i32 %152)
  %154 = load %struct.view*, %struct.view** %33, align 8
  %155 = getelementptr inbounds %struct.view, %struct.view* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i64, i8*, i8*, i32, ...) @verbose(i64 %150, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %151, i32 %153, i32 %156)
  br label %158

158:                                              ; preds = %144, %140, %137
  %159 = load %struct.view*, %struct.view** %33, align 8
  %160 = getelementptr inbounds %struct.view, %struct.view* %159, i32 0, i32 0
  %161 = call i32 @lock_rw_unlock(i32* %160)
  br label %162

162:                                              ; preds = %158, %16
  %163 = load %struct.local_zone*, %struct.local_zone** %36, align 8
  %164 = icmp ne %struct.local_zone* %163, null
  br i1 %164, label %236, label %165

165:                                              ; preds = %162
  %166 = load %struct.local_zones*, %struct.local_zones** %18, align 8
  %167 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %166, i32 0, i32 0
  %168 = call i32 @lock_rw_rdlock(i32* %167)
  %169 = load %struct.local_zones*, %struct.local_zones** %18, align 8
  %170 = load %struct.query_info*, %struct.query_info** %20, align 8
  %171 = getelementptr inbounds %struct.query_info, %struct.query_info* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.query_info*, %struct.query_info** %20, align 8
  %174 = getelementptr inbounds %struct.query_info, %struct.query_info* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %34, align 4
  %177 = load %struct.query_info*, %struct.query_info** %20, align 8
  %178 = getelementptr inbounds %struct.query_info, %struct.query_info* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.query_info*, %struct.query_info** %20, align 8
  %181 = getelementptr inbounds %struct.query_info, %struct.query_info* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %25, align 8
  %184 = load i64, i64* %26, align 8
  %185 = call %struct.local_zone* @local_zones_tags_lookup(%struct.local_zones* %169, i32 %172, i32 %175, i32 %176, i32 %179, i32 %182, i32* %183, i64 %184, i32 0)
  store %struct.local_zone* %185, %struct.local_zone** %36, align 8
  %186 = icmp ne %struct.local_zone* %185, null
  br i1 %186, label %191, label %187

187:                                              ; preds = %165
  %188 = load %struct.local_zones*, %struct.local_zones** %18, align 8
  %189 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %188, i32 0, i32 0
  %190 = call i32 @lock_rw_unlock(i32* %189)
  store i32 0, i32* %17, align 4
  br label %327

191:                                              ; preds = %165
  %192 = load %struct.local_zone*, %struct.local_zone** %36, align 8
  %193 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %192, i32 0, i32 1
  %194 = call i32 @lock_rw_rdlock(i32* %193)
  %195 = load i32*, i32** %25, align 8
  %196 = load i64, i64* %26, align 8
  %197 = load %struct.local_zone*, %struct.local_zone** %36, align 8
  %198 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.local_zone*, %struct.local_zone** %36, align 8
  %201 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %27, align 8
  %204 = load i64, i64* %28, align 8
  %205 = load %struct.local_zone*, %struct.local_zone** %36, align 8
  %206 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.comm_reply*, %struct.comm_reply** %24, align 8
  %209 = load %struct.local_zone*, %struct.local_zone** %36, align 8
  %210 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load i8**, i8*** %31, align 8
  %213 = load i32, i32* %32, align 4
  %214 = call i32 @lz_type(i32* %195, i64 %196, i32 %199, i32 %202, i32* %203, i64 %204, i32 %207, %struct.comm_reply* %208, i32 %211, i32* %39, i8** %212, i32 %213)
  store i32 %214, i32* %37, align 4
  %215 = load %struct.local_zones*, %struct.local_zones** %18, align 8
  %216 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %215, i32 0, i32 0
  %217 = call i32 @lock_rw_unlock(i32* %216)
  %218 = load %struct.local_zone*, %struct.local_zone** %36, align 8
  %219 = icmp ne %struct.local_zone* %218, null
  br i1 %219, label %220, label %235

220:                                              ; preds = %191
  %221 = load i64, i64* @verbosity, align 8
  %222 = load i64, i64* @VERB_ALGO, align 8
  %223 = icmp sge i64 %221, %222
  br i1 %223, label %224, label %235

224:                                              ; preds = %220
  %225 = load %struct.local_zone*, %struct.local_zone** %36, align 8
  %226 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = getelementptr inbounds [256 x i8], [256 x i8]* %41, i64 0, i64 0
  %229 = call i32 @dname_str(i32 %227, i8* %228)
  %230 = load i64, i64* @VERB_ALGO, align 8
  %231 = getelementptr inbounds [256 x i8], [256 x i8]* %41, i64 0, i64 0
  %232 = load i32, i32* %37, align 4
  %233 = call i32 @local_zone_type2str(i32 %232)
  %234 = call i32 (i64, i8*, i8*, i32, ...) @verbose(i64 %230, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %231, i32 %233)
  br label %235

235:                                              ; preds = %224, %220, %191
  br label %236

236:                                              ; preds = %235, %162
  %237 = load %struct.module_env*, %struct.module_env** %19, align 8
  %238 = getelementptr inbounds %struct.module_env, %struct.module_env* %237, i32 0, i32 0
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %255, label %243

243:                                              ; preds = %236
  %244 = load i32, i32* %37, align 4
  %245 = load i32, i32* @local_zone_inform, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %255, label %247

247:                                              ; preds = %243
  %248 = load i32, i32* %37, align 4
  %249 = load i32, i32* @local_zone_inform_deny, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %255, label %251

251:                                              ; preds = %247
  %252 = load i32, i32* %37, align 4
  %253 = load i32, i32* @local_zone_inform_redirect, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %263

255:                                              ; preds = %251, %247, %243, %236
  %256 = load %struct.comm_reply*, %struct.comm_reply** %24, align 8
  %257 = icmp ne %struct.comm_reply* %256, null
  br i1 %257, label %258, label %263

258:                                              ; preds = %255
  %259 = load %struct.local_zone*, %struct.local_zone** %36, align 8
  %260 = load %struct.query_info*, %struct.query_info** %20, align 8
  %261 = load %struct.comm_reply*, %struct.comm_reply** %24, align 8
  %262 = call i32 @lz_inform_print(%struct.local_zone* %259, %struct.query_info* %260, %struct.comm_reply* %261)
  br label %263

263:                                              ; preds = %258, %255, %251
  %264 = load i32, i32* %37, align 4
  %265 = load i32, i32* @local_zone_always_refuse, align 4
  %266 = icmp ne i32 %264, %265
  br i1 %266, label %267, label %302

267:                                              ; preds = %263
  %268 = load i32, i32* %37, align 4
  %269 = load i32, i32* @local_zone_always_transparent, align 4
  %270 = icmp ne i32 %268, %269
  br i1 %270, label %271, label %302

271:                                              ; preds = %267
  %272 = load i32, i32* %37, align 4
  %273 = load i32, i32* @local_zone_always_nxdomain, align 4
  %274 = icmp ne i32 %272, %273
  br i1 %274, label %275, label %302

275:                                              ; preds = %271
  %276 = load %struct.local_zone*, %struct.local_zone** %36, align 8
  %277 = load %struct.module_env*, %struct.module_env** %19, align 8
  %278 = load %struct.query_info*, %struct.query_info** %20, align 8
  %279 = load %struct.edns_data*, %struct.edns_data** %21, align 8
  %280 = load %struct.comm_reply*, %struct.comm_reply** %24, align 8
  %281 = load i32*, i32** %22, align 8
  %282 = load %struct.regional*, %struct.regional** %23, align 8
  %283 = load i32, i32* %34, align 4
  %284 = load i32, i32* %37, align 4
  %285 = load i32, i32* %39, align 4
  %286 = load %struct.config_strlist**, %struct.config_strlist*** %29, align 8
  %287 = load i64, i64* %30, align 8
  %288 = load i8**, i8*** %31, align 8
  %289 = load i32, i32* %32, align 4
  %290 = call i64 @local_data_answer(%struct.local_zone* %276, %struct.module_env* %277, %struct.query_info* %278, %struct.edns_data* %279, %struct.comm_reply* %280, i32* %281, %struct.regional* %282, i32 %283, %struct.local_data** %35, i32 %284, i32 %285, %struct.config_strlist** %286, i64 %287, i8** %288, i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %302

292:                                              ; preds = %275
  %293 = load %struct.local_zone*, %struct.local_zone** %36, align 8
  %294 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %293, i32 0, i32 1
  %295 = call i32 @lock_rw_unlock(i32* %294)
  %296 = load %struct.query_info*, %struct.query_info** %20, align 8
  %297 = getelementptr inbounds %struct.query_info, %struct.query_info* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = icmp ne i32 %298, 0
  %300 = xor i1 %299, true
  %301 = zext i1 %300 to i32
  store i32 %301, i32* %17, align 4
  br label %327

302:                                              ; preds = %275, %271, %267, %263
  %303 = load %struct.local_zone*, %struct.local_zone** %36, align 8
  %304 = load %struct.module_env*, %struct.module_env** %19, align 8
  %305 = load %struct.query_info*, %struct.query_info** %20, align 8
  %306 = load %struct.edns_data*, %struct.edns_data** %21, align 8
  %307 = load %struct.comm_reply*, %struct.comm_reply** %24, align 8
  %308 = load i32*, i32** %22, align 8
  %309 = load %struct.regional*, %struct.regional** %23, align 8
  %310 = load %struct.local_data*, %struct.local_data** %35, align 8
  %311 = load i32, i32* %37, align 4
  %312 = call i32 @lz_zone_answer(%struct.local_zone* %303, %struct.module_env* %304, %struct.query_info* %305, %struct.edns_data* %306, %struct.comm_reply* %307, i32* %308, %struct.regional* %309, %struct.local_data* %310, i32 %311)
  store i32 %312, i32* %38, align 4
  %313 = load %struct.local_zone*, %struct.local_zone** %36, align 8
  %314 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %313, i32 0, i32 1
  %315 = call i32 @lock_rw_unlock(i32* %314)
  %316 = load i32, i32* %38, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %324

318:                                              ; preds = %302
  %319 = load %struct.query_info*, %struct.query_info** %20, align 8
  %320 = getelementptr inbounds %struct.query_info, %struct.query_info* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = icmp ne i32 %321, 0
  %323 = xor i1 %322, true
  br label %324

324:                                              ; preds = %318, %302
  %325 = phi i1 [ false, %302 ], [ %323, %318 ]
  %326 = zext i1 %325 to i32
  store i32 %326, i32* %17, align 4
  br label %327

327:                                              ; preds = %324, %292, %187, %133
  %328 = load i32, i32* %17, align 4
  ret i32 %328
}

declare dso_local i32 @dname_count_labels(i32) #1

declare dso_local i32 @lock_rw_rdlock(i32*) #1

declare dso_local %struct.local_zone* @local_zones_lookup(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i64 @local_zone_does_not_cover(%struct.local_zone*, %struct.query_info*, i32) #1

declare dso_local i32 @dname_str(i32, i8*) #1

declare dso_local i32 @verbose(i64, i8*, i8*, i32, ...) #1

declare dso_local i32 @local_zone_type2str(i32) #1

declare dso_local %struct.local_zone* @local_zones_tags_lookup(%struct.local_zones*, i32, i32, i32, i32, i32, i32*, i64, i32) #1

declare dso_local i32 @lz_type(i32*, i64, i32, i32, i32*, i64, i32, %struct.comm_reply*, i32, i32*, i8**, i32) #1

declare dso_local i32 @lz_inform_print(%struct.local_zone*, %struct.query_info*, %struct.comm_reply*) #1

declare dso_local i64 @local_data_answer(%struct.local_zone*, %struct.module_env*, %struct.query_info*, %struct.edns_data*, %struct.comm_reply*, i32*, %struct.regional*, i32, %struct.local_data**, i32, i32, %struct.config_strlist**, i64, i8**, i32) #1

declare dso_local i32 @lz_zone_answer(%struct.local_zone*, %struct.module_env*, %struct.query_info*, %struct.edns_data*, %struct.comm_reply*, i32*, %struct.regional*, %struct.local_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
