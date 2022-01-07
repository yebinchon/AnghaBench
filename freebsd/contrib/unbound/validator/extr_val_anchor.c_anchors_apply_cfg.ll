; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchors_apply_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchors_apply_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_anchors = type { i32, %struct.trust_anchor* }
%struct.trust_anchor = type { i32 }
%struct.config_file = type { i64*, i64*, %struct.config_strlist*, %struct.config_strlist*, %struct.config_strlist*, %struct.config_strlist*, %struct.config_strlist*, %struct.config_strlist*, i64 }
%struct.config_strlist = type { i64*, %struct.config_strlist* }

@as112_zones = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [32 x i8] c"error in insecure-lan-zones: %s\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"error in domain-insecure: %s\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"error reading trust-anchor-file: %s\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"error reading trusted-keys-file: %s\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"error in trust-anchor: \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"error reading dlv-anchor-file: %s\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"error in dlv-anchor: \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"error reading auto-trust-anchor-file: %s\00", align 1
@verbosity = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @anchors_apply_cfg(%struct.val_anchors* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.val_anchors*, align 8
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca %struct.config_strlist*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.trust_anchor*, align 8
  %11 = alloca %struct.trust_anchor*, align 8
  store %struct.val_anchors* %0, %struct.val_anchors** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %12 = call i32* @sldns_buffer_new(i32 65535)
  store i32* %12, i32** %9, align 8
  %13 = load %struct.config_file*, %struct.config_file** %5, align 8
  %14 = getelementptr inbounds %struct.config_file, %struct.config_file* %13, i32 0, i32 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %2
  %18 = load i8**, i8*** @as112_zones, align 8
  store i8** %18, i8*** %7, align 8
  br label %19

19:                                               ; preds = %36, %17
  %20 = load i8**, i8*** %7, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %25 = load i8**, i8*** %7, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @anchor_insert_insecure(%struct.val_anchors* %24, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i8**, i8*** %7, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @sldns_buffer_free(i32* %33)
  store i32 0, i32* %3, align 4
  br label %478

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = load i8**, i8*** %7, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i32 1
  store i8** %38, i8*** %7, align 8
  br label %19

39:                                               ; preds = %19
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.config_file*, %struct.config_file** %5, align 8
  %42 = getelementptr inbounds %struct.config_file, %struct.config_file* %41, i32 0, i32 7
  %43 = load %struct.config_strlist*, %struct.config_strlist** %42, align 8
  store %struct.config_strlist* %43, %struct.config_strlist** %6, align 8
  br label %44

44:                                               ; preds = %77, %40
  %45 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %46 = icmp ne %struct.config_strlist* %45, null
  br i1 %46, label %47, label %81

47:                                               ; preds = %44
  %48 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %49 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = icmp ne i64* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %54 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52, %47
  br label %77

60:                                               ; preds = %52
  %61 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %62 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %63 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = bitcast i64* %64 to i8*
  %66 = call i32 @anchor_insert_insecure(%struct.val_anchors* %61, i8* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %60
  %69 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %70 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = bitcast i64* %71 to i8*
  %73 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @sldns_buffer_free(i32* %74)
  store i32 0, i32* %3, align 4
  br label %478

76:                                               ; preds = %60
  br label %77

77:                                               ; preds = %76, %59
  %78 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %79 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %78, i32 0, i32 1
  %80 = load %struct.config_strlist*, %struct.config_strlist** %79, align 8
  store %struct.config_strlist* %80, %struct.config_strlist** %6, align 8
  br label %44

81:                                               ; preds = %44
  %82 = load %struct.config_file*, %struct.config_file** %5, align 8
  %83 = getelementptr inbounds %struct.config_file, %struct.config_file* %82, i32 0, i32 6
  %84 = load %struct.config_strlist*, %struct.config_strlist** %83, align 8
  store %struct.config_strlist* %84, %struct.config_strlist** %6, align 8
  br label %85

85:                                               ; preds = %151, %81
  %86 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %87 = icmp ne %struct.config_strlist* %86, null
  br i1 %87, label %88, label %155

88:                                               ; preds = %85
  %89 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %90 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = icmp ne i64* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %95 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93, %88
  br label %151

101:                                              ; preds = %93
  %102 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %103 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = bitcast i64* %104 to i8*
  store i8* %105, i8** %8, align 8
  %106 = load %struct.config_file*, %struct.config_file** %5, align 8
  %107 = getelementptr inbounds %struct.config_file, %struct.config_file* %106, i32 0, i32 1
  %108 = load i64*, i64** %107, align 8
  %109 = icmp ne i64* %108, null
  br i1 %109, label %110, label %136

110:                                              ; preds = %101
  %111 = load %struct.config_file*, %struct.config_file** %5, align 8
  %112 = getelementptr inbounds %struct.config_file, %struct.config_file* %111, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %136

117:                                              ; preds = %110
  %118 = load i8*, i8** %8, align 8
  %119 = load %struct.config_file*, %struct.config_file** %5, align 8
  %120 = getelementptr inbounds %struct.config_file, %struct.config_file* %119, i32 0, i32 1
  %121 = load i64*, i64** %120, align 8
  %122 = load %struct.config_file*, %struct.config_file** %5, align 8
  %123 = getelementptr inbounds %struct.config_file, %struct.config_file* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = call i32 @strlen(i64* %124)
  %126 = call i64 @strncmp(i8* %118, i64* %121, i32 %125)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %117
  %129 = load %struct.config_file*, %struct.config_file** %5, align 8
  %130 = getelementptr inbounds %struct.config_file, %struct.config_file* %129, i32 0, i32 1
  %131 = load i64*, i64** %130, align 8
  %132 = call i32 @strlen(i64* %131)
  %133 = load i8*, i8** %8, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8* %135, i8** %8, align 8
  br label %136

136:                                              ; preds = %128, %117, %110, %101
  %137 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %138 = load i32*, i32** %9, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = call %struct.trust_anchor* @anchor_read_file(%struct.val_anchors* %137, i32* %138, i8* %139, i32 0)
  %141 = icmp ne %struct.trust_anchor* %140, null
  br i1 %141, label %150, label %142

142:                                              ; preds = %136
  %143 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %144 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %143, i32 0, i32 0
  %145 = load i64*, i64** %144, align 8
  %146 = bitcast i64* %145 to i8*
  %147 = call i32 @log_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %146)
  %148 = load i32*, i32** %9, align 8
  %149 = call i32 @sldns_buffer_free(i32* %148)
  store i32 0, i32* %3, align 4
  br label %478

150:                                              ; preds = %136
  br label %151

151:                                              ; preds = %150, %100
  %152 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %153 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %152, i32 0, i32 1
  %154 = load %struct.config_strlist*, %struct.config_strlist** %153, align 8
  store %struct.config_strlist* %154, %struct.config_strlist** %6, align 8
  br label %85

155:                                              ; preds = %85
  %156 = load %struct.config_file*, %struct.config_file** %5, align 8
  %157 = getelementptr inbounds %struct.config_file, %struct.config_file* %156, i32 0, i32 5
  %158 = load %struct.config_strlist*, %struct.config_strlist** %157, align 8
  store %struct.config_strlist* %158, %struct.config_strlist** %6, align 8
  br label %159

159:                                              ; preds = %225, %155
  %160 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %161 = icmp ne %struct.config_strlist* %160, null
  br i1 %161, label %162, label %229

162:                                              ; preds = %159
  %163 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %164 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = icmp ne i64* %165, null
  br i1 %166, label %167, label %174

167:                                              ; preds = %162
  %168 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %169 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %168, i32 0, i32 0
  %170 = load i64*, i64** %169, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %167, %162
  br label %225

175:                                              ; preds = %167
  %176 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %177 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %176, i32 0, i32 0
  %178 = load i64*, i64** %177, align 8
  %179 = bitcast i64* %178 to i8*
  store i8* %179, i8** %8, align 8
  %180 = load %struct.config_file*, %struct.config_file** %5, align 8
  %181 = getelementptr inbounds %struct.config_file, %struct.config_file* %180, i32 0, i32 1
  %182 = load i64*, i64** %181, align 8
  %183 = icmp ne i64* %182, null
  br i1 %183, label %184, label %210

184:                                              ; preds = %175
  %185 = load %struct.config_file*, %struct.config_file** %5, align 8
  %186 = getelementptr inbounds %struct.config_file, %struct.config_file* %185, i32 0, i32 1
  %187 = load i64*, i64** %186, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %210

191:                                              ; preds = %184
  %192 = load i8*, i8** %8, align 8
  %193 = load %struct.config_file*, %struct.config_file** %5, align 8
  %194 = getelementptr inbounds %struct.config_file, %struct.config_file* %193, i32 0, i32 1
  %195 = load i64*, i64** %194, align 8
  %196 = load %struct.config_file*, %struct.config_file** %5, align 8
  %197 = getelementptr inbounds %struct.config_file, %struct.config_file* %196, i32 0, i32 1
  %198 = load i64*, i64** %197, align 8
  %199 = call i32 @strlen(i64* %198)
  %200 = call i64 @strncmp(i8* %192, i64* %195, i32 %199)
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %191
  %203 = load %struct.config_file*, %struct.config_file** %5, align 8
  %204 = getelementptr inbounds %struct.config_file, %struct.config_file* %203, i32 0, i32 1
  %205 = load i64*, i64** %204, align 8
  %206 = call i32 @strlen(i64* %205)
  %207 = load i8*, i8** %8, align 8
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i8, i8* %207, i64 %208
  store i8* %209, i8** %8, align 8
  br label %210

210:                                              ; preds = %202, %191, %184, %175
  %211 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %212 = load i32*, i32** %9, align 8
  %213 = load i8*, i8** %8, align 8
  %214 = call i32 @anchor_read_bind_file_wild(%struct.val_anchors* %211, i32* %212, i8* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %224, label %216

216:                                              ; preds = %210
  %217 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %218 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %217, i32 0, i32 0
  %219 = load i64*, i64** %218, align 8
  %220 = bitcast i64* %219 to i8*
  %221 = call i32 @log_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %220)
  %222 = load i32*, i32** %9, align 8
  %223 = call i32 @sldns_buffer_free(i32* %222)
  store i32 0, i32* %3, align 4
  br label %478

224:                                              ; preds = %210
  br label %225

225:                                              ; preds = %224, %174
  %226 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %227 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %226, i32 0, i32 1
  %228 = load %struct.config_strlist*, %struct.config_strlist** %227, align 8
  store %struct.config_strlist* %228, %struct.config_strlist** %6, align 8
  br label %159

229:                                              ; preds = %159
  %230 = load %struct.config_file*, %struct.config_file** %5, align 8
  %231 = getelementptr inbounds %struct.config_file, %struct.config_file* %230, i32 0, i32 4
  %232 = load %struct.config_strlist*, %struct.config_strlist** %231, align 8
  store %struct.config_strlist* %232, %struct.config_strlist** %6, align 8
  br label %233

233:                                              ; preds = %266, %229
  %234 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %235 = icmp ne %struct.config_strlist* %234, null
  br i1 %235, label %236, label %270

236:                                              ; preds = %233
  %237 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %238 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %237, i32 0, i32 0
  %239 = load i64*, i64** %238, align 8
  %240 = icmp ne i64* %239, null
  br i1 %240, label %241, label %248

241:                                              ; preds = %236
  %242 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %243 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %242, i32 0, i32 0
  %244 = load i64*, i64** %243, align 8
  %245 = getelementptr inbounds i64, i64* %244, i64 0
  %246 = load i64, i64* %245, align 8
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %241, %236
  br label %266

249:                                              ; preds = %241
  %250 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %251 = load i32*, i32** %9, align 8
  %252 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %253 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %252, i32 0, i32 0
  %254 = load i64*, i64** %253, align 8
  %255 = call %struct.trust_anchor* @anchor_store_str(%struct.val_anchors* %250, i32* %251, i64* %254)
  %256 = icmp ne %struct.trust_anchor* %255, null
  br i1 %256, label %265, label %257

257:                                              ; preds = %249
  %258 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %259 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %258, i32 0, i32 0
  %260 = load i64*, i64** %259, align 8
  %261 = bitcast i64* %260 to i8*
  %262 = call i32 @log_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %261)
  %263 = load i32*, i32** %9, align 8
  %264 = call i32 @sldns_buffer_free(i32* %263)
  store i32 0, i32* %3, align 4
  br label %478

265:                                              ; preds = %249
  br label %266

266:                                              ; preds = %265, %248
  %267 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %268 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %267, i32 0, i32 1
  %269 = load %struct.config_strlist*, %struct.config_strlist** %268, align 8
  store %struct.config_strlist* %269, %struct.config_strlist** %6, align 8
  br label %233

270:                                              ; preds = %233
  %271 = load %struct.config_file*, %struct.config_file** %5, align 8
  %272 = getelementptr inbounds %struct.config_file, %struct.config_file* %271, i32 0, i32 0
  %273 = load i64*, i64** %272, align 8
  %274 = icmp ne i64* %273, null
  br i1 %274, label %275, label %341

275:                                              ; preds = %270
  %276 = load %struct.config_file*, %struct.config_file** %5, align 8
  %277 = getelementptr inbounds %struct.config_file, %struct.config_file* %276, i32 0, i32 0
  %278 = load i64*, i64** %277, align 8
  %279 = getelementptr inbounds i64, i64* %278, i64 0
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %341

282:                                              ; preds = %275
  %283 = load %struct.config_file*, %struct.config_file** %5, align 8
  %284 = getelementptr inbounds %struct.config_file, %struct.config_file* %283, i32 0, i32 0
  %285 = load i64*, i64** %284, align 8
  %286 = bitcast i64* %285 to i8*
  store i8* %286, i8** %8, align 8
  %287 = load %struct.config_file*, %struct.config_file** %5, align 8
  %288 = getelementptr inbounds %struct.config_file, %struct.config_file* %287, i32 0, i32 1
  %289 = load i64*, i64** %288, align 8
  %290 = icmp ne i64* %289, null
  br i1 %290, label %291, label %317

291:                                              ; preds = %282
  %292 = load %struct.config_file*, %struct.config_file** %5, align 8
  %293 = getelementptr inbounds %struct.config_file, %struct.config_file* %292, i32 0, i32 1
  %294 = load i64*, i64** %293, align 8
  %295 = getelementptr inbounds i64, i64* %294, i64 0
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %317

298:                                              ; preds = %291
  %299 = load i8*, i8** %8, align 8
  %300 = load %struct.config_file*, %struct.config_file** %5, align 8
  %301 = getelementptr inbounds %struct.config_file, %struct.config_file* %300, i32 0, i32 1
  %302 = load i64*, i64** %301, align 8
  %303 = load %struct.config_file*, %struct.config_file** %5, align 8
  %304 = getelementptr inbounds %struct.config_file, %struct.config_file* %303, i32 0, i32 1
  %305 = load i64*, i64** %304, align 8
  %306 = call i32 @strlen(i64* %305)
  %307 = call i64 @strncmp(i8* %299, i64* %302, i32 %306)
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %309, label %317

309:                                              ; preds = %298
  %310 = load %struct.config_file*, %struct.config_file** %5, align 8
  %311 = getelementptr inbounds %struct.config_file, %struct.config_file* %310, i32 0, i32 1
  %312 = load i64*, i64** %311, align 8
  %313 = call i32 @strlen(i64* %312)
  %314 = load i8*, i8** %8, align 8
  %315 = sext i32 %313 to i64
  %316 = getelementptr inbounds i8, i8* %314, i64 %315
  store i8* %316, i8** %8, align 8
  br label %317

317:                                              ; preds = %309, %298, %291, %282
  %318 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %319 = load i32*, i32** %9, align 8
  %320 = load i8*, i8** %8, align 8
  %321 = call %struct.trust_anchor* @anchor_read_file(%struct.val_anchors* %318, i32* %319, i8* %320, i32 1)
  store %struct.trust_anchor* %321, %struct.trust_anchor** %10, align 8
  %322 = icmp ne %struct.trust_anchor* %321, null
  br i1 %322, label %331, label %323

323:                                              ; preds = %317
  %324 = load %struct.config_file*, %struct.config_file** %5, align 8
  %325 = getelementptr inbounds %struct.config_file, %struct.config_file* %324, i32 0, i32 0
  %326 = load i64*, i64** %325, align 8
  %327 = bitcast i64* %326 to i8*
  %328 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %327)
  %329 = load i32*, i32** %9, align 8
  %330 = call i32 @sldns_buffer_free(i32* %329)
  store i32 0, i32* %3, align 4
  br label %478

331:                                              ; preds = %317
  %332 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %333 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %332, i32 0, i32 0
  %334 = call i32 @lock_basic_lock(i32* %333)
  %335 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %336 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %337 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %336, i32 0, i32 1
  store %struct.trust_anchor* %335, %struct.trust_anchor** %337, align 8
  %338 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %339 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %338, i32 0, i32 0
  %340 = call i32 @lock_basic_unlock(i32* %339)
  br label %341

341:                                              ; preds = %331, %275, %270
  %342 = load %struct.config_file*, %struct.config_file** %5, align 8
  %343 = getelementptr inbounds %struct.config_file, %struct.config_file* %342, i32 0, i32 3
  %344 = load %struct.config_strlist*, %struct.config_strlist** %343, align 8
  store %struct.config_strlist* %344, %struct.config_strlist** %6, align 8
  br label %345

345:                                              ; preds = %387, %341
  %346 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %347 = icmp ne %struct.config_strlist* %346, null
  br i1 %347, label %348, label %391

348:                                              ; preds = %345
  %349 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %350 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %349, i32 0, i32 0
  %351 = load i64*, i64** %350, align 8
  %352 = icmp ne i64* %351, null
  br i1 %352, label %353, label %360

353:                                              ; preds = %348
  %354 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %355 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %354, i32 0, i32 0
  %356 = load i64*, i64** %355, align 8
  %357 = getelementptr inbounds i64, i64* %356, i64 0
  %358 = load i64, i64* %357, align 8
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %353, %348
  br label %387

361:                                              ; preds = %353
  %362 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %363 = load i32*, i32** %9, align 8
  %364 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %365 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %364, i32 0, i32 0
  %366 = load i64*, i64** %365, align 8
  %367 = call %struct.trust_anchor* @anchor_store_str(%struct.val_anchors* %362, i32* %363, i64* %366)
  store %struct.trust_anchor* %367, %struct.trust_anchor** %11, align 8
  %368 = icmp ne %struct.trust_anchor* %367, null
  br i1 %368, label %377, label %369

369:                                              ; preds = %361
  %370 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %371 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %370, i32 0, i32 0
  %372 = load i64*, i64** %371, align 8
  %373 = bitcast i64* %372 to i8*
  %374 = call i32 @log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %373)
  %375 = load i32*, i32** %9, align 8
  %376 = call i32 @sldns_buffer_free(i32* %375)
  store i32 0, i32* %3, align 4
  br label %478

377:                                              ; preds = %361
  %378 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %379 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %378, i32 0, i32 0
  %380 = call i32 @lock_basic_lock(i32* %379)
  %381 = load %struct.trust_anchor*, %struct.trust_anchor** %11, align 8
  %382 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %383 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %382, i32 0, i32 1
  store %struct.trust_anchor* %381, %struct.trust_anchor** %383, align 8
  %384 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %385 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %384, i32 0, i32 0
  %386 = call i32 @lock_basic_unlock(i32* %385)
  br label %387

387:                                              ; preds = %377, %360
  %388 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %389 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %388, i32 0, i32 1
  %390 = load %struct.config_strlist*, %struct.config_strlist** %389, align 8
  store %struct.config_strlist* %390, %struct.config_strlist** %6, align 8
  br label %345

391:                                              ; preds = %345
  %392 = load %struct.config_file*, %struct.config_file** %5, align 8
  %393 = getelementptr inbounds %struct.config_file, %struct.config_file* %392, i32 0, i32 2
  %394 = load %struct.config_strlist*, %struct.config_strlist** %393, align 8
  store %struct.config_strlist* %394, %struct.config_strlist** %6, align 8
  br label %395

395:                                              ; preds = %460, %391
  %396 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %397 = icmp ne %struct.config_strlist* %396, null
  br i1 %397, label %398, label %464

398:                                              ; preds = %395
  %399 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %400 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %399, i32 0, i32 0
  %401 = load i64*, i64** %400, align 8
  %402 = icmp ne i64* %401, null
  br i1 %402, label %403, label %410

403:                                              ; preds = %398
  %404 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %405 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %404, i32 0, i32 0
  %406 = load i64*, i64** %405, align 8
  %407 = getelementptr inbounds i64, i64* %406, i64 0
  %408 = load i64, i64* %407, align 8
  %409 = icmp eq i64 %408, 0
  br i1 %409, label %410, label %411

410:                                              ; preds = %403, %398
  br label %460

411:                                              ; preds = %403
  %412 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %413 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %412, i32 0, i32 0
  %414 = load i64*, i64** %413, align 8
  %415 = bitcast i64* %414 to i8*
  store i8* %415, i8** %8, align 8
  %416 = load %struct.config_file*, %struct.config_file** %5, align 8
  %417 = getelementptr inbounds %struct.config_file, %struct.config_file* %416, i32 0, i32 1
  %418 = load i64*, i64** %417, align 8
  %419 = icmp ne i64* %418, null
  br i1 %419, label %420, label %446

420:                                              ; preds = %411
  %421 = load %struct.config_file*, %struct.config_file** %5, align 8
  %422 = getelementptr inbounds %struct.config_file, %struct.config_file* %421, i32 0, i32 1
  %423 = load i64*, i64** %422, align 8
  %424 = getelementptr inbounds i64, i64* %423, i64 0
  %425 = load i64, i64* %424, align 8
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %446

427:                                              ; preds = %420
  %428 = load i8*, i8** %8, align 8
  %429 = load %struct.config_file*, %struct.config_file** %5, align 8
  %430 = getelementptr inbounds %struct.config_file, %struct.config_file* %429, i32 0, i32 1
  %431 = load i64*, i64** %430, align 8
  %432 = load %struct.config_file*, %struct.config_file** %5, align 8
  %433 = getelementptr inbounds %struct.config_file, %struct.config_file* %432, i32 0, i32 1
  %434 = load i64*, i64** %433, align 8
  %435 = call i32 @strlen(i64* %434)
  %436 = call i64 @strncmp(i8* %428, i64* %431, i32 %435)
  %437 = icmp eq i64 %436, 0
  br i1 %437, label %438, label %446

438:                                              ; preds = %427
  %439 = load %struct.config_file*, %struct.config_file** %5, align 8
  %440 = getelementptr inbounds %struct.config_file, %struct.config_file* %439, i32 0, i32 1
  %441 = load i64*, i64** %440, align 8
  %442 = call i32 @strlen(i64* %441)
  %443 = load i8*, i8** %8, align 8
  %444 = sext i32 %442 to i64
  %445 = getelementptr inbounds i8, i8* %443, i64 %444
  store i8* %445, i8** %8, align 8
  br label %446

446:                                              ; preds = %438, %427, %420, %411
  %447 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %448 = load i8*, i8** %8, align 8
  %449 = call i32 @autr_read_file(%struct.val_anchors* %447, i8* %448)
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %459, label %451

451:                                              ; preds = %446
  %452 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %453 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %452, i32 0, i32 0
  %454 = load i64*, i64** %453, align 8
  %455 = bitcast i64* %454 to i8*
  %456 = call i32 @log_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* %455)
  %457 = load i32*, i32** %9, align 8
  %458 = call i32 @sldns_buffer_free(i32* %457)
  store i32 0, i32* %3, align 4
  br label %478

459:                                              ; preds = %446
  br label %460

460:                                              ; preds = %459, %410
  %461 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %462 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %461, i32 0, i32 1
  %463 = load %struct.config_strlist*, %struct.config_strlist** %462, align 8
  store %struct.config_strlist* %463, %struct.config_strlist** %6, align 8
  br label %395

464:                                              ; preds = %395
  %465 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %466 = call i32 @anchors_assemble_rrsets(%struct.val_anchors* %465)
  %467 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %468 = call i32 @init_parents(%struct.val_anchors* %467)
  %469 = load i32*, i32** %9, align 8
  %470 = call i32 @sldns_buffer_free(i32* %469)
  %471 = load i64, i64* @verbosity, align 8
  %472 = load i64, i64* @VERB_ALGO, align 8
  %473 = icmp sge i64 %471, %472
  br i1 %473, label %474, label %477

474:                                              ; preds = %464
  %475 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %476 = call i32 @autr_debug_print(%struct.val_anchors* %475)
  br label %477

477:                                              ; preds = %474, %464
  store i32 1, i32* %3, align 4
  br label %478

478:                                              ; preds = %477, %451, %369, %323, %257, %216, %142, %68, %29
  %479 = load i32, i32* %3, align 4
  ret i32 %479
}

declare dso_local i32* @sldns_buffer_new(i32) #1

declare dso_local i32 @anchor_insert_insecure(%struct.val_anchors*, i8*) #1

declare dso_local i32 @log_err(i8*, i8*) #1

declare dso_local i32 @sldns_buffer_free(i32*) #1

declare dso_local i64 @strncmp(i8*, i64*, i32) #1

declare dso_local i32 @strlen(i64*) #1

declare dso_local %struct.trust_anchor* @anchor_read_file(%struct.val_anchors*, i32*, i8*, i32) #1

declare dso_local i32 @anchor_read_bind_file_wild(%struct.val_anchors*, i32*, i8*) #1

declare dso_local %struct.trust_anchor* @anchor_store_str(%struct.val_anchors*, i32*, i64*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @autr_read_file(%struct.val_anchors*, i8*) #1

declare dso_local i32 @anchors_assemble_rrsets(%struct.val_anchors*) #1

declare dso_local i32 @init_parents(%struct.val_anchors*) #1

declare dso_local i32 @autr_debug_print(%struct.val_anchors*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
