; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_update.c_ldns_update_soa_zone_mname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_update.c_ldns_update_soa_zone_mname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8
@LDNS_RD = common dso_local global i32 0, align 4
@LDNS_STATUS_ERR = common dso_local global i64 0, align 8
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@LDNS_STATUS_MEM_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_update_soa_zone_mname(i8* %0, i32* %1, i32 %2, i32** %3, i32** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32**, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32** %3, i32*** %10, align 8
  store i32** %4, i32*** %11, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32* @ldns_dname_new_frm_str(i8* %24)
  store i32* %25, i32** %17, align 8
  %26 = load i32*, i32** %17, align 8
  %27 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @LDNS_RD, align 4
  %30 = call i32* @ldns_pkt_query_new(i32* %26, i64 %27, i32 %28, i32 %29)
  store i32* %30, i32** %20, align 8
  %31 = load i32*, i32** %20, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %5
  %34 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %34, i64* %6, align 8
  br label %274

35:                                               ; preds = %5
  store i32* null, i32** %17, align 8
  %36 = load i32*, i32** %20, align 8
  %37 = call i32 @ldns_pkt_set_random_id(i32* %36)
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %20, align 8
  %40 = call i64 @ldns_resolver_send_pkt(i32** %21, i32* %38, i32* %39)
  %41 = load i64, i64* @LDNS_STATUS_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i32*, i32** %20, align 8
  %45 = call i32 @ldns_pkt_free(i32* %44)
  %46 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %46, i64* %6, align 8
  br label %274

47:                                               ; preds = %35
  %48 = load i32*, i32** %20, align 8
  %49 = call i32 @ldns_pkt_free(i32* %48)
  %50 = load i32*, i32** %21, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %53, i64* %6, align 8
  br label %274

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %69, %54
  %56 = load i32*, i32** %21, align 8
  %57 = call i32 @ldns_pkt_authority(i32* %56)
  %58 = call i32* @ldns_rr_list_pop_rr(i32 %57)
  store i32* %58, i32** %12, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load i32*, i32** %12, align 8
  %62 = call i64 @ldns_rr_get_type(i32* %61)
  %63 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = load i32*, i32** %12, align 8
  %67 = call i32* @ldns_rr_rdf(i32* %66, i32 0)
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %60
  br label %55

70:                                               ; preds = %65
  %71 = load i32*, i32** %12, align 8
  %72 = call i32* @ldns_rr_rdf(i32* %71, i32 0)
  %73 = call i32* @ldns_rdf_clone(i32* %72)
  store i32* %73, i32** %15, align 8
  br label %74

74:                                               ; preds = %70, %55
  %75 = load i32*, i32** %21, align 8
  %76 = call i32 @ldns_pkt_free(i32* %75)
  %77 = load i32*, i32** %12, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %80, i64* %6, align 8
  br label %274

81:                                               ; preds = %74
  %82 = load i32*, i32** %15, align 8
  %83 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @LDNS_RD, align 4
  %86 = call i32* @ldns_pkt_query_new(i32* %82, i64 %83, i32 %84, i32 %85)
  store i32* %86, i32** %20, align 8
  %87 = load i32*, i32** %20, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %81
  %90 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %90, i64* %6, align 8
  br label %274

91:                                               ; preds = %81
  store i32* null, i32** %15, align 8
  %92 = load i32*, i32** %20, align 8
  %93 = call i32 @ldns_pkt_set_random_id(i32* %92)
  %94 = load i32*, i32** %8, align 8
  %95 = load i32*, i32** %20, align 8
  %96 = call i64 @ldns_resolver_send_pkt(i32** %21, i32* %94, i32* %95)
  %97 = load i64, i64* @LDNS_STATUS_OK, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load i32*, i32** %20, align 8
  %101 = call i32 @ldns_pkt_free(i32* %100)
  %102 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %102, i64* %6, align 8
  br label %274

103:                                              ; preds = %91
  %104 = load i32*, i32** %20, align 8
  %105 = call i32 @ldns_pkt_free(i32* %104)
  %106 = load i32*, i32** %21, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %103
  %109 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %109, i64* %6, align 8
  br label %274

110:                                              ; preds = %103
  %111 = load i32*, i32** %21, align 8
  %112 = call i64 @ldns_pkt_ancount(i32* %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32*, i32** %21, align 8
  %116 = call i32 @ldns_pkt_free(i32* %115)
  %117 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %117, i64* %6, align 8
  br label %274

118:                                              ; preds = %110
  %119 = load i32*, i32** %21, align 8
  %120 = call i32 @ldns_pkt_answer(i32* %119)
  %121 = call i32* @ldns_rr_list_pop_rr(i32 %120)
  store i32* %121, i32** %13, align 8
  %122 = load i32*, i32** %13, align 8
  %123 = call i32* @ldns_rr_rdf(i32* %122, i32 0)
  store i32* %123, i32** %16, align 8
  %124 = load i32*, i32** %8, align 8
  %125 = call i32* @ldns_resolver_clone(i32* %124)
  store i32* %125, i32** %22, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %118
  %128 = load i64, i64* @LDNS_STATUS_MEM_ERR, align 8
  store i64 %128, i64* %6, align 8
  br label %274

129:                                              ; preds = %118
  %130 = load i32*, i32** %22, align 8
  %131 = call i32** @ldns_resolver_nameservers(i32* %130)
  store i32** %131, i32*** %19, align 8
  store i64 0, i64* %23, align 8
  br label %132

132:                                              ; preds = %165, %129
  %133 = load i64, i64* %23, align 8
  %134 = load i32*, i32** %22, align 8
  %135 = call i32 @ldns_resolver_nameserver_count(i32* %134)
  %136 = sext i32 %135 to i64
  %137 = icmp ult i64 %133, %136
  br i1 %137, label %138, label %168

138:                                              ; preds = %132
  %139 = load i32*, i32** %16, align 8
  %140 = load i32**, i32*** %19, align 8
  %141 = load i64, i64* %23, align 8
  %142 = getelementptr inbounds i32*, i32** %140, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = call i64 @ldns_rdf_compare(i32* %139, i32* %143)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %138
  %147 = load i64, i64* %23, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %146
  %150 = load i32**, i32*** %19, align 8
  %151 = getelementptr inbounds i32*, i32** %150, i64 0
  %152 = load i32*, i32** %151, align 8
  store i32* %152, i32** %18, align 8
  %153 = load i32**, i32*** %19, align 8
  %154 = load i64, i64* %23, align 8
  %155 = getelementptr inbounds i32*, i32** %153, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = load i32**, i32*** %19, align 8
  %158 = getelementptr inbounds i32*, i32** %157, i64 0
  store i32* %156, i32** %158, align 8
  %159 = load i32*, i32** %18, align 8
  %160 = load i32**, i32*** %19, align 8
  %161 = load i64, i64* %23, align 8
  %162 = getelementptr inbounds i32*, i32** %160, i64 %161
  store i32* %159, i32** %162, align 8
  br label %163

163:                                              ; preds = %149, %146
  br label %168

164:                                              ; preds = %138
  br label %165

165:                                              ; preds = %164
  %166 = load i64, i64* %23, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %23, align 8
  br label %132

168:                                              ; preds = %163, %132
  %169 = load i64, i64* %23, align 8
  %170 = load i32*, i32** %22, align 8
  %171 = call i32 @ldns_resolver_nameserver_count(i32* %170)
  %172 = sext i32 %171 to i64
  %173 = icmp uge i64 %169, %172
  br i1 %173, label %174, label %197

174:                                              ; preds = %168
  %175 = load i32*, i32** %22, align 8
  %176 = load i32*, i32** %16, align 8
  %177 = call i32 @ldns_resolver_push_nameserver(i32* %175, i32* %176)
  %178 = load i32*, i32** %22, align 8
  %179 = call i32** @ldns_resolver_nameservers(i32* %178)
  store i32** %179, i32*** %19, align 8
  %180 = load i32*, i32** %22, align 8
  %181 = call i32 @ldns_resolver_nameserver_count(i32* %180)
  %182 = sub nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  store i64 %183, i64* %23, align 8
  %184 = load i32**, i32*** %19, align 8
  %185 = getelementptr inbounds i32*, i32** %184, i64 0
  %186 = load i32*, i32** %185, align 8
  store i32* %186, i32** %18, align 8
  %187 = load i32**, i32*** %19, align 8
  %188 = load i64, i64* %23, align 8
  %189 = getelementptr inbounds i32*, i32** %187, i64 %188
  %190 = load i32*, i32** %189, align 8
  %191 = load i32**, i32*** %19, align 8
  %192 = getelementptr inbounds i32*, i32** %191, i64 0
  store i32* %190, i32** %192, align 8
  %193 = load i32*, i32** %18, align 8
  %194 = load i32**, i32*** %19, align 8
  %195 = load i64, i64* %23, align 8
  %196 = getelementptr inbounds i32*, i32** %194, i64 %195
  store i32* %193, i32** %196, align 8
  br label %197

197:                                              ; preds = %174, %168
  %198 = load i32*, i32** %21, align 8
  %199 = call i32 @ldns_pkt_free(i32* %198)
  %200 = load i32*, i32** %22, align 8
  %201 = call i32 @ldns_resolver_set_random(i32* %200, i32 0)
  %202 = load i8*, i8** %7, align 8
  %203 = call i32* @ldns_dname_new_frm_str(i8* %202)
  store i32* %203, i32** %17, align 8
  %204 = load i32*, i32** %17, align 8
  %205 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* @LDNS_RD, align 4
  %208 = call i32* @ldns_pkt_query_new(i32* %204, i64 %205, i32 %206, i32 %207)
  store i32* %208, i32** %20, align 8
  %209 = load i32*, i32** %20, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %215, label %211

211:                                              ; preds = %197
  %212 = load i32*, i32** %22, align 8
  %213 = call i32 @ldns_resolver_free(i32* %212)
  %214 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %214, i64* %6, align 8
  br label %274

215:                                              ; preds = %197
  store i32* null, i32** %17, align 8
  %216 = load i32*, i32** %20, align 8
  %217 = call i32 @ldns_pkt_set_random_id(i32* %216)
  %218 = load i32*, i32** %22, align 8
  %219 = load i32*, i32** %20, align 8
  %220 = call i64 @ldns_resolver_send_pkt(i32** %21, i32* %218, i32* %219)
  %221 = load i64, i64* @LDNS_STATUS_OK, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %215
  %224 = load i32*, i32** %20, align 8
  %225 = call i32 @ldns_pkt_free(i32* %224)
  %226 = load i32*, i32** %22, align 8
  %227 = call i32 @ldns_resolver_free(i32* %226)
  %228 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %228, i64* %6, align 8
  br label %274

229:                                              ; preds = %215
  %230 = load i32*, i32** %22, align 8
  %231 = call i32 @ldns_resolver_free(i32* %230)
  %232 = load i32*, i32** %20, align 8
  %233 = call i32 @ldns_pkt_free(i32* %232)
  %234 = load i32*, i32** %21, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %238, label %236

236:                                              ; preds = %229
  %237 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %237, i64* %6, align 8
  br label %274

238:                                              ; preds = %229
  br label %239

239:                                              ; preds = %253, %238
  %240 = load i32*, i32** %21, align 8
  %241 = call i32 @ldns_pkt_authority(i32* %240)
  %242 = call i32* @ldns_rr_list_pop_rr(i32 %241)
  store i32* %242, i32** %12, align 8
  %243 = icmp ne i32* %242, null
  br i1 %243, label %244, label %261

244:                                              ; preds = %239
  %245 = load i32*, i32** %12, align 8
  %246 = call i64 @ldns_rr_get_type(i32* %245)
  %247 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %253, label %249

249:                                              ; preds = %244
  %250 = load i32*, i32** %12, align 8
  %251 = call i32* @ldns_rr_rdf(i32* %250, i32 0)
  %252 = icmp eq i32* %251, null
  br i1 %252, label %253, label %254

253:                                              ; preds = %249, %244
  br label %239

254:                                              ; preds = %249
  %255 = load i32*, i32** %12, align 8
  %256 = call i32* @ldns_rr_rdf(i32* %255, i32 0)
  %257 = call i32* @ldns_rdf_clone(i32* %256)
  store i32* %257, i32** %15, align 8
  %258 = load i32*, i32** %12, align 8
  %259 = call i32* @ldns_rr_owner(i32* %258)
  %260 = call i32* @ldns_rdf_clone(i32* %259)
  store i32* %260, i32** %14, align 8
  br label %261

261:                                              ; preds = %254, %239
  %262 = load i32*, i32** %21, align 8
  %263 = call i32 @ldns_pkt_free(i32* %262)
  %264 = load i32*, i32** %12, align 8
  %265 = icmp ne i32* %264, null
  br i1 %265, label %268, label %266

266:                                              ; preds = %261
  %267 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %267, i64* %6, align 8
  br label %274

268:                                              ; preds = %261
  %269 = load i32*, i32** %14, align 8
  %270 = load i32**, i32*** %10, align 8
  store i32* %269, i32** %270, align 8
  %271 = load i32*, i32** %15, align 8
  %272 = load i32**, i32*** %11, align 8
  store i32* %271, i32** %272, align 8
  %273 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %273, i64* %6, align 8
  br label %274

274:                                              ; preds = %268, %266, %236, %223, %211, %127, %114, %108, %99, %89, %79, %52, %43, %33
  %275 = load i64, i64* %6, align 8
  ret i64 %275
}

declare dso_local i32* @ldns_dname_new_frm_str(i8*) #1

declare dso_local i32* @ldns_pkt_query_new(i32*, i64, i32, i32) #1

declare dso_local i32 @ldns_pkt_set_random_id(i32*) #1

declare dso_local i64 @ldns_resolver_send_pkt(i32**, i32*, i32*) #1

declare dso_local i32 @ldns_pkt_free(i32*) #1

declare dso_local i32* @ldns_rr_list_pop_rr(i32) #1

declare dso_local i32 @ldns_pkt_authority(i32*) #1

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i32* @ldns_rr_rdf(i32*, i32) #1

declare dso_local i32* @ldns_rdf_clone(i32*) #1

declare dso_local i64 @ldns_pkt_ancount(i32*) #1

declare dso_local i32 @ldns_pkt_answer(i32*) #1

declare dso_local i32* @ldns_resolver_clone(i32*) #1

declare dso_local i32** @ldns_resolver_nameservers(i32*) #1

declare dso_local i32 @ldns_resolver_nameserver_count(i32*) #1

declare dso_local i64 @ldns_rdf_compare(i32*, i32*) #1

declare dso_local i32 @ldns_resolver_push_nameserver(i32*, i32*) #1

declare dso_local i32 @ldns_resolver_set_random(i32*, i32) #1

declare dso_local i32 @ldns_resolver_free(i32*) #1

declare dso_local i32* @ldns_rr_owner(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
