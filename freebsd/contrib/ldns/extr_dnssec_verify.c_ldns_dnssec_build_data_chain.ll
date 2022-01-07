; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_build_data_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_build_data_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i8*, i32, %struct.TYPE_8__* }

@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@LDNS_SECTION_ANY_NOQUESTION = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DNSKEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @ldns_dnssec_build_data_chain(i32* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i64 0, i64* %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %22 = call %struct.TYPE_8__* (...) @ldns_dnssec_data_chain_new()
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %21, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @ldns_dnssec_pkt_has_rrsigs(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %5
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %6, align 8
  br label %267

32:                                               ; preds = %5
  %33 = load i32*, i32** %11, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %67

35:                                               ; preds = %32
  %36 = call i32 (...) @ldns_rr_list_new()
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @ldns_rr_list_push_rr(i32 %41, i32* %42)
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call %struct.TYPE_8__* @ldns_dnssec_build_data_chain(i32* %44, i32 %45, i32* %46, i32* %47, i32* null)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 4
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %50, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @ldns_pkt_get_rcode(i32* %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = call i8* @ldns_rr_get_type(i32* %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i64 @ldns_pkt_ancount(i32* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %35
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  br label %65

65:                                               ; preds = %62, %35
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %6, align 8
  br label %267

67:                                               ; preds = %32
  %68 = load i32*, i32** %9, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32*, i32** %9, align 8
  %72 = call i64 @ldns_rr_list_rr_count(i32* %71)
  %73 = icmp slt i64 %72, 1
  br i1 %73, label %74, label %120

74:                                               ; preds = %70, %67
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %117

79:                                               ; preds = %74
  %80 = load i32*, i32** %10, align 8
  %81 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %82 = load i32, i32* @LDNS_SECTION_ANY_NOQUESTION, align 4
  %83 = call i32* @ldns_pkt_rr_list_by_type(i32* %80, i64 %81, i32 %82)
  store i32* %83, i32** %14, align 8
  %84 = load i32*, i32** %14, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %79
  %87 = load i32*, i32** %14, align 8
  %88 = call i64 @ldns_rr_list_rr_count(i32* %87)
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  store i64 %91, i64* %18, align 8
  store i32 1, i32* %20, align 4
  br label %95

92:                                               ; preds = %86
  %93 = load i32*, i32** %14, align 8
  %94 = call i32 @ldns_rr_list_deep_free(i32* %93)
  store i32* null, i32** %14, align 8
  br label %95

95:                                               ; preds = %92, %90
  br label %116

96:                                               ; preds = %79
  %97 = load i32*, i32** %10, align 8
  %98 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %99 = load i32, i32* @LDNS_SECTION_ANY_NOQUESTION, align 4
  %100 = call i32* @ldns_pkt_rr_list_by_type(i32* %97, i64 %98, i32 %99)
  store i32* %100, i32** %14, align 8
  %101 = load i32*, i32** %14, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %113

103:                                              ; preds = %96
  %104 = load i32*, i32** %14, align 8
  %105 = call i64 @ldns_rr_list_rr_count(i32* %104)
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  store i64 %108, i64* %18, align 8
  store i32 1, i32* %20, align 4
  br label %112

109:                                              ; preds = %103
  %110 = load i32*, i32** %14, align 8
  %111 = call i32 @ldns_rr_list_deep_free(i32* %110)
  store i32* null, i32** %14, align 8
  br label %112

112:                                              ; preds = %109, %107
  br label %115

113:                                              ; preds = %96
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %114, %struct.TYPE_8__** %6, align 8
  br label %267

115:                                              ; preds = %112
  br label %116

116:                                              ; preds = %115, %95
  br label %119

117:                                              ; preds = %74
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %118, %struct.TYPE_8__** %6, align 8
  br label %267

119:                                              ; preds = %116
  br label %122

120:                                              ; preds = %70
  %121 = load i32*, i32** %9, align 8
  store i32* %121, i32** %14, align 8
  br label %122

122:                                              ; preds = %120, %119
  %123 = load i32*, i32** %14, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %144

125:                                              ; preds = %122
  %126 = load i32*, i32** %14, align 8
  %127 = call i64 @ldns_rr_list_rr_count(i32* %126)
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %125
  %130 = load i32*, i32** %14, align 8
  %131 = call i32 @ldns_rr_list_clone(i32* %130)
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load i32*, i32** %14, align 8
  %135 = call i32* @ldns_rr_list_rr(i32* %134, i32 0)
  %136 = call i32* @ldns_rr_owner(i32* %135)
  store i32* %136, i32** %16, align 8
  %137 = load i32*, i32** %14, align 8
  %138 = call i32* @ldns_rr_list_rr(i32* %137, i32 0)
  %139 = call i8* @ldns_rr_get_type(i32* %138)
  %140 = ptrtoint i8* %139 to i64
  store i64 %140, i64* %18, align 8
  %141 = load i32*, i32** %14, align 8
  %142 = call i32* @ldns_rr_list_rr(i32* %141, i32 0)
  %143 = call i32 @ldns_rr_get_class(i32* %142)
  store i32 %143, i32* %19, align 4
  br label %144

144:                                              ; preds = %129, %125, %122
  %145 = load i32, i32* %20, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32*, i32** %14, align 8
  %149 = call i32 @ldns_rr_list_deep_free(i32* %148)
  br label %150

150:                                              ; preds = %147, %144
  %151 = load i64, i64* %18, align 8
  %152 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = load i64, i64* %18, align 8
  %156 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %182

158:                                              ; preds = %154, %150
  %159 = load i32*, i32** %10, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load i32*, i32** %10, align 8
  %163 = load i64, i64* %18, align 8
  %164 = call i32* @ldns_dnssec_pkt_get_rrsigs_for_type(i32* %162, i64 %163)
  store i32* %164, i32** %12, align 8
  br label %181

165:                                              ; preds = %158
  %166 = load i32*, i32** %7, align 8
  %167 = load i32*, i32** %16, align 8
  %168 = load i64, i64* %18, align 8
  %169 = load i32, i32* %19, align 4
  %170 = load i32, i32* %8, align 4
  %171 = call i32* @ldns_resolver_query(i32* %166, i32* %167, i64 %168, i32 %169, i32 %170)
  store i32* %171, i32** %15, align 8
  %172 = load i32*, i32** %15, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %180

174:                                              ; preds = %165
  %175 = load i32*, i32** %10, align 8
  %176 = load i64, i64* %18, align 8
  %177 = call i32* @ldns_dnssec_pkt_get_rrsigs_for_type(i32* %175, i64 %176)
  store i32* %177, i32** %12, align 8
  %178 = load i32*, i32** %15, align 8
  %179 = call i32 @ldns_pkt_free(i32* %178)
  br label %180

180:                                              ; preds = %174, %165
  br label %181

181:                                              ; preds = %180, %161
  br label %211

182:                                              ; preds = %154
  %183 = load i32*, i32** %10, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = load i32*, i32** %10, align 8
  %187 = load i32*, i32** %16, align 8
  %188 = load i64, i64* %18, align 8
  %189 = call i32* @ldns_dnssec_pkt_get_rrsigs_for_name_and_type(i32* %186, i32* %187, i64 %188)
  store i32* %189, i32** %12, align 8
  br label %190

190:                                              ; preds = %185, %182
  %191 = load i32*, i32** %12, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %210, label %193

193:                                              ; preds = %190
  %194 = load i32*, i32** %7, align 8
  %195 = load i32*, i32** %16, align 8
  %196 = load i64, i64* %18, align 8
  %197 = load i32, i32* %19, align 4
  %198 = load i32, i32* %8, align 4
  %199 = call i32* @ldns_resolver_query(i32* %194, i32* %195, i64 %196, i32 %197, i32 %198)
  store i32* %199, i32** %15, align 8
  %200 = load i32*, i32** %15, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %202, label %209

202:                                              ; preds = %193
  %203 = load i32*, i32** %15, align 8
  %204 = load i32*, i32** %16, align 8
  %205 = load i64, i64* %18, align 8
  %206 = call i32* @ldns_dnssec_pkt_get_rrsigs_for_name_and_type(i32* %203, i32* %204, i64 %205)
  store i32* %206, i32** %12, align 8
  %207 = load i32*, i32** %15, align 8
  %208 = call i32 @ldns_pkt_free(i32* %207)
  br label %209

209:                                              ; preds = %202, %193
  br label %210

210:                                              ; preds = %209, %190
  br label %211

211:                                              ; preds = %210, %181
  %212 = load i32*, i32** %12, align 8
  %213 = icmp ne i32* %212, null
  br i1 %213, label %214, label %222

214:                                              ; preds = %211
  %215 = load i32*, i32** %12, align 8
  %216 = call i64 @ldns_rr_list_rr_count(i32* %215)
  %217 = icmp sgt i64 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %214
  %219 = load i32*, i32** %12, align 8
  %220 = call i32* @ldns_rr_list_rr(i32* %219, i32 0)
  %221 = call i32* @ldns_rr_rdf(i32* %220, i32 7)
  store i32* %221, i32** %17, align 8
  br label %222

222:                                              ; preds = %218, %214, %211
  %223 = load i32*, i32** %17, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %238, label %225

225:                                              ; preds = %222
  %226 = load i32*, i32** %12, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %231

228:                                              ; preds = %225
  %229 = load i32*, i32** %12, align 8
  %230 = call i32 @ldns_rr_list_deep_free(i32* %229)
  br label %231

231:                                              ; preds = %228, %225
  %232 = load i32*, i32** %7, align 8
  %233 = load i32, i32* %8, align 4
  %234 = load i32*, i32** %11, align 8
  %235 = load i32*, i32** %9, align 8
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %237 = call %struct.TYPE_8__* @ldns_dnssec_build_data_chain_nokeyname(i32* %232, i32 %233, i32* %234, i32* %235, %struct.TYPE_8__* %236)
  store %struct.TYPE_8__* %237, %struct.TYPE_8__** %6, align 8
  br label %267

238:                                              ; preds = %222
  %239 = load i64, i64* %18, align 8
  %240 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %241 = icmp ne i64 %239, %240
  br i1 %241, label %242, label %251

242:                                              ; preds = %238
  %243 = load i32*, i32** %7, align 8
  %244 = load i32, i32* %8, align 4
  %245 = load i32*, i32** %10, align 8
  %246 = load i32*, i32** %12, align 8
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %248 = load i32*, i32** %17, align 8
  %249 = load i32, i32* %19, align 4
  %250 = call i32 @ldns_dnssec_build_data_chain_dnskey(i32* %243, i32 %244, i32* %245, i32* %246, %struct.TYPE_8__* %247, i32* %248, i32 %249)
  br label %259

251:                                              ; preds = %238
  %252 = load i32*, i32** %7, align 8
  %253 = load i32, i32* %8, align 4
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %255 = load i32*, i32** %17, align 8
  %256 = load i32, i32* %19, align 4
  %257 = load i32*, i32** %13, align 8
  %258 = call i32 @ldns_dnssec_build_data_chain_other(i32* %252, i32 %253, %struct.TYPE_8__* %254, i32* %255, i32 %256, i32* %257)
  br label %259

259:                                              ; preds = %251, %242
  %260 = load i32*, i32** %12, align 8
  %261 = icmp ne i32* %260, null
  br i1 %261, label %262, label %265

262:                                              ; preds = %259
  %263 = load i32*, i32** %12, align 8
  %264 = call i32 @ldns_rr_list_deep_free(i32* %263)
  br label %265

265:                                              ; preds = %262, %259
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %266, %struct.TYPE_8__** %6, align 8
  br label %267

267:                                              ; preds = %265, %231, %117, %113, %65, %30
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  ret %struct.TYPE_8__* %268
}

declare dso_local %struct.TYPE_8__* @ldns_dnssec_data_chain_new(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ldns_dnssec_pkt_has_rrsigs(i32*) #1

declare dso_local i32 @ldns_rr_list_new(...) #1

declare dso_local i32 @ldns_rr_list_push_rr(i32, i32*) #1

declare dso_local i32 @ldns_pkt_get_rcode(i32*) #1

declare dso_local i8* @ldns_rr_get_type(i32*) #1

declare dso_local i64 @ldns_pkt_ancount(i32*) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32* @ldns_pkt_rr_list_by_type(i32*, i64, i32) #1

declare dso_local i32 @ldns_rr_list_deep_free(i32*) #1

declare dso_local i32 @ldns_rr_list_clone(i32*) #1

declare dso_local i32* @ldns_rr_owner(i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32*, i32) #1

declare dso_local i32 @ldns_rr_get_class(i32*) #1

declare dso_local i32* @ldns_dnssec_pkt_get_rrsigs_for_type(i32*, i64) #1

declare dso_local i32* @ldns_resolver_query(i32*, i32*, i64, i32, i32) #1

declare dso_local i32 @ldns_pkt_free(i32*) #1

declare dso_local i32* @ldns_dnssec_pkt_get_rrsigs_for_name_and_type(i32*, i32*, i64) #1

declare dso_local i32* @ldns_rr_rdf(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @ldns_dnssec_build_data_chain_nokeyname(i32*, i32, i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @ldns_dnssec_build_data_chain_dnskey(i32*, i32, i32*, i32*, %struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @ldns_dnssec_build_data_chain_other(i32*, i32, %struct.TYPE_8__*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
