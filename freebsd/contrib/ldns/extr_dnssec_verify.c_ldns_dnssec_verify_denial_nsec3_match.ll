; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_verify_denial_nsec3_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_verify_denial_nsec3_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_DNSSEC_NSEC_RR_NOT_COVERED = common dso_local global i64 0, align 8
@LDNS_RCODE_NXDOMAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@LDNS_STATUS_DNSSEC_NSEC_WILDCARD_NOT_COVERED = common dso_local global i64 0, align 8
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DS = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_CNAME = common dso_local global i32 0, align 4
@LDNS_STATUS_NSEC3_ERR = common dso_local global i64 0, align 8
@next_closer = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_dnssec_verify_denial_nsec3_match(i32* %0, i32* %1, i32 (i32*)* %2, i64 %3, i32 %4, i32 %5, i32** %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32 (i32*)*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 (i32*)* %2, i32 (i32*)** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32** %6, i32*** %14, align 8
  store i32 0, i32* %18, align 4
  %25 = load i32*, i32** %21, align 8
  store i32* %25, i32** %21, align 8
  %26 = load i64, i64* @LDNS_STATUS_DNSSEC_NSEC_RR_NOT_COVERED, align 8
  store i64 %26, i64* %24, align 8
  %27 = load i32**, i32*** %14, align 8
  %28 = icmp ne i32** %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i32**, i32*** %14, align 8
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %29, %7
  %32 = load i32*, i32** %9, align 8
  %33 = call i32* @ldns_rr_list_rr(i32* %32, i64 0)
  %34 = call i32* @ldns_rr_owner(i32* %33)
  %35 = call i32* @ldns_dname_left_chop(i32* %34)
  store i32* %35, i32** %19, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @LDNS_RCODE_NXDOMAIN, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %101

39:                                               ; preds = %31
  %40 = load i32*, i32** %8, align 8
  %41 = call i32* @ldns_rr_owner(i32* %40)
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @ldns_rr_get_type(i32* %42)
  %44 = load i32*, i32** %9, align 8
  %45 = call i32* @ldns_dnssec_nsec3_closest_encloser(i32* %41, i32 %43, i32* %44)
  store i32* %45, i32** %15, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %39
  %49 = load i64, i64* @LDNS_STATUS_DNSSEC_NSEC_RR_NOT_COVERED, align 8
  store i64 %49, i64* %24, align 8
  br label %393

50:                                               ; preds = %39
  %51 = call i32* @ldns_dname_new_frm_str(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %51, i32** %16, align 8
  %52 = load i32*, i32** %16, align 8
  %53 = load i32*, i32** %15, align 8
  %54 = call i32 @ldns_dname_cat(i32* %52, i32* %53)
  store i64 0, i64* %23, align 8
  br label %55

55:                                               ; preds = %86, %50
  %56 = load i64, i64* %23, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i64 @ldns_rr_list_rr_count(i32* %57)
  %59 = icmp ult i64 %56, %58
  br i1 %59, label %60, label %89

60:                                               ; preds = %55
  %61 = load i32*, i32** %9, align 8
  %62 = call i32* @ldns_rr_list_rr(i32* %61, i64 0)
  %63 = load i32*, i32** %16, align 8
  %64 = call i32* @ldns_nsec3_hash_name_frm_nsec3(i32* %62, i32* %63)
  store i32* %64, i32** %17, align 8
  %65 = load i32*, i32** %17, align 8
  %66 = load i32*, i32** %19, align 8
  %67 = call i32 @ldns_dname_cat(i32* %65, i32* %66)
  %68 = load i32*, i32** %9, align 8
  %69 = load i64, i64* %23, align 8
  %70 = call i32* @ldns_rr_list_rr(i32* %68, i64 %69)
  %71 = load i32*, i32** %17, align 8
  %72 = call i64 @ldns_nsec_covers_name(i32* %70, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %60
  store i32 1, i32* %18, align 4
  %75 = load i32**, i32*** %14, align 8
  %76 = icmp ne i32** %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32*, i32** %9, align 8
  %79 = load i64, i64* %23, align 8
  %80 = call i32* @ldns_rr_list_rr(i32* %78, i64 %79)
  %81 = load i32**, i32*** %14, align 8
  store i32* %80, i32** %81, align 8
  br label %82

82:                                               ; preds = %77, %74
  br label %83

83:                                               ; preds = %82, %60
  %84 = load i32*, i32** %17, align 8
  %85 = call i32 @ldns_rdf_deep_free(i32* %84)
  br label %86

86:                                               ; preds = %83
  %87 = load i64, i64* %23, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %23, align 8
  br label %55

89:                                               ; preds = %55
  %90 = load i32, i32* %18, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = load i64, i64* @LDNS_STATUS_DNSSEC_NSEC_WILDCARD_NOT_COVERED, align 8
  store i64 %93, i64* %24, align 8
  br label %96

94:                                               ; preds = %89
  %95 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %95, i64* %24, align 8
  br label %96

96:                                               ; preds = %94, %92
  %97 = load i32*, i32** %15, align 8
  %98 = call i32 @ldns_rdf_deep_free(i32* %97)
  %99 = load i32*, i32** %16, align 8
  %100 = call i32 @ldns_rdf_deep_free(i32* %99)
  br label %392

101:                                              ; preds = %31
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %241

104:                                              ; preds = %101
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %241

108:                                              ; preds = %104
  %109 = load i32*, i32** %9, align 8
  %110 = call i32* @ldns_rr_list_rr(i32* %109, i64 0)
  %111 = load i32*, i32** %8, align 8
  %112 = call i32* @ldns_rr_owner(i32* %111)
  %113 = call i32* @ldns_nsec3_hash_name_frm_nsec3(i32* %110, i32* %112)
  store i32* %113, i32** %20, align 8
  %114 = load i32*, i32** %20, align 8
  %115 = load i32*, i32** %19, align 8
  %116 = call i32 @ldns_dname_cat(i32* %114, i32* %115)
  store i64 0, i64* %23, align 8
  br label %117

117:                                              ; preds = %158, %108
  %118 = load i64, i64* %23, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = call i64 @ldns_rr_list_rr_count(i32* %119)
  %121 = icmp ult i64 %118, %120
  br i1 %121, label %122, label %161

122:                                              ; preds = %117
  %123 = load i32*, i32** %20, align 8
  %124 = load i32*, i32** %9, align 8
  %125 = load i64, i64* %23, align 8
  %126 = call i32* @ldns_rr_list_rr(i32* %124, i64 %125)
  %127 = call i32* @ldns_rr_owner(i32* %126)
  %128 = call i64 @ldns_dname_compare(i32* %123, i32* %127)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %157

130:                                              ; preds = %122
  %131 = load i32*, i32** %9, align 8
  %132 = load i64, i64* %23, align 8
  %133 = call i32* @ldns_rr_list_rr(i32* %131, i64 %132)
  %134 = call i32 @ldns_nsec3_bitmap(i32* %133)
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @ldns_nsec_bitmap_covers_type(i32 %134, i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %156, label %138

138:                                              ; preds = %130
  %139 = load i32*, i32** %9, align 8
  %140 = load i64, i64* %23, align 8
  %141 = call i32* @ldns_rr_list_rr(i32* %139, i64 %140)
  %142 = call i32 @ldns_nsec3_bitmap(i32* %141)
  %143 = load i32, i32* @LDNS_RR_TYPE_CNAME, align 4
  %144 = call i32 @ldns_nsec_bitmap_covers_type(i32 %142, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %156, label %146

146:                                              ; preds = %138
  %147 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %147, i64* %24, align 8
  %148 = load i32**, i32*** %14, align 8
  %149 = icmp ne i32** %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load i32*, i32** %9, align 8
  %152 = load i64, i64* %23, align 8
  %153 = call i32* @ldns_rr_list_rr(i32* %151, i64 %152)
  %154 = load i32**, i32*** %14, align 8
  store i32* %153, i32** %154, align 8
  br label %155

155:                                              ; preds = %150, %146
  br label %393

156:                                              ; preds = %138, %130
  br label %157

157:                                              ; preds = %156, %122
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %23, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %23, align 8
  br label %117

161:                                              ; preds = %117
  %162 = load i64, i64* @LDNS_STATUS_DNSSEC_NSEC_RR_NOT_COVERED, align 8
  store i64 %162, i64* %24, align 8
  %163 = load i32*, i32** %8, align 8
  %164 = call i32* @ldns_rr_owner(i32* %163)
  %165 = load i32*, i32** %8, align 8
  %166 = call i32 @ldns_rr_get_type(i32* %165)
  %167 = load i32*, i32** %9, align 8
  %168 = call i32* @ldns_dnssec_nsec3_closest_encloser(i32* %164, i32 %166, i32* %167)
  store i32* %168, i32** %15, align 8
  %169 = load i32*, i32** %15, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %161
  %172 = load i64, i64* @LDNS_STATUS_NSEC3_ERR, align 8
  store i64 %172, i64* %24, align 8
  br label %393

173:                                              ; preds = %161
  %174 = call i32* @ldns_dname_new_frm_str(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %174, i32** %16, align 8
  %175 = load i32*, i32** %16, align 8
  %176 = load i32*, i32** %15, align 8
  %177 = call i32 @ldns_dname_cat(i32* %175, i32* %176)
  store i64 0, i64* %23, align 8
  br label %178

178:                                              ; preds = %233, %173
  %179 = load i64, i64* %23, align 8
  %180 = load i32*, i32** %9, align 8
  %181 = call i64 @ldns_rr_list_rr_count(i32* %180)
  %182 = icmp ult i64 %179, %181
  br i1 %182, label %183, label %236

183:                                              ; preds = %178
  %184 = load i32*, i32** %9, align 8
  %185 = call i32* @ldns_rr_list_rr(i32* %184, i64 0)
  %186 = load i32*, i32** %16, align 8
  %187 = call i32* @ldns_nsec3_hash_name_frm_nsec3(i32* %185, i32* %186)
  store i32* %187, i32** %17, align 8
  %188 = load i32*, i32** %17, align 8
  %189 = load i32*, i32** %19, align 8
  %190 = call i32 @ldns_dname_cat(i32* %188, i32* %189)
  %191 = load i32*, i32** %17, align 8
  %192 = load i32*, i32** %9, align 8
  %193 = load i64, i64* %23, align 8
  %194 = call i32* @ldns_rr_list_rr(i32* %192, i64 %193)
  %195 = call i32* @ldns_rr_owner(i32* %194)
  %196 = call i64 @ldns_dname_compare(i32* %191, i32* %195)
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %225

198:                                              ; preds = %183
  %199 = load i32*, i32** %9, align 8
  %200 = load i64, i64* %23, align 8
  %201 = call i32* @ldns_rr_list_rr(i32* %199, i64 %200)
  %202 = call i32 @ldns_nsec3_bitmap(i32* %201)
  %203 = load i32, i32* %12, align 4
  %204 = call i32 @ldns_nsec_bitmap_covers_type(i32 %202, i32 %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %224, label %206

206:                                              ; preds = %198
  %207 = load i32*, i32** %9, align 8
  %208 = load i64, i64* %23, align 8
  %209 = call i32* @ldns_rr_list_rr(i32* %207, i64 %208)
  %210 = call i32 @ldns_nsec3_bitmap(i32* %209)
  %211 = load i32, i32* @LDNS_RR_TYPE_CNAME, align 4
  %212 = call i32 @ldns_nsec_bitmap_covers_type(i32 %210, i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %224, label %214

214:                                              ; preds = %206
  %215 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %215, i64* %24, align 8
  %216 = load i32**, i32*** %14, align 8
  %217 = icmp ne i32** %216, null
  br i1 %217, label %218, label %223

218:                                              ; preds = %214
  %219 = load i32*, i32** %9, align 8
  %220 = load i64, i64* %23, align 8
  %221 = call i32* @ldns_rr_list_rr(i32* %219, i64 %220)
  %222 = load i32**, i32*** %14, align 8
  store i32* %221, i32** %222, align 8
  br label %223

223:                                              ; preds = %218, %214
  br label %224

224:                                              ; preds = %223, %206, %198
  br label %225

225:                                              ; preds = %224, %183
  %226 = load i32*, i32** %17, align 8
  %227 = call i32 @ldns_rdf_deep_free(i32* %226)
  %228 = load i64, i64* %24, align 8
  %229 = load i64, i64* @LDNS_STATUS_OK, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %225
  br label %236

232:                                              ; preds = %225
  br label %233

233:                                              ; preds = %232
  %234 = load i64, i64* %23, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %23, align 8
  br label %178

236:                                              ; preds = %231, %178
  %237 = load i32*, i32** %15, align 8
  %238 = call i32 @ldns_rdf_deep_free(i32* %237)
  %239 = load i32*, i32** %16, align 8
  %240 = call i32 @ldns_rdf_deep_free(i32* %239)
  br label %391

241:                                              ; preds = %104, %101
  %242 = load i32, i32* %13, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %390

244:                                              ; preds = %241
  %245 = load i32, i32* %12, align 4
  %246 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %390

248:                                              ; preds = %244
  %249 = load i32*, i32** %9, align 8
  %250 = call i32* @ldns_rr_list_rr(i32* %249, i64 0)
  %251 = load i32*, i32** %8, align 8
  %252 = call i32* @ldns_rr_owner(i32* %251)
  %253 = call i32* @ldns_nsec3_hash_name_frm_nsec3(i32* %250, i32* %252)
  store i32* %253, i32** %20, align 8
  %254 = load i32*, i32** %20, align 8
  %255 = load i32*, i32** %19, align 8
  %256 = call i32 @ldns_dname_cat(i32* %254, i32* %255)
  store i64 0, i64* %23, align 8
  br label %257

257:                                              ; preds = %298, %248
  %258 = load i64, i64* %23, align 8
  %259 = load i32*, i32** %9, align 8
  %260 = call i64 @ldns_rr_list_rr_count(i32* %259)
  %261 = icmp ult i64 %258, %260
  br i1 %261, label %262, label %301

262:                                              ; preds = %257
  %263 = load i32*, i32** %20, align 8
  %264 = load i32*, i32** %9, align 8
  %265 = load i64, i64* %23, align 8
  %266 = call i32* @ldns_rr_list_rr(i32* %264, i64 %265)
  %267 = call i32* @ldns_rr_owner(i32* %266)
  %268 = call i64 @ldns_dname_compare(i32* %263, i32* %267)
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %297

270:                                              ; preds = %262
  %271 = load i32*, i32** %9, align 8
  %272 = load i64, i64* %23, align 8
  %273 = call i32* @ldns_rr_list_rr(i32* %271, i64 %272)
  %274 = call i32 @ldns_nsec3_bitmap(i32* %273)
  %275 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %276 = call i32 @ldns_nsec_bitmap_covers_type(i32 %274, i32 %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %296, label %278

278:                                              ; preds = %270
  %279 = load i32*, i32** %9, align 8
  %280 = load i64, i64* %23, align 8
  %281 = call i32* @ldns_rr_list_rr(i32* %279, i64 %280)
  %282 = call i32 @ldns_nsec3_bitmap(i32* %281)
  %283 = load i32, i32* @LDNS_RR_TYPE_CNAME, align 4
  %284 = call i32 @ldns_nsec_bitmap_covers_type(i32 %282, i32 %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %296, label %286

286:                                              ; preds = %278
  %287 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %287, i64* %24, align 8
  %288 = load i32**, i32*** %14, align 8
  %289 = icmp ne i32** %288, null
  br i1 %289, label %290, label %295

290:                                              ; preds = %286
  %291 = load i32*, i32** %9, align 8
  %292 = load i64, i64* %23, align 8
  %293 = call i32* @ldns_rr_list_rr(i32* %291, i64 %292)
  %294 = load i32**, i32*** %14, align 8
  store i32* %293, i32** %294, align 8
  br label %295

295:                                              ; preds = %290, %286
  br label %393

296:                                              ; preds = %278, %270
  br label %297

297:                                              ; preds = %296, %262
  br label %298

298:                                              ; preds = %297
  %299 = load i64, i64* %23, align 8
  %300 = add i64 %299, 1
  store i64 %300, i64* %23, align 8
  br label %257

301:                                              ; preds = %257
  %302 = load i64, i64* @LDNS_STATUS_DNSSEC_NSEC_RR_NOT_COVERED, align 8
  store i64 %302, i64* %24, align 8
  %303 = load i32*, i32** %8, align 8
  %304 = call i32* @ldns_rr_owner(i32* %303)
  %305 = load i32*, i32** %8, align 8
  %306 = call i32 @ldns_rr_get_type(i32* %305)
  %307 = load i32*, i32** %9, align 8
  %308 = call i32* @ldns_dnssec_nsec3_closest_encloser(i32* %304, i32 %306, i32* %307)
  store i32* %308, i32** %15, align 8
  %309 = load i32*, i32** %15, align 8
  %310 = icmp ne i32* %309, null
  br i1 %310, label %313, label %311

311:                                              ; preds = %301
  %312 = load i64, i64* @LDNS_STATUS_NSEC3_ERR, align 8
  store i64 %312, i64* %24, align 8
  br label %393

313:                                              ; preds = %301
  %314 = load i32*, i32** %15, align 8
  %315 = call i64 @ldns_dname_label_count(i32* %314)
  %316 = add nsw i64 %315, 1
  %317 = load i32*, i32** %8, align 8
  %318 = call i32* @ldns_rr_owner(i32* %317)
  %319 = call i64 @ldns_dname_label_count(i32* %318)
  %320 = icmp sge i64 %316, %319
  br i1 %320, label %321, label %323

321:                                              ; preds = %313
  %322 = load i32*, i32** %20, align 8
  store i32* %322, i32** %22, align 8
  br label %341

323:                                              ; preds = %313
  %324 = load i32*, i32** %8, align 8
  %325 = call i32* @ldns_rr_owner(i32* %324)
  %326 = load i32*, i32** %8, align 8
  %327 = call i32* @ldns_rr_owner(i32* %326)
  %328 = call i64 @ldns_dname_label_count(i32* %327)
  %329 = load i32*, i32** %15, align 8
  %330 = call i64 @ldns_dname_label_count(i32* %329)
  %331 = add nsw i64 %330, 1
  %332 = sub nsw i64 %328, %331
  %333 = call i32* @ldns_dname_clone_from(i32* %325, i64 %332)
  store i32* %333, i32** %21, align 8
  %334 = load i32*, i32** %9, align 8
  %335 = call i32* @ldns_rr_list_rr(i32* %334, i64 0)
  %336 = load i32*, i32** %21, align 8
  %337 = call i32* @ldns_nsec3_hash_name_frm_nsec3(i32* %335, i32* %336)
  store i32* %337, i32** %22, align 8
  %338 = load i32*, i32** %22, align 8
  %339 = load i32*, i32** %19, align 8
  %340 = call i32 @ldns_dname_cat(i32* %338, i32* %339)
  br label %341

341:                                              ; preds = %323, %321
  store i64 0, i64* %23, align 8
  br label %342

342:                                              ; preds = %371, %341
  %343 = load i64, i64* %23, align 8
  %344 = load i32*, i32** %9, align 8
  %345 = call i64 @ldns_rr_list_rr_count(i32* %344)
  %346 = icmp ult i64 %343, %345
  br i1 %346, label %347, label %374

347:                                              ; preds = %342
  %348 = load i32*, i32** %9, align 8
  %349 = load i64, i64* %23, align 8
  %350 = call i32* @ldns_rr_list_rr(i32* %348, i64 %349)
  %351 = load i32*, i32** %22, align 8
  %352 = call i64 @ldns_nsec_covers_name(i32* %350, i32* %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %370

354:                                              ; preds = %347
  %355 = load i32*, i32** %9, align 8
  %356 = load i64, i64* %23, align 8
  %357 = call i32* @ldns_rr_list_rr(i32* %355, i64 %356)
  %358 = call i64 @ldns_nsec3_optout(i32* %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %370

360:                                              ; preds = %354
  %361 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %361, i64* %24, align 8
  %362 = load i32**, i32*** %14, align 8
  %363 = icmp ne i32** %362, null
  br i1 %363, label %364, label %369

364:                                              ; preds = %360
  %365 = load i32*, i32** %9, align 8
  %366 = load i64, i64* %23, align 8
  %367 = call i32* @ldns_rr_list_rr(i32* %365, i64 %366)
  %368 = load i32**, i32*** %14, align 8
  store i32* %367, i32** %368, align 8
  br label %369

369:                                              ; preds = %364, %360
  br label %374

370:                                              ; preds = %354, %347
  br label %371

371:                                              ; preds = %370
  %372 = load i64, i64* %23, align 8
  %373 = add i64 %372, 1
  store i64 %373, i64* %23, align 8
  br label %342

374:                                              ; preds = %369, %342
  %375 = load i32*, i32** %15, align 8
  %376 = call i64 @ldns_dname_label_count(i32* %375)
  %377 = add nsw i64 %376, 1
  %378 = load i32*, i32** %8, align 8
  %379 = call i32* @ldns_rr_owner(i32* %378)
  %380 = call i64 @ldns_dname_label_count(i32* %379)
  %381 = icmp slt i64 %377, %380
  br i1 %381, label %382, label %387

382:                                              ; preds = %374
  %383 = load i32*, i32** %22, align 8
  %384 = call i32 @ldns_rdf_deep_free(i32* %383)
  %385 = load i32*, i32** %21, align 8
  %386 = call i32 @ldns_rdf_deep_free(i32* %385)
  br label %387

387:                                              ; preds = %382, %374
  %388 = load i32*, i32** %15, align 8
  %389 = call i32 @ldns_rdf_deep_free(i32* %388)
  br label %390

390:                                              ; preds = %387, %244, %241
  br label %391

391:                                              ; preds = %390, %236
  br label %392

392:                                              ; preds = %391, %96
  br label %393

393:                                              ; preds = %392, %311, %295, %171, %155, %48
  %394 = load i32*, i32** %19, align 8
  %395 = call i32 @ldns_rdf_deep_free(i32* %394)
  %396 = load i64, i64* %24, align 8
  ret i64 %396
}

declare dso_local i32* @ldns_dname_left_chop(i32*) #1

declare dso_local i32* @ldns_rr_owner(i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i32* @ldns_dnssec_nsec3_closest_encloser(i32*, i32, i32*) #1

declare dso_local i32 @ldns_rr_get_type(i32*) #1

declare dso_local i32* @ldns_dname_new_frm_str(i8*) #1

declare dso_local i32 @ldns_dname_cat(i32*, i32*) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32* @ldns_nsec3_hash_name_frm_nsec3(i32*, i32*) #1

declare dso_local i64 @ldns_nsec_covers_name(i32*, i32*) #1

declare dso_local i32 @ldns_rdf_deep_free(i32*) #1

declare dso_local i64 @ldns_dname_compare(i32*, i32*) #1

declare dso_local i32 @ldns_nsec_bitmap_covers_type(i32, i32) #1

declare dso_local i32 @ldns_nsec3_bitmap(i32*) #1

declare dso_local i64 @ldns_dname_label_count(i32*) #1

declare dso_local i32* @ldns_dname_clone_from(i32*, i64) #1

declare dso_local i64 @ldns_nsec3_optout(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
