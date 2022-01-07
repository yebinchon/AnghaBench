; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_find_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_find_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_parse = type { i32 }
%struct.rrset_parse = type { i32* }
%struct.regional = type { i32 }

@LDNS_RR_TYPE_RRSIG = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@PACKED_RRSET_NSEC_AT_APEX = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8
@PACKED_RRSET_SOA_NEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msg_parse*, i32*, i32*, i64, i64, i64, i32*, i32*, i32**, i32**, i64*, i64*, i64*, %struct.rrset_parse**, i32, %struct.regional*)* @find_rrset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_rrset(%struct.msg_parse* %0, i32* %1, i32* %2, i64 %3, i64 %4, i64 %5, i32* %6, i32* %7, i32** %8, i32** %9, i64* %10, i64* %11, i64* %12, %struct.rrset_parse** %13, i32 %14, %struct.regional* %15) #0 {
  %17 = alloca i32, align 4
  %18 = alloca %struct.msg_parse*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32**, align 8
  %27 = alloca i32**, align 8
  %28 = alloca i64*, align 8
  %29 = alloca i64*, align 8
  %30 = alloca i64*, align 8
  %31 = alloca %struct.rrset_parse**, align 8
  %32 = alloca i32, align 4
  %33 = alloca %struct.regional*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  store %struct.msg_parse* %0, %struct.msg_parse** %18, align 8
  store i32* %1, i32** %19, align 8
  store i32* %2, i32** %20, align 8
  store i64 %3, i64* %21, align 8
  store i64 %4, i64* %22, align 8
  store i64 %5, i64* %23, align 8
  store i32* %6, i32** %24, align 8
  store i32* %7, i32** %25, align 8
  store i32** %8, i32*** %26, align 8
  store i32** %9, i32*** %27, align 8
  store i64* %10, i64** %28, align 8
  store i64* %11, i64** %29, align 8
  store i64* %12, i64** %30, align 8
  store %struct.rrset_parse** %13, %struct.rrset_parse*** %31, align 8
  store i32 %14, i32* %32, align 4
  store %struct.regional* %15, %struct.regional** %33, align 8
  %37 = load i32*, i32** %19, align 8
  %38 = load i32*, i32** %20, align 8
  %39 = call i32 @pkt_hash_rrset_first(i32* %37, i32* %38)
  store i32 %39, i32* %34, align 4
  %40 = load %struct.rrset_parse**, %struct.rrset_parse*** %31, align 8
  %41 = load %struct.rrset_parse*, %struct.rrset_parse** %40, align 8
  %42 = icmp ne %struct.rrset_parse* %41, null
  br i1 %42, label %43, label %104

43:                                               ; preds = %16
  %44 = load i64, i64* %22, align 8
  %45 = load i64*, i64** %29, align 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %43
  %49 = load i64, i64* %23, align 8
  %50 = load i64*, i64** %30, align 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %48
  %54 = load i64, i64* %21, align 8
  %55 = load i64*, i64** %28, align 8
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %54, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  %59 = load i32*, i32** %19, align 8
  %60 = load i32*, i32** %20, align 8
  %61 = load i32**, i32*** %26, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = load i32**, i32*** %27, align 8
  %64 = load i32*, i32** %63, align 8
  %65 = call i64 @smart_compare(i32* %59, i32* %60, i32* %62, i32* %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %58
  %68 = load i64, i64* %22, align 8
  %69 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32*, i32** %20, align 8
  %73 = load i32**, i32*** %27, align 8
  store i32* %72, i32** %73, align 8
  store i32 1, i32* %17, align 4
  br label %342

74:                                               ; preds = %67, %58, %53, %48, %43
  %75 = load i64, i64* %22, align 8
  %76 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %103

78:                                               ; preds = %74
  %79 = load i64, i64* %23, align 8
  %80 = load i64*, i64** %30, align 8
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %79, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %78
  %84 = load i32*, i32** %19, align 8
  %85 = load i32*, i32** %19, align 8
  %86 = call i32 @sldns_buffer_current(i32* %85)
  %87 = load i64*, i64** %29, align 8
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @pkt_rrsig_covered_equals(i32* %84, i32 %86, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %83
  %92 = load i32*, i32** %19, align 8
  %93 = load i32*, i32** %20, align 8
  %94 = load i32**, i32*** %26, align 8
  %95 = load i32*, i32** %94, align 8
  %96 = load i32**, i32*** %27, align 8
  %97 = load i32*, i32** %96, align 8
  %98 = call i64 @smart_compare(i32* %92, i32* %93, i32* %95, i32* %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load i32*, i32** %20, align 8
  %102 = load i32**, i32*** %27, align 8
  store i32* %101, i32** %102, align 8
  store i32 1, i32* %17, align 4
  br label %342

103:                                              ; preds = %91, %83, %78, %74
  br label %104

104:                                              ; preds = %103, %16
  %105 = load i32*, i32** %19, align 8
  %106 = load i64, i64* %22, align 8
  %107 = load i32, i32* %32, align 4
  %108 = call i32 @pkt_rrset_flags(i32* %105, i64 %106, i32 %107)
  %109 = load i32*, i32** %25, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i64, i64* %22, align 8
  %111 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %239

113:                                              ; preds = %104
  %114 = load i32*, i32** %19, align 8
  %115 = load i32*, i32** %19, align 8
  %116 = call i32 @sldns_buffer_current(i32* %115)
  %117 = call i64 @pkt_rrsig_covered(i32* %114, i32 %116, i64* %35)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %239

119:                                              ; preds = %113
  %120 = load i32, i32* %34, align 4
  %121 = load i64, i64* %35, align 8
  %122 = load i64, i64* %23, align 8
  %123 = load i32*, i32** %25, align 8
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @pkt_hash_rrset_rest(i32 %120, i64 %121, i64 %122, i32 %124)
  %126 = load i32*, i32** %24, align 8
  store i32 %125, i32* %126, align 4
  %127 = load %struct.msg_parse*, %struct.msg_parse** %18, align 8
  %128 = load i32*, i32** %19, align 8
  %129 = load i32*, i32** %24, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %25, align 8
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %20, align 8
  %134 = load i64, i64* %21, align 8
  %135 = load i64, i64* %35, align 8
  %136 = load i64, i64* %23, align 8
  %137 = call %struct.rrset_parse* @msgparse_hashtable_lookup(%struct.msg_parse* %127, i32* %128, i32 %130, i32 %132, i32* %133, i64 %134, i64 %135, i64 %136)
  %138 = load %struct.rrset_parse**, %struct.rrset_parse*** %31, align 8
  store %struct.rrset_parse* %137, %struct.rrset_parse** %138, align 8
  %139 = load %struct.rrset_parse**, %struct.rrset_parse*** %31, align 8
  %140 = load %struct.rrset_parse*, %struct.rrset_parse** %139, align 8
  %141 = icmp ne %struct.rrset_parse* %140, null
  br i1 %141, label %179, label %142

142:                                              ; preds = %119
  %143 = load i64, i64* %35, align 8
  %144 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %179

146:                                              ; preds = %142
  %147 = load i32, i32* @PACKED_RRSET_NSEC_AT_APEX, align 4
  %148 = load i32*, i32** %25, align 8
  %149 = load i32, i32* %148, align 4
  %150 = xor i32 %149, %147
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* %34, align 4
  %152 = load i64, i64* %35, align 8
  %153 = load i64, i64* %23, align 8
  %154 = load i32*, i32** %25, align 8
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @pkt_hash_rrset_rest(i32 %151, i64 %152, i64 %153, i32 %155)
  %157 = load i32*, i32** %24, align 8
  store i32 %156, i32* %157, align 4
  %158 = load %struct.msg_parse*, %struct.msg_parse** %18, align 8
  %159 = load i32*, i32** %19, align 8
  %160 = load i32*, i32** %24, align 8
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %25, align 8
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %20, align 8
  %165 = load i64, i64* %21, align 8
  %166 = load i64, i64* %35, align 8
  %167 = load i64, i64* %23, align 8
  %168 = call %struct.rrset_parse* @msgparse_hashtable_lookup(%struct.msg_parse* %158, i32* %159, i32 %161, i32 %163, i32* %164, i64 %165, i64 %166, i64 %167)
  %169 = load %struct.rrset_parse**, %struct.rrset_parse*** %31, align 8
  store %struct.rrset_parse* %168, %struct.rrset_parse** %169, align 8
  %170 = load %struct.rrset_parse**, %struct.rrset_parse*** %31, align 8
  %171 = load %struct.rrset_parse*, %struct.rrset_parse** %170, align 8
  %172 = icmp ne %struct.rrset_parse* %171, null
  br i1 %172, label %178, label %173

173:                                              ; preds = %146
  %174 = load i32, i32* @PACKED_RRSET_NSEC_AT_APEX, align 4
  %175 = load i32*, i32** %25, align 8
  %176 = load i32, i32* %175, align 4
  %177 = xor i32 %176, %174
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %173, %146
  br label %179

179:                                              ; preds = %178, %142, %119
  %180 = load %struct.rrset_parse**, %struct.rrset_parse*** %31, align 8
  %181 = load %struct.rrset_parse*, %struct.rrset_parse** %180, align 8
  %182 = icmp ne %struct.rrset_parse* %181, null
  br i1 %182, label %220, label %183

183:                                              ; preds = %179
  %184 = load i64, i64* %35, align 8
  %185 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %220

187:                                              ; preds = %183
  %188 = load i32, i32* @PACKED_RRSET_SOA_NEG, align 4
  %189 = load i32*, i32** %25, align 8
  %190 = load i32, i32* %189, align 4
  %191 = xor i32 %190, %188
  store i32 %191, i32* %189, align 4
  %192 = load i32, i32* %34, align 4
  %193 = load i64, i64* %35, align 8
  %194 = load i64, i64* %23, align 8
  %195 = load i32*, i32** %25, align 8
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @pkt_hash_rrset_rest(i32 %192, i64 %193, i64 %194, i32 %196)
  %198 = load i32*, i32** %24, align 8
  store i32 %197, i32* %198, align 4
  %199 = load %struct.msg_parse*, %struct.msg_parse** %18, align 8
  %200 = load i32*, i32** %19, align 8
  %201 = load i32*, i32** %24, align 8
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %25, align 8
  %204 = load i32, i32* %203, align 4
  %205 = load i32*, i32** %20, align 8
  %206 = load i64, i64* %21, align 8
  %207 = load i64, i64* %35, align 8
  %208 = load i64, i64* %23, align 8
  %209 = call %struct.rrset_parse* @msgparse_hashtable_lookup(%struct.msg_parse* %199, i32* %200, i32 %202, i32 %204, i32* %205, i64 %206, i64 %207, i64 %208)
  %210 = load %struct.rrset_parse**, %struct.rrset_parse*** %31, align 8
  store %struct.rrset_parse* %209, %struct.rrset_parse** %210, align 8
  %211 = load %struct.rrset_parse**, %struct.rrset_parse*** %31, align 8
  %212 = load %struct.rrset_parse*, %struct.rrset_parse** %211, align 8
  %213 = icmp ne %struct.rrset_parse* %212, null
  br i1 %213, label %219, label %214

214:                                              ; preds = %187
  %215 = load i32, i32* @PACKED_RRSET_SOA_NEG, align 4
  %216 = load i32*, i32** %25, align 8
  %217 = load i32, i32* %216, align 4
  %218 = xor i32 %217, %215
  store i32 %218, i32* %216, align 4
  br label %219

219:                                              ; preds = %214, %187
  br label %220

220:                                              ; preds = %219, %183, %179
  %221 = load %struct.rrset_parse**, %struct.rrset_parse*** %31, align 8
  %222 = load %struct.rrset_parse*, %struct.rrset_parse** %221, align 8
  %223 = icmp ne %struct.rrset_parse* %222, null
  br i1 %223, label %224, label %238

224:                                              ; preds = %220
  %225 = load %struct.rrset_parse**, %struct.rrset_parse*** %31, align 8
  %226 = load %struct.rrset_parse*, %struct.rrset_parse** %225, align 8
  %227 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i32**, i32*** %26, align 8
  store i32* %228, i32** %229, align 8
  %230 = load i32*, i32** %20, align 8
  %231 = load i32**, i32*** %27, align 8
  store i32* %230, i32** %231, align 8
  %232 = load i64, i64* %21, align 8
  %233 = load i64*, i64** %28, align 8
  store i64 %232, i64* %233, align 8
  %234 = load i64, i64* %35, align 8
  %235 = load i64*, i64** %29, align 8
  store i64 %234, i64* %235, align 8
  %236 = load i64, i64* %23, align 8
  %237 = load i64*, i64** %30, align 8
  store i64 %236, i64* %237, align 8
  store i32 1, i32* %17, align 4
  br label %342

238:                                              ; preds = %220
  br label %239

239:                                              ; preds = %238, %113, %104
  %240 = load i64, i64* %22, align 8
  %241 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %242 = icmp ne i64 %240, %241
  br i1 %242, label %243, label %301

243:                                              ; preds = %239
  store i32 0, i32* %36, align 4
  %244 = load i32, i32* %34, align 4
  %245 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %246 = load i64, i64* %23, align 8
  %247 = call i32 @pkt_hash_rrset_rest(i32 %244, i64 %245, i64 %246, i32 0)
  %248 = load i32*, i32** %24, align 8
  store i32 %247, i32* %248, align 4
  %249 = load %struct.msg_parse*, %struct.msg_parse** %18, align 8
  %250 = load i32*, i32** %19, align 8
  %251 = load i32*, i32** %24, align 8
  %252 = load i32, i32* %251, align 4
  %253 = load i32*, i32** %20, align 8
  %254 = load i64, i64* %21, align 8
  %255 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %256 = load i64, i64* %23, align 8
  %257 = call %struct.rrset_parse* @msgparse_hashtable_lookup(%struct.msg_parse* %249, i32* %250, i32 %252, i32 0, i32* %253, i64 %254, i64 %255, i64 %256)
  %258 = load %struct.rrset_parse**, %struct.rrset_parse*** %31, align 8
  store %struct.rrset_parse* %257, %struct.rrset_parse** %258, align 8
  %259 = load %struct.rrset_parse**, %struct.rrset_parse*** %31, align 8
  %260 = load %struct.rrset_parse*, %struct.rrset_parse** %259, align 8
  %261 = icmp ne %struct.rrset_parse* %260, null
  br i1 %261, label %262, label %300

262:                                              ; preds = %243
  %263 = load i32*, i32** %19, align 8
  %264 = load %struct.rrset_parse**, %struct.rrset_parse*** %31, align 8
  %265 = load %struct.rrset_parse*, %struct.rrset_parse** %264, align 8
  %266 = load i64, i64* %22, align 8
  %267 = call i64 @rrset_has_sigover(i32* %263, %struct.rrset_parse* %265, i64 %266, i32* %36)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %300

269:                                              ; preds = %262
  %270 = load %struct.rrset_parse**, %struct.rrset_parse*** %31, align 8
  %271 = load %struct.rrset_parse*, %struct.rrset_parse** %270, align 8
  %272 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = load i32**, i32*** %26, align 8
  store i32* %273, i32** %274, align 8
  %275 = load i32*, i32** %20, align 8
  %276 = load i32**, i32*** %27, align 8
  store i32* %275, i32** %276, align 8
  %277 = load i64, i64* %21, align 8
  %278 = load i64*, i64** %28, align 8
  store i64 %277, i64* %278, align 8
  %279 = load i64, i64* %22, align 8
  %280 = load i64*, i64** %29, align 8
  store i64 %279, i64* %280, align 8
  %281 = load i64, i64* %23, align 8
  %282 = load i64*, i64** %30, align 8
  store i64 %281, i64* %282, align 8
  %283 = load %struct.rrset_parse**, %struct.rrset_parse*** %31, align 8
  %284 = load %struct.rrset_parse*, %struct.rrset_parse** %283, align 8
  %285 = load %struct.msg_parse*, %struct.msg_parse** %18, align 8
  %286 = load i32*, i32** %19, align 8
  %287 = load i64, i64* %22, align 8
  %288 = load i32*, i32** %25, align 8
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %36, align 4
  %291 = load i32, i32* %32, align 4
  %292 = load %struct.regional*, %struct.regional** %33, align 8
  %293 = call %struct.rrset_parse* @change_rrsig_rrset(%struct.rrset_parse* %284, %struct.msg_parse* %285, i32* %286, i64 %287, i32 %289, i32 %290, i32 %291, %struct.regional* %292)
  %294 = load %struct.rrset_parse**, %struct.rrset_parse*** %31, align 8
  store %struct.rrset_parse* %293, %struct.rrset_parse** %294, align 8
  %295 = load %struct.rrset_parse**, %struct.rrset_parse*** %31, align 8
  %296 = load %struct.rrset_parse*, %struct.rrset_parse** %295, align 8
  %297 = icmp ne %struct.rrset_parse* %296, null
  br i1 %297, label %299, label %298

298:                                              ; preds = %269
  store i32 0, i32* %17, align 4
  br label %342

299:                                              ; preds = %269
  store i32 1, i32* %17, align 4
  br label %342

300:                                              ; preds = %262, %243
  br label %301

301:                                              ; preds = %300, %239
  %302 = load i32, i32* %34, align 4
  %303 = load i64, i64* %22, align 8
  %304 = load i64, i64* %23, align 8
  %305 = load i32*, i32** %25, align 8
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @pkt_hash_rrset_rest(i32 %302, i64 %303, i64 %304, i32 %306)
  %308 = load i32*, i32** %24, align 8
  store i32 %307, i32* %308, align 4
  %309 = load %struct.msg_parse*, %struct.msg_parse** %18, align 8
  %310 = load i32*, i32** %19, align 8
  %311 = load i32*, i32** %24, align 8
  %312 = load i32, i32* %311, align 4
  %313 = load i32*, i32** %25, align 8
  %314 = load i32, i32* %313, align 4
  %315 = load i32*, i32** %20, align 8
  %316 = load i64, i64* %21, align 8
  %317 = load i64, i64* %22, align 8
  %318 = load i64, i64* %23, align 8
  %319 = call %struct.rrset_parse* @msgparse_hashtable_lookup(%struct.msg_parse* %309, i32* %310, i32 %312, i32 %314, i32* %315, i64 %316, i64 %317, i64 %318)
  %320 = load %struct.rrset_parse**, %struct.rrset_parse*** %31, align 8
  store %struct.rrset_parse* %319, %struct.rrset_parse** %320, align 8
  %321 = load %struct.rrset_parse**, %struct.rrset_parse*** %31, align 8
  %322 = load %struct.rrset_parse*, %struct.rrset_parse** %321, align 8
  %323 = icmp ne %struct.rrset_parse* %322, null
  br i1 %323, label %324, label %330

324:                                              ; preds = %301
  %325 = load %struct.rrset_parse**, %struct.rrset_parse*** %31, align 8
  %326 = load %struct.rrset_parse*, %struct.rrset_parse** %325, align 8
  %327 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %326, i32 0, i32 0
  %328 = load i32*, i32** %327, align 8
  %329 = load i32**, i32*** %26, align 8
  store i32* %328, i32** %329, align 8
  br label %333

330:                                              ; preds = %301
  %331 = load i32*, i32** %20, align 8
  %332 = load i32**, i32*** %26, align 8
  store i32* %331, i32** %332, align 8
  br label %333

333:                                              ; preds = %330, %324
  %334 = load i32*, i32** %20, align 8
  %335 = load i32**, i32*** %27, align 8
  store i32* %334, i32** %335, align 8
  %336 = load i64, i64* %21, align 8
  %337 = load i64*, i64** %28, align 8
  store i64 %336, i64* %337, align 8
  %338 = load i64, i64* %22, align 8
  %339 = load i64*, i64** %29, align 8
  store i64 %338, i64* %339, align 8
  %340 = load i64, i64* %23, align 8
  %341 = load i64*, i64** %30, align 8
  store i64 %340, i64* %341, align 8
  store i32 1, i32* %17, align 4
  br label %342

342:                                              ; preds = %333, %299, %298, %224, %100, %71
  %343 = load i32, i32* %17, align 4
  ret i32 %343
}

declare dso_local i32 @pkt_hash_rrset_first(i32*, i32*) #1

declare dso_local i64 @smart_compare(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @pkt_rrsig_covered_equals(i32*, i32, i64) #1

declare dso_local i32 @sldns_buffer_current(i32*) #1

declare dso_local i32 @pkt_rrset_flags(i32*, i64, i32) #1

declare dso_local i64 @pkt_rrsig_covered(i32*, i32, i64*) #1

declare dso_local i32 @pkt_hash_rrset_rest(i32, i64, i64, i32) #1

declare dso_local %struct.rrset_parse* @msgparse_hashtable_lookup(%struct.msg_parse*, i32*, i32, i32, i32*, i64, i64, i64) #1

declare dso_local i64 @rrset_has_sigover(i32*, %struct.rrset_parse*, i64, i32*) #1

declare dso_local %struct.rrset_parse* @change_rrsig_rrset(%struct.rrset_parse*, %struct.msg_parse*, i32*, i64, i32, i32, i32, %struct.regional*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
