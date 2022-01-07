; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_dns_cache_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_dns_cache_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_msg = type { %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i64, i32* }
%struct.module_env = type { i32, %struct.TYPE_12__*, i32, i32* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.regional = type { i32 }
%struct.lruhash_entry = type { i32, i64, i64 }
%struct.query_info = type { i64, i64, i32*, i32*, i64 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.msgreply_entry = type { %struct.query_info }
%struct.reply_info = type { i32, i64, %struct.TYPE_8__**, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.packed_rrset_data = type { i64 }

@LDNS_RR_TYPE_DNAME = common dso_local global i32 0, align 4
@sec_status_unchecked = common dso_local global i8* null, align 8
@sec_status_secure = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DNSKEY = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DLV = common dso_local global i64 0, align 8
@rrset_trust_add_noAA = common dso_local global i64 0, align 8
@rrset_trust_add_AA = common dso_local global i64 0, align 8
@rrset_trust_auth_noAA = common dso_local global i64 0, align 8
@rrset_trust_auth_AA = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@LDNS_RCODE_NXDOMAIN = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_ANY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dns_msg* @dns_cache_lookup(%struct.module_env* %0, i32* %1, i64 %2, i64 %3, i64 %4, i64 %5, %struct.regional* %6, %struct.regional* %7, i32 %8) #0 {
  %10 = alloca %struct.dns_msg*, align 8
  %11 = alloca %struct.module_env*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.regional*, align 8
  %18 = alloca %struct.regional*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.lruhash_entry*, align 8
  %21 = alloca %struct.query_info, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.ub_packed_rrset_key*, align 8
  %25 = alloca %struct.msgreply_entry*, align 8
  %26 = alloca %struct.reply_info*, align 8
  %27 = alloca %struct.dns_msg*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.dns_msg*, align 8
  %30 = alloca %struct.ub_packed_rrset_key*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i64, align 8
  %33 = alloca %struct.dns_msg*, align 8
  %34 = alloca %struct.packed_rrset_data*, align 8
  %35 = alloca %struct.dns_msg*, align 8
  %36 = alloca %struct.reply_info*, align 8
  %37 = alloca %struct.dns_msg*, align 8
  store %struct.module_env* %0, %struct.module_env** %11, align 8
  store i32* %1, i32** %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store %struct.regional* %6, %struct.regional** %17, align 8
  store %struct.regional* %7, %struct.regional** %18, align 8
  store i32 %8, i32* %19, align 4
  %38 = load %struct.module_env*, %struct.module_env** %11, align 8
  %39 = getelementptr inbounds %struct.module_env, %struct.module_env* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %23, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 2
  store i32* %42, i32** %43, align 8
  %44 = load i64, i64* %13, align 8
  %45 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 0
  store i64 %44, i64* %45, align 8
  %46 = load i64, i64* %14, align 8
  %47 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 1
  store i64 %46, i64* %47, align 8
  %48 = load i64, i64* %15, align 8
  %49 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 4
  store i64 %48, i64* %49, align 8
  %50 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 3
  store i32* null, i32** %50, align 8
  %51 = load i64, i64* %16, align 8
  %52 = call i32 @query_info_hash(%struct.query_info* %21, i64 %51)
  store i32 %52, i32* %22, align 4
  %53 = load %struct.module_env*, %struct.module_env** %11, align 8
  %54 = getelementptr inbounds %struct.module_env, %struct.module_env* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %22, align 4
  %57 = call %struct.lruhash_entry* @slabhash_lookup(i32 %55, i32 %56, %struct.query_info* %21, i32 0)
  store %struct.lruhash_entry* %57, %struct.lruhash_entry** %20, align 8
  %58 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %59 = icmp ne %struct.lruhash_entry* %58, null
  br i1 %59, label %60, label %88

60:                                               ; preds = %9
  %61 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %62 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.msgreply_entry*
  store %struct.msgreply_entry* %64, %struct.msgreply_entry** %25, align 8
  %65 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %66 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.reply_info*
  store %struct.reply_info* %68, %struct.reply_info** %26, align 8
  %69 = load %struct.module_env*, %struct.module_env** %11, align 8
  %70 = load %struct.msgreply_entry*, %struct.msgreply_entry** %25, align 8
  %71 = getelementptr inbounds %struct.msgreply_entry, %struct.msgreply_entry* %70, i32 0, i32 0
  %72 = load %struct.reply_info*, %struct.reply_info** %26, align 8
  %73 = load %struct.regional*, %struct.regional** %17, align 8
  %74 = load i32, i32* %23, align 4
  %75 = load %struct.regional*, %struct.regional** %18, align 8
  %76 = call %struct.dns_msg* @tomsg(%struct.module_env* %69, %struct.query_info* %71, %struct.reply_info* %72, %struct.regional* %73, i32 %74, %struct.regional* %75)
  store %struct.dns_msg* %76, %struct.dns_msg** %27, align 8
  %77 = load %struct.dns_msg*, %struct.dns_msg** %27, align 8
  %78 = icmp ne %struct.dns_msg* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %60
  %80 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %81 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %80, i32 0, i32 0
  %82 = call i32 @lock_rw_unlock(i32* %81)
  %83 = load %struct.dns_msg*, %struct.dns_msg** %27, align 8
  store %struct.dns_msg* %83, %struct.dns_msg** %10, align 8
  br label %398

84:                                               ; preds = %60
  %85 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %86 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %85, i32 0, i32 0
  %87 = call i32 @lock_rw_unlock(i32* %86)
  br label %88

88:                                               ; preds = %84, %9
  %89 = load i32, i32* %19, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %144, label %91

91:                                               ; preds = %88
  %92 = load %struct.module_env*, %struct.module_env** %11, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = load i64, i64* %13, align 8
  %95 = load i64, i64* %15, align 8
  %96 = load i32, i32* %23, align 4
  %97 = load i32, i32* @LDNS_RR_TYPE_DNAME, align 4
  %98 = call %struct.ub_packed_rrset_key* @find_closest_of_type(%struct.module_env* %92, i32* %93, i64 %94, i64 %95, i32 %96, i32 %97, i32 1)
  store %struct.ub_packed_rrset_key* %98, %struct.ub_packed_rrset_key** %24, align 8
  %99 = icmp ne %struct.ub_packed_rrset_key* %98, null
  br i1 %99, label %100, label %144

100:                                              ; preds = %91
  %101 = load i8*, i8** @sec_status_unchecked, align 8
  %102 = ptrtoint i8* %101 to i32
  store i32 %102, i32* %28, align 4
  %103 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %24, align 8
  %104 = load %struct.regional*, %struct.regional** %17, align 8
  %105 = load i32, i32* %23, align 4
  %106 = call %struct.dns_msg* @synth_dname_msg(%struct.ub_packed_rrset_key* %103, %struct.regional* %104, i32 %105, %struct.query_info* %21, i32* %28)
  store %struct.dns_msg* %106, %struct.dns_msg** %29, align 8
  %107 = load %struct.dns_msg*, %struct.dns_msg** %29, align 8
  %108 = icmp ne %struct.dns_msg* %107, null
  br i1 %108, label %109, label %138

109:                                              ; preds = %100
  %110 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %24, align 8
  %111 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = call i32 @lock_rw_unlock(i32* %112)
  %114 = load i32, i32* %28, align 4
  %115 = load i32, i32* @sec_status_secure, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = load %struct.dns_msg*, %struct.dns_msg** %29, align 8
  store %struct.dns_msg* %118, %struct.dns_msg** %10, align 8
  br label %398

119:                                              ; preds = %109
  %120 = load %struct.module_env*, %struct.module_env** %11, align 8
  %121 = getelementptr inbounds %struct.module_env, %struct.module_env* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32*, i32** %12, align 8
  %124 = load i64, i64* %13, align 8
  %125 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %126 = load i64, i64* %15, align 8
  %127 = load i32, i32* %23, align 4
  %128 = call %struct.ub_packed_rrset_key* @rrset_cache_lookup(i32 %122, i32* %123, i64 %124, i64 %125, i64 %126, i32 0, i32 %127, i32 0)
  store %struct.ub_packed_rrset_key* %128, %struct.ub_packed_rrset_key** %30, align 8
  %129 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %30, align 8
  %130 = icmp ne %struct.ub_packed_rrset_key* %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %119
  %132 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %30, align 8
  %133 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = call i32 @lock_rw_unlock(i32* %134)
  %136 = load %struct.dns_msg*, %struct.dns_msg** %29, align 8
  store %struct.dns_msg* %136, %struct.dns_msg** %10, align 8
  br label %398

137:                                              ; preds = %119
  br label %143

138:                                              ; preds = %100
  %139 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %24, align 8
  %140 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = call i32 @lock_rw_unlock(i32* %141)
  br label %143

143:                                              ; preds = %138, %137
  br label %144

144:                                              ; preds = %143, %91, %88
  %145 = load i32, i32* %19, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %188, label %147

147:                                              ; preds = %144
  %148 = load i64, i64* %14, align 8
  %149 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %188

151:                                              ; preds = %147
  %152 = load %struct.module_env*, %struct.module_env** %11, align 8
  %153 = getelementptr inbounds %struct.module_env, %struct.module_env* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32*, i32** %12, align 8
  %156 = load i64, i64* %13, align 8
  %157 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %158 = load i64, i64* %15, align 8
  %159 = load i32, i32* %23, align 4
  %160 = call %struct.ub_packed_rrset_key* @rrset_cache_lookup(i32 %154, i32* %155, i64 %156, i64 %157, i64 %158, i32 0, i32 %159, i32 0)
  store %struct.ub_packed_rrset_key* %160, %struct.ub_packed_rrset_key** %24, align 8
  %161 = icmp ne %struct.ub_packed_rrset_key* %160, null
  br i1 %161, label %162, label %188

162:                                              ; preds = %151
  store i32* null, i32** %31, align 8
  %163 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %24, align 8
  %164 = call i64 @val_rrset_wildcard(%struct.ub_packed_rrset_key* %163, i32** %31, i64* %32)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load i32*, i32** %31, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %183, label %169

169:                                              ; preds = %166, %162
  %170 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %24, align 8
  %171 = load %struct.regional*, %struct.regional** %17, align 8
  %172 = load i32, i32* %23, align 4
  %173 = call %struct.dns_msg* @rrset_msg(%struct.ub_packed_rrset_key* %170, %struct.regional* %171, i32 %172, %struct.query_info* %21)
  store %struct.dns_msg* %173, %struct.dns_msg** %33, align 8
  %174 = load %struct.dns_msg*, %struct.dns_msg** %33, align 8
  %175 = icmp ne %struct.dns_msg* %174, null
  br i1 %175, label %176, label %182

176:                                              ; preds = %169
  %177 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %24, align 8
  %178 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = call i32 @lock_rw_unlock(i32* %179)
  %181 = load %struct.dns_msg*, %struct.dns_msg** %33, align 8
  store %struct.dns_msg* %181, %struct.dns_msg** %10, align 8
  br label %398

182:                                              ; preds = %169
  br label %183

183:                                              ; preds = %182, %166
  %184 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %24, align 8
  %185 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = call i32 @lock_rw_unlock(i32* %186)
  br label %188

188:                                              ; preds = %183, %151, %147, %144
  %189 = load i64, i64* %14, align 8
  %190 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %200, label %192

192:                                              ; preds = %188
  %193 = load i64, i64* %14, align 8
  %194 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %200, label %196

196:                                              ; preds = %192
  %197 = load i64, i64* %14, align 8
  %198 = load i64, i64* @LDNS_RR_TYPE_DLV, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %263

200:                                              ; preds = %196, %192, %188
  %201 = load %struct.module_env*, %struct.module_env** %11, align 8
  %202 = getelementptr inbounds %struct.module_env, %struct.module_env* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i32*, i32** %12, align 8
  %205 = load i64, i64* %13, align 8
  %206 = load i64, i64* %14, align 8
  %207 = load i64, i64* %15, align 8
  %208 = load i32, i32* %23, align 4
  %209 = call %struct.ub_packed_rrset_key* @rrset_cache_lookup(i32 %203, i32* %204, i64 %205, i64 %206, i64 %207, i32 0, i32 %208, i32 0)
  store %struct.ub_packed_rrset_key* %209, %struct.ub_packed_rrset_key** %24, align 8
  %210 = icmp ne %struct.ub_packed_rrset_key* %209, null
  br i1 %210, label %211, label %263

211:                                              ; preds = %200
  %212 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %24, align 8
  %213 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = inttoptr i64 %215 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %216, %struct.packed_rrset_data** %34, align 8
  %217 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %34, align 8
  %218 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @rrset_trust_add_noAA, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %258

222:                                              ; preds = %211
  %223 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %34, align 8
  %224 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @rrset_trust_add_AA, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %228, label %258

228:                                              ; preds = %222
  %229 = load i64, i64* %14, align 8
  %230 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %244, label %232

232:                                              ; preds = %228
  %233 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %34, align 8
  %234 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @rrset_trust_auth_noAA, align 8
  %237 = icmp ne i64 %235, %236
  br i1 %237, label %238, label %258

238:                                              ; preds = %232
  %239 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %34, align 8
  %240 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @rrset_trust_auth_AA, align 8
  %243 = icmp ne i64 %241, %242
  br i1 %243, label %244, label %258

244:                                              ; preds = %238, %228
  %245 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %24, align 8
  %246 = load %struct.regional*, %struct.regional** %17, align 8
  %247 = load i32, i32* %23, align 4
  %248 = call %struct.dns_msg* @rrset_msg(%struct.ub_packed_rrset_key* %245, %struct.regional* %246, i32 %247, %struct.query_info* %21)
  store %struct.dns_msg* %248, %struct.dns_msg** %35, align 8
  %249 = load %struct.dns_msg*, %struct.dns_msg** %35, align 8
  %250 = icmp ne %struct.dns_msg* %249, null
  br i1 %250, label %251, label %257

251:                                              ; preds = %244
  %252 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %24, align 8
  %253 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 0
  %255 = call i32 @lock_rw_unlock(i32* %254)
  %256 = load %struct.dns_msg*, %struct.dns_msg** %35, align 8
  store %struct.dns_msg* %256, %struct.dns_msg** %10, align 8
  br label %398

257:                                              ; preds = %244
  br label %258

258:                                              ; preds = %257, %238, %232, %222, %211
  %259 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %24, align 8
  %260 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 0
  %262 = call i32 @lock_rw_unlock(i32* %261)
  br label %263

263:                                              ; preds = %258, %200, %196
  %264 = load %struct.module_env*, %struct.module_env** %11, align 8
  %265 = getelementptr inbounds %struct.module_env, %struct.module_env* %264, i32 0, i32 1
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %385

270:                                              ; preds = %263
  br label %271

271:                                              ; preds = %381, %270
  %272 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 2
  %273 = load i32*, i32** %272, align 8
  %274 = call i32 @dname_is_root(i32* %273)
  %275 = icmp ne i32 %274, 0
  %276 = xor i1 %275, true
  br i1 %276, label %277, label %384

277:                                              ; preds = %271
  %278 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 2
  %279 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 0
  %280 = call i32 @dname_remove_label(i32** %278, i64* %279)
  %281 = load i64, i64* %16, align 8
  %282 = call i32 @query_info_hash(%struct.query_info* %21, i64 %281)
  store i32 %282, i32* %22, align 4
  %283 = load %struct.module_env*, %struct.module_env** %11, align 8
  %284 = getelementptr inbounds %struct.module_env, %struct.module_env* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* %22, align 4
  %287 = call %struct.lruhash_entry* @slabhash_lookup(i32 %285, i32 %286, %struct.query_info* %21, i32 0)
  store %struct.lruhash_entry* %287, %struct.lruhash_entry** %20, align 8
  %288 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %289 = icmp ne %struct.lruhash_entry* %288, null
  br i1 %289, label %312, label %290

290:                                              ; preds = %277
  %291 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %294 = icmp ne i64 %292, %293
  br i1 %294, label %295, label %312

295:                                              ; preds = %290
  %296 = load %struct.module_env*, %struct.module_env** %11, align 8
  %297 = getelementptr inbounds %struct.module_env, %struct.module_env* %296, i32 0, i32 1
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %312

302:                                              ; preds = %295
  %303 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %304 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 1
  store i64 %303, i64* %304, align 8
  %305 = load i64, i64* %16, align 8
  %306 = call i32 @query_info_hash(%struct.query_info* %21, i64 %305)
  store i32 %306, i32* %22, align 4
  %307 = load %struct.module_env*, %struct.module_env** %11, align 8
  %308 = getelementptr inbounds %struct.module_env, %struct.module_env* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* %22, align 4
  %311 = call %struct.lruhash_entry* @slabhash_lookup(i32 %309, i32 %310, %struct.query_info* %21, i32 0)
  store %struct.lruhash_entry* %311, %struct.lruhash_entry** %20, align 8
  br label %312

312:                                              ; preds = %302, %295, %290, %277
  %313 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %314 = icmp ne %struct.lruhash_entry* %313, null
  br i1 %314, label %315, label %381

315:                                              ; preds = %312
  %316 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %317 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = inttoptr i64 %318 to %struct.reply_info*
  store %struct.reply_info* %319, %struct.reply_info** %36, align 8
  %320 = load %struct.reply_info*, %struct.reply_info** %36, align 8
  %321 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 8
  %323 = call i64 @FLAGS_GET_RCODE(i32 %322)
  %324 = load i64, i64* @LDNS_RCODE_NXDOMAIN, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %377

326:                                              ; preds = %315
  %327 = load %struct.reply_info*, %struct.reply_info** %36, align 8
  %328 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @sec_status_secure, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %332, label %377

332:                                              ; preds = %326
  %333 = load %struct.reply_info*, %struct.reply_info** %36, align 8
  %334 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %349, label %337

337:                                              ; preds = %332
  %338 = load %struct.reply_info*, %struct.reply_info** %36, align 8
  %339 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %338, i32 0, i32 2
  %340 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %340, i64 0
  %342 = load %struct.TYPE_8__*, %struct.TYPE_8__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = call i64 @ntohs(i32 %345)
  %347 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %348 = icmp ne i64 %346, %347
  br i1 %348, label %349, label %377

349:                                              ; preds = %337, %332
  %350 = load %struct.module_env*, %struct.module_env** %11, align 8
  %351 = load %struct.reply_info*, %struct.reply_info** %36, align 8
  %352 = load %struct.regional*, %struct.regional** %17, align 8
  %353 = load i32, i32* %23, align 4
  %354 = load %struct.regional*, %struct.regional** %18, align 8
  %355 = call %struct.dns_msg* @tomsg(%struct.module_env* %350, %struct.query_info* %21, %struct.reply_info* %351, %struct.regional* %352, i32 %353, %struct.regional* %354)
  store %struct.dns_msg* %355, %struct.dns_msg** %37, align 8
  %356 = icmp ne %struct.dns_msg* %355, null
  br i1 %356, label %357, label %377

357:                                              ; preds = %349
  %358 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %359 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %358, i32 0, i32 0
  %360 = call i32 @lock_rw_unlock(i32* %359)
  %361 = load i32*, i32** %12, align 8
  %362 = load %struct.dns_msg*, %struct.dns_msg** %37, align 8
  %363 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i32 0, i32 1
  store i32* %361, i32** %364, align 8
  %365 = load i64, i64* %13, align 8
  %366 = load %struct.dns_msg*, %struct.dns_msg** %37, align 8
  %367 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %367, i32 0, i32 0
  store i64 %365, i64* %368, align 8
  %369 = load i8*, i8** @sec_status_unchecked, align 8
  %370 = load %struct.dns_msg*, %struct.dns_msg** %37, align 8
  %371 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %370, i32 0, i32 0
  %372 = load %struct.TYPE_10__*, %struct.TYPE_10__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %372, i32 0, i32 0
  store i8* %369, i8** %373, align 8
  %374 = load %struct.dns_msg*, %struct.dns_msg** %37, align 8
  %375 = call i32 @iter_scrub_nxdomain(%struct.dns_msg* %374)
  %376 = load %struct.dns_msg*, %struct.dns_msg** %37, align 8
  store %struct.dns_msg* %376, %struct.dns_msg** %10, align 8
  br label %398

377:                                              ; preds = %349, %337, %326, %315
  %378 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %379 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %378, i32 0, i32 0
  %380 = call i32 @lock_rw_unlock(i32* %379)
  br label %381

381:                                              ; preds = %377, %312
  %382 = load i64, i64* %14, align 8
  %383 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 1
  store i64 %382, i64* %383, align 8
  br label %271

384:                                              ; preds = %271
  br label %385

385:                                              ; preds = %384, %263
  %386 = load i64, i64* %14, align 8
  %387 = load i64, i64* @LDNS_RR_TYPE_ANY, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %389, label %397

389:                                              ; preds = %385
  %390 = load %struct.module_env*, %struct.module_env** %11, align 8
  %391 = load i32*, i32** %12, align 8
  %392 = load i64, i64* %13, align 8
  %393 = load i64, i64* %14, align 8
  %394 = load i64, i64* %15, align 8
  %395 = load %struct.regional*, %struct.regional** %17, align 8
  %396 = call %struct.dns_msg* @fill_any(%struct.module_env* %390, i32* %391, i64 %392, i64 %393, i64 %394, %struct.regional* %395)
  store %struct.dns_msg* %396, %struct.dns_msg** %10, align 8
  br label %398

397:                                              ; preds = %385
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  br label %398

398:                                              ; preds = %397, %389, %357, %251, %176, %131, %117, %79
  %399 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  ret %struct.dns_msg* %399
}

declare dso_local i32 @query_info_hash(%struct.query_info*, i64) #1

declare dso_local %struct.lruhash_entry* @slabhash_lookup(i32, i32, %struct.query_info*, i32) #1

declare dso_local %struct.dns_msg* @tomsg(%struct.module_env*, %struct.query_info*, %struct.reply_info*, %struct.regional*, i32, %struct.regional*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local %struct.ub_packed_rrset_key* @find_closest_of_type(%struct.module_env*, i32*, i64, i64, i32, i32, i32) #1

declare dso_local %struct.dns_msg* @synth_dname_msg(%struct.ub_packed_rrset_key*, %struct.regional*, i32, %struct.query_info*, i32*) #1

declare dso_local %struct.ub_packed_rrset_key* @rrset_cache_lookup(i32, i32*, i64, i64, i64, i32, i32, i32) #1

declare dso_local i64 @val_rrset_wildcard(%struct.ub_packed_rrset_key*, i32**, i64*) #1

declare dso_local %struct.dns_msg* @rrset_msg(%struct.ub_packed_rrset_key*, %struct.regional*, i32, %struct.query_info*) #1

declare dso_local i32 @dname_is_root(i32*) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

declare dso_local i64 @FLAGS_GET_RCODE(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @iter_scrub_nxdomain(%struct.dns_msg*) #1

declare dso_local %struct.dns_msg* @fill_any(%struct.module_env*, i32*, i64, i64, i64, %struct.regional*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
