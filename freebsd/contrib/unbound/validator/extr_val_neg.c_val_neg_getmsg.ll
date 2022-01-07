; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_val_neg_getmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_val_neg_getmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_msg = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.val_neg_cache = type { i32, i32, i32 }
%struct.query_info = type { i64, i32*, i64, i32 }
%struct.regional = type { i32 }
%struct.rrset_cache = type { i32 }
%struct.config_file = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32*, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.packed_rrset_data = type { i64, i64 }
%struct.val_neg_zone = type { i32*, %struct.val_neg_zone*, i32 }

@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@LDNS_RCODE_NOERROR = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@sec_status_secure = common dso_local global i64 0, align 8
@sec_status_unchecked = common dso_local global i64 0, align 8
@LDNS_RCODE_NXDOMAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dns_msg* @val_neg_getmsg(%struct.val_neg_cache* %0, %struct.query_info* %1, %struct.regional* %2, %struct.rrset_cache* %3, i32* %4, i32 %5, i32 %6, i32* %7, %struct.config_file* %8) #0 {
  %10 = alloca %struct.dns_msg*, align 8
  %11 = alloca %struct.val_neg_cache*, align 8
  %12 = alloca %struct.query_info*, align 8
  %13 = alloca %struct.regional*, align 8
  %14 = alloca %struct.rrset_cache*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.config_file*, align 8
  %20 = alloca %struct.dns_msg*, align 8
  %21 = alloca %struct.ub_packed_rrset_key*, align 8
  %22 = alloca %struct.ub_packed_rrset_key*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.query_info, align 8
  %29 = alloca %struct.ub_packed_rrset_key*, align 8
  %30 = alloca %struct.packed_rrset_data*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca %struct.val_neg_zone*, align 8
  %36 = alloca i32, align 4
  store %struct.val_neg_cache* %0, %struct.val_neg_cache** %11, align 8
  store %struct.query_info* %1, %struct.query_info** %12, align 8
  store %struct.regional* %2, %struct.regional** %13, align 8
  store %struct.rrset_cache* %3, %struct.rrset_cache** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store %struct.config_file* %8, %struct.config_file** %19, align 8
  store i32* null, i32** %23, align 8
  store i32* null, i32** %24, align 8
  %37 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %38 = add nsw i32 %37, 3
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %26, align 8
  %41 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %27, align 8
  %42 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  store i32 %42, i32* %31, align 4
  %43 = load %struct.query_info*, %struct.query_info** %12, align 8
  %44 = getelementptr inbounds %struct.query_info, %struct.query_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %9
  %49 = load %struct.config_file*, %struct.config_file** %19, align 8
  %50 = getelementptr inbounds %struct.config_file, %struct.config_file* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %36, align 4
  br label %481

54:                                               ; preds = %48, %9
  %55 = load i32*, i32** %18, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load %struct.query_info*, %struct.query_info** %12, align 8
  %59 = getelementptr inbounds %struct.query_info, %struct.query_info* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32*, i32** %18, align 8
  %62 = call i64 @dname_subdomain_c(i32* %60, i32* %61)
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %57, %54
  %65 = phi i1 [ true, %54 ], [ %63, %57 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @log_assert(i32 %66)
  %68 = load %struct.val_neg_cache*, %struct.val_neg_cache** %11, align 8
  %69 = load %struct.query_info*, %struct.query_info** %12, align 8
  %70 = getelementptr inbounds %struct.query_info, %struct.query_info* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.query_info*, %struct.query_info** %12, align 8
  %73 = getelementptr inbounds %struct.query_info, %struct.query_info* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.query_info*, %struct.query_info** %12, align 8
  %76 = getelementptr inbounds %struct.query_info, %struct.query_info* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.rrset_cache*, %struct.rrset_cache** %14, align 8
  %79 = load i32, i32* %16, align 4
  %80 = load %struct.regional*, %struct.regional** %13, align 8
  %81 = call %struct.ub_packed_rrset_key* @neg_find_nsec(%struct.val_neg_cache* %68, i32* %71, i64 %74, i32 %77, %struct.rrset_cache* %78, i32 %79, %struct.regional* %80)
  store %struct.ub_packed_rrset_key* %81, %struct.ub_packed_rrset_key** %21, align 8
  %82 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %21, align 8
  %83 = icmp ne %struct.ub_packed_rrset_key* %82, null
  br i1 %83, label %84, label %139

84:                                               ; preds = %64
  %85 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %21, align 8
  %86 = load %struct.query_info*, %struct.query_info** %12, align 8
  %87 = call i64 @nsec_proves_nodata(%struct.ub_packed_rrset_key* %85, %struct.query_info* %86, i32** %23)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %139

89:                                               ; preds = %84
  %90 = load i32*, i32** %23, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %139, label %92

92:                                               ; preds = %89
  %93 = load %struct.query_info*, %struct.query_info** %12, align 8
  %94 = getelementptr inbounds %struct.query_info, %struct.query_info* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.query_info*, %struct.query_info** %12, align 8
  %97 = getelementptr inbounds %struct.query_info, %struct.query_info* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.query_info*, %struct.query_info** %12, align 8
  %100 = getelementptr inbounds %struct.query_info, %struct.query_info* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.query_info*, %struct.query_info** %12, align 8
  %103 = getelementptr inbounds %struct.query_info, %struct.query_info* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.regional*, %struct.regional** %13, align 8
  %106 = call %struct.dns_msg* @dns_msg_create(i32* %95, i64 %98, i64 %101, i32 %104, %struct.regional* %105, i32 2)
  store %struct.dns_msg* %106, %struct.dns_msg** %20, align 8
  %107 = icmp ne %struct.dns_msg* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %92
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %36, align 4
  br label %481

109:                                              ; preds = %92
  %110 = load %struct.dns_msg*, %struct.dns_msg** %20, align 8
  %111 = load %struct.regional*, %struct.regional** %13, align 8
  %112 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %21, align 8
  %113 = call i32 @dns_msg_authadd(%struct.dns_msg* %110, %struct.regional* %111, %struct.ub_packed_rrset_key* %112, i32 0)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %36, align 4
  br label %481

116:                                              ; preds = %109
  %117 = load i32, i32* %17, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = load %struct.rrset_cache*, %struct.rrset_cache** %14, align 8
  %121 = load i32, i32* %16, align 4
  %122 = load %struct.regional*, %struct.regional** %13, align 8
  %123 = load %struct.dns_msg*, %struct.dns_msg** %20, align 8
  %124 = call i32 @add_soa(%struct.rrset_cache* %120, i32 %121, %struct.regional* %122, %struct.dns_msg* %123, %struct.val_neg_zone* null)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %119
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %36, align 4
  br label %481

127:                                              ; preds = %119, %116
  %128 = load %struct.val_neg_cache*, %struct.val_neg_cache** %11, align 8
  %129 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %128, i32 0, i32 0
  %130 = call i32 @lock_basic_lock(i32* %129)
  %131 = load %struct.val_neg_cache*, %struct.val_neg_cache** %11, align 8
  %132 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load %struct.val_neg_cache*, %struct.val_neg_cache** %11, align 8
  %136 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %135, i32 0, i32 0
  %137 = call i32 @lock_basic_unlock(i32* %136)
  %138 = load %struct.dns_msg*, %struct.dns_msg** %20, align 8
  store %struct.dns_msg* %138, %struct.dns_msg** %10, align 8
  store i32 1, i32* %36, align 4
  br label %481

139:                                              ; preds = %89, %84, %64
  %140 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %21, align 8
  %141 = icmp ne %struct.ub_packed_rrset_key* %140, null
  br i1 %141, label %142, label %377

142:                                              ; preds = %139
  %143 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %21, align 8
  %144 = load %struct.query_info*, %struct.query_info** %12, align 8
  %145 = getelementptr inbounds %struct.query_info, %struct.query_info* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = call i64 @val_nsec_proves_name_error(%struct.ub_packed_rrset_key* %143, i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %377

149:                                              ; preds = %142
  %150 = load %struct.query_info*, %struct.query_info** %12, align 8
  %151 = getelementptr inbounds %struct.query_info, %struct.query_info* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.query_info*, %struct.query_info** %12, align 8
  %154 = getelementptr inbounds %struct.query_info, %struct.query_info* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.query_info*, %struct.query_info** %12, align 8
  %157 = getelementptr inbounds %struct.query_info, %struct.query_info* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.query_info*, %struct.query_info** %12, align 8
  %160 = getelementptr inbounds %struct.query_info, %struct.query_info* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.regional*, %struct.regional** %13, align 8
  %163 = call %struct.dns_msg* @dns_msg_create(i32* %152, i64 %155, i64 %158, i32 %161, %struct.regional* %162, i32 3)
  store %struct.dns_msg* %163, %struct.dns_msg** %20, align 8
  %164 = icmp ne %struct.dns_msg* %163, null
  br i1 %164, label %166, label %165

165:                                              ; preds = %149
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %36, align 4
  br label %481

166:                                              ; preds = %149
  %167 = load %struct.query_info*, %struct.query_info** %12, align 8
  %168 = getelementptr inbounds %struct.query_info, %struct.query_info* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %21, align 8
  %171 = call i32* @nsec_closest_encloser(i32* %169, %struct.ub_packed_rrset_key* %170)
  store i32* %171, i32** %24, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %174, label %173

173:                                              ; preds = %166
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %36, align 4
  br label %481

174:                                              ; preds = %166
  %175 = load i32*, i32** %24, align 8
  %176 = call i32 @dname_count_size_labels(i32* %175, i64* %25)
  %177 = load i32*, i32** %23, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %184

179:                                              ; preds = %174
  %180 = load i32*, i32** %23, align 8
  %181 = load i32*, i32** %24, align 8
  %182 = call i64 @query_dname_compare(i32* %180, i32* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %325

184:                                              ; preds = %179, %174
  %185 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 1, i32* %185, align 16
  %186 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 42, i32* %186, align 4
  %187 = getelementptr inbounds i32, i32* %41, i64 2
  %188 = load i32*, i32** %24, align 8
  %189 = load i64, i64* %25, align 8
  %190 = call i32 @memmove(i32* %187, i32* %188, i64 %189)
  %191 = getelementptr inbounds %struct.query_info, %struct.query_info* %28, i32 0, i32 1
  store i32* %41, i32** %191, align 8
  %192 = load i64, i64* %25, align 8
  %193 = add i64 %192, 2
  %194 = getelementptr inbounds %struct.query_info, %struct.query_info* %28, i32 0, i32 2
  store i64 %193, i64* %194, align 8
  %195 = load %struct.query_info*, %struct.query_info** %12, align 8
  %196 = getelementptr inbounds %struct.query_info, %struct.query_info* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds %struct.query_info, %struct.query_info* %28, i32 0, i32 0
  store i64 %197, i64* %198, align 8
  %199 = load %struct.rrset_cache*, %struct.rrset_cache** %14, align 8
  %200 = getelementptr inbounds %struct.query_info, %struct.query_info* %28, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds %struct.query_info, %struct.query_info* %28, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds %struct.query_info, %struct.query_info* %28, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.query_info*, %struct.query_info** %12, align 8
  %207 = getelementptr inbounds %struct.query_info, %struct.query_info* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %16, align 4
  %210 = call %struct.ub_packed_rrset_key* @rrset_cache_lookup(%struct.rrset_cache* %199, i32* %201, i64 %203, i64 %205, i32 %208, i32 0, i32 %209, i32 0)
  store %struct.ub_packed_rrset_key* %210, %struct.ub_packed_rrset_key** %29, align 8
  %211 = icmp ne %struct.ub_packed_rrset_key* %210, null
  br i1 %211, label %212, label %274

212:                                              ; preds = %184
  %213 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %29, align 8
  %214 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = inttoptr i64 %216 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %217, %struct.packed_rrset_data** %30, align 8
  %218 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %30, align 8
  %219 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @sec_status_secure, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %239, label %223

223:                                              ; preds = %212
  %224 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %30, align 8
  %225 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @sec_status_unchecked, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %234

229:                                              ; preds = %223
  %230 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %30, align 8
  %231 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = icmp sgt i64 %232, 0
  br i1 %233, label %239, label %234

234:                                              ; preds = %229, %223
  %235 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %29, align 8
  %236 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = call i32 @lock_rw_unlock(i32* %237)
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %36, align 4
  br label %481

239:                                              ; preds = %229, %212
  %240 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %29, align 8
  %241 = load %struct.regional*, %struct.regional** %13, align 8
  %242 = load i32, i32* %16, align 4
  %243 = call %struct.ub_packed_rrset_key* @packed_rrset_copy_region(%struct.ub_packed_rrset_key* %240, %struct.regional* %241, i32 %242)
  store %struct.ub_packed_rrset_key* %243, %struct.ub_packed_rrset_key** %22, align 8
  %244 = icmp ne %struct.ub_packed_rrset_key* %243, null
  br i1 %244, label %250, label %245

245:                                              ; preds = %239
  %246 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %29, align 8
  %247 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 0
  %249 = call i32 @lock_rw_unlock(i32* %248)
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %36, align 4
  br label %481

250:                                              ; preds = %239
  %251 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %29, align 8
  %252 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  %254 = call i32 @lock_rw_unlock(i32* %253)
  %255 = load %struct.query_info*, %struct.query_info** %12, align 8
  %256 = getelementptr inbounds %struct.query_info, %struct.query_info* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %22, align 8
  %259 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 0
  store i32* %257, i32** %260, align 8
  %261 = load %struct.query_info*, %struct.query_info** %12, align 8
  %262 = getelementptr inbounds %struct.query_info, %struct.query_info* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %22, align 8
  %265 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 1
  store i64 %263, i64* %266, align 8
  %267 = load %struct.dns_msg*, %struct.dns_msg** %20, align 8
  %268 = load %struct.regional*, %struct.regional** %13, align 8
  %269 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %22, align 8
  %270 = call i32 @dns_msg_ansadd(%struct.dns_msg* %267, %struct.regional* %268, %struct.ub_packed_rrset_key* %269, i32 0)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %250
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %36, align 4
  br label %481

273:                                              ; preds = %250
  store i32 0, i32* %17, align 4
  br label %324

274:                                              ; preds = %184
  %275 = load %struct.val_neg_cache*, %struct.val_neg_cache** %11, align 8
  %276 = getelementptr inbounds %struct.query_info, %struct.query_info* %28, i32 0, i32 1
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds %struct.query_info, %struct.query_info* %28, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = load %struct.query_info*, %struct.query_info** %12, align 8
  %281 = getelementptr inbounds %struct.query_info, %struct.query_info* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.rrset_cache*, %struct.rrset_cache** %14, align 8
  %284 = load i32, i32* %16, align 4
  %285 = load %struct.regional*, %struct.regional** %13, align 8
  %286 = call %struct.ub_packed_rrset_key* @neg_find_nsec(%struct.val_neg_cache* %275, i32* %277, i64 %279, i32 %282, %struct.rrset_cache* %283, i32 %284, %struct.regional* %285)
  store %struct.ub_packed_rrset_key* %286, %struct.ub_packed_rrset_key** %22, align 8
  %287 = icmp ne %struct.ub_packed_rrset_key* %286, null
  br i1 %287, label %289, label %288

288:                                              ; preds = %274
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %36, align 4
  br label %481

289:                                              ; preds = %274
  store i32* null, i32** %23, align 8
  %290 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %22, align 8
  %291 = call i64 @val_nsec_proves_name_error(%struct.ub_packed_rrset_key* %290, i32* %41)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %289
  %294 = load i32, i32* @LDNS_RCODE_NXDOMAIN, align 4
  store i32 %294, i32* %31, align 4
  br label %304

295:                                              ; preds = %289
  %296 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %22, align 8
  %297 = call i64 @nsec_proves_nodata(%struct.ub_packed_rrset_key* %296, %struct.query_info* %28, i32** %23)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %295
  %300 = load i32*, i32** %23, align 8
  %301 = icmp ne i32* %300, null
  br i1 %301, label %302, label %303

302:                                              ; preds = %299, %295
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %36, align 4
  br label %481

303:                                              ; preds = %299
  br label %304

304:                                              ; preds = %303, %293
  %305 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %22, align 8
  %306 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %21, align 8
  %310 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 0
  %312 = load i32*, i32** %311, align 8
  %313 = call i64 @query_dname_compare(i32* %308, i32* %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %323

315:                                              ; preds = %304
  %316 = load %struct.dns_msg*, %struct.dns_msg** %20, align 8
  %317 = load %struct.regional*, %struct.regional** %13, align 8
  %318 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %22, align 8
  %319 = call i32 @dns_msg_authadd(%struct.dns_msg* %316, %struct.regional* %317, %struct.ub_packed_rrset_key* %318, i32 0)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %322, label %321

321:                                              ; preds = %315
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %36, align 4
  br label %481

322:                                              ; preds = %315
  br label %323

323:                                              ; preds = %322, %304
  br label %324

324:                                              ; preds = %323, %273
  br label %325

325:                                              ; preds = %324, %179
  %326 = load %struct.dns_msg*, %struct.dns_msg** %20, align 8
  %327 = load %struct.regional*, %struct.regional** %13, align 8
  %328 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %21, align 8
  %329 = call i32 @dns_msg_authadd(%struct.dns_msg* %326, %struct.regional* %327, %struct.ub_packed_rrset_key* %328, i32 0)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %332, label %331

331:                                              ; preds = %325
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %36, align 4
  br label %481

332:                                              ; preds = %325
  %333 = load i32, i32* %17, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %343

335:                                              ; preds = %332
  %336 = load %struct.rrset_cache*, %struct.rrset_cache** %14, align 8
  %337 = load i32, i32* %16, align 4
  %338 = load %struct.regional*, %struct.regional** %13, align 8
  %339 = load %struct.dns_msg*, %struct.dns_msg** %20, align 8
  %340 = call i32 @add_soa(%struct.rrset_cache* %336, i32 %337, %struct.regional* %338, %struct.dns_msg* %339, %struct.val_neg_zone* null)
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %343, label %342

342:                                              ; preds = %335
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %36, align 4
  br label %481

343:                                              ; preds = %335, %332
  %344 = load %struct.val_neg_cache*, %struct.val_neg_cache** %11, align 8
  %345 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %344, i32 0, i32 0
  %346 = call i32 @lock_basic_lock(i32* %345)
  %347 = load i32, i32* %31, align 4
  %348 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %355

350:                                              ; preds = %343
  %351 = load %struct.val_neg_cache*, %struct.val_neg_cache** %11, align 8
  %352 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %352, align 4
  br label %365

355:                                              ; preds = %343
  %356 = load i32, i32* %31, align 4
  %357 = load i32, i32* @LDNS_RCODE_NXDOMAIN, align 4
  %358 = icmp eq i32 %356, %357
  br i1 %358, label %359, label %364

359:                                              ; preds = %355
  %360 = load %struct.val_neg_cache*, %struct.val_neg_cache** %11, align 8
  %361 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %361, align 4
  br label %364

364:                                              ; preds = %359, %355
  br label %365

365:                                              ; preds = %364, %350
  %366 = load %struct.val_neg_cache*, %struct.val_neg_cache** %11, align 8
  %367 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %366, i32 0, i32 0
  %368 = call i32 @lock_basic_unlock(i32* %367)
  %369 = load %struct.dns_msg*, %struct.dns_msg** %20, align 8
  %370 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %369, i32 0, i32 0
  %371 = load %struct.TYPE_4__*, %struct.TYPE_4__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = load i32, i32* %31, align 4
  %375 = call i32 @FLAGS_SET_RCODE(i32 %373, i32 %374)
  %376 = load %struct.dns_msg*, %struct.dns_msg** %20, align 8
  store %struct.dns_msg* %376, %struct.dns_msg** %10, align 8
  store i32 1, i32* %36, align 4
  br label %481

377:                                              ; preds = %142, %139
  br label %378

378:                                              ; preds = %377
  %379 = load %struct.query_info*, %struct.query_info** %12, align 8
  %380 = getelementptr inbounds %struct.query_info, %struct.query_info* %379, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %383 = icmp ne i64 %381, %382
  br i1 %383, label %384, label %385

384:                                              ; preds = %378
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %36, align 4
  br label %481

385:                                              ; preds = %378
  %386 = load %struct.query_info*, %struct.query_info** %12, align 8
  %387 = getelementptr inbounds %struct.query_info, %struct.query_info* %386, i32 0, i32 1
  %388 = load i32*, i32** %387, align 8
  store i32* %388, i32** %32, align 8
  %389 = load %struct.query_info*, %struct.query_info** %12, align 8
  %390 = getelementptr inbounds %struct.query_info, %struct.query_info* %389, i32 0, i32 2
  %391 = load i64, i64* %390, align 8
  store i64 %391, i64* %33, align 8
  %392 = call i32 @dname_remove_label(i32** %32, i64* %33)
  %393 = load i32*, i32** %32, align 8
  %394 = call i32 @dname_count_labels(i32* %393)
  store i32 %394, i32* %34, align 4
  %395 = load %struct.val_neg_cache*, %struct.val_neg_cache** %11, align 8
  %396 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %395, i32 0, i32 0
  %397 = call i32 @lock_basic_lock(i32* %396)
  %398 = load %struct.val_neg_cache*, %struct.val_neg_cache** %11, align 8
  %399 = load i32*, i32** %32, align 8
  %400 = load i64, i64* %33, align 8
  %401 = load i32, i32* %34, align 4
  %402 = load %struct.query_info*, %struct.query_info** %12, align 8
  %403 = getelementptr inbounds %struct.query_info, %struct.query_info* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 8
  %405 = call %struct.val_neg_zone* @neg_closest_zone_parent(%struct.val_neg_cache* %398, i32* %399, i64 %400, i32 %401, i32 %404)
  store %struct.val_neg_zone* %405, %struct.val_neg_zone** %35, align 8
  br label %406

406:                                              ; preds = %417, %385
  %407 = load %struct.val_neg_zone*, %struct.val_neg_zone** %35, align 8
  %408 = icmp ne %struct.val_neg_zone* %407, null
  br i1 %408, label %409, label %415

409:                                              ; preds = %406
  %410 = load %struct.val_neg_zone*, %struct.val_neg_zone** %35, align 8
  %411 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %410, i32 0, i32 2
  %412 = load i32, i32* %411, align 8
  %413 = icmp ne i32 %412, 0
  %414 = xor i1 %413, true
  br label %415

415:                                              ; preds = %409, %406
  %416 = phi i1 [ false, %406 ], [ %414, %409 ]
  br i1 %416, label %417, label %421

417:                                              ; preds = %415
  %418 = load %struct.val_neg_zone*, %struct.val_neg_zone** %35, align 8
  %419 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %418, i32 0, i32 1
  %420 = load %struct.val_neg_zone*, %struct.val_neg_zone** %419, align 8
  store %struct.val_neg_zone* %420, %struct.val_neg_zone** %35, align 8
  br label %406

421:                                              ; preds = %415
  %422 = load %struct.val_neg_zone*, %struct.val_neg_zone** %35, align 8
  %423 = icmp ne %struct.val_neg_zone* %422, null
  br i1 %423, label %424, label %436

424:                                              ; preds = %421
  %425 = load i32*, i32** %18, align 8
  %426 = icmp ne i32* %425, null
  br i1 %426, label %427, label %436

427:                                              ; preds = %424
  %428 = load %struct.val_neg_zone*, %struct.val_neg_zone** %35, align 8
  %429 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %428, i32 0, i32 0
  %430 = load i32*, i32** %429, align 8
  %431 = load i32*, i32** %18, align 8
  %432 = call i64 @dname_subdomain_c(i32* %430, i32* %431)
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %435, label %434

434:                                              ; preds = %427
  store %struct.val_neg_zone* null, %struct.val_neg_zone** %35, align 8
  br label %435

435:                                              ; preds = %434, %427
  br label %436

436:                                              ; preds = %435, %424, %421
  %437 = load %struct.val_neg_zone*, %struct.val_neg_zone** %35, align 8
  %438 = icmp ne %struct.val_neg_zone* %437, null
  br i1 %438, label %443, label %439

439:                                              ; preds = %436
  %440 = load %struct.val_neg_cache*, %struct.val_neg_cache** %11, align 8
  %441 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %440, i32 0, i32 0
  %442 = call i32 @lock_basic_unlock(i32* %441)
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %36, align 4
  br label %481

443:                                              ; preds = %436
  %444 = load %struct.val_neg_zone*, %struct.val_neg_zone** %35, align 8
  %445 = load %struct.query_info*, %struct.query_info** %12, align 8
  %446 = getelementptr inbounds %struct.query_info, %struct.query_info* %445, i32 0, i32 1
  %447 = load i32*, i32** %446, align 8
  %448 = load %struct.query_info*, %struct.query_info** %12, align 8
  %449 = getelementptr inbounds %struct.query_info, %struct.query_info* %448, i32 0, i32 2
  %450 = load i64, i64* %449, align 8
  %451 = load i32, i32* %34, align 4
  %452 = add nsw i32 %451, 1
  %453 = load i32*, i32** %15, align 8
  %454 = load %struct.rrset_cache*, %struct.rrset_cache** %14, align 8
  %455 = load %struct.regional*, %struct.regional** %13, align 8
  %456 = load i32, i32* %16, align 4
  %457 = load i32*, i32** %18, align 8
  %458 = call %struct.dns_msg* @neg_nsec3_proof_ds(%struct.val_neg_zone* %444, i32* %447, i64 %450, i32 %452, i32* %453, %struct.rrset_cache* %454, %struct.regional* %455, i32 %456, i32* %457)
  store %struct.dns_msg* %458, %struct.dns_msg** %20, align 8
  %459 = load %struct.dns_msg*, %struct.dns_msg** %20, align 8
  %460 = icmp ne %struct.dns_msg* %459, null
  br i1 %460, label %461, label %476

461:                                              ; preds = %443
  %462 = load i32, i32* %17, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %476

464:                                              ; preds = %461
  %465 = load %struct.rrset_cache*, %struct.rrset_cache** %14, align 8
  %466 = load i32, i32* %16, align 4
  %467 = load %struct.regional*, %struct.regional** %13, align 8
  %468 = load %struct.dns_msg*, %struct.dns_msg** %20, align 8
  %469 = load %struct.val_neg_zone*, %struct.val_neg_zone** %35, align 8
  %470 = call i32 @add_soa(%struct.rrset_cache* %465, i32 %466, %struct.regional* %467, %struct.dns_msg* %468, %struct.val_neg_zone* %469)
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %476, label %472

472:                                              ; preds = %464
  %473 = load %struct.val_neg_cache*, %struct.val_neg_cache** %11, align 8
  %474 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %473, i32 0, i32 0
  %475 = call i32 @lock_basic_unlock(i32* %474)
  store %struct.dns_msg* null, %struct.dns_msg** %10, align 8
  store i32 1, i32* %36, align 4
  br label %481

476:                                              ; preds = %464, %461, %443
  %477 = load %struct.val_neg_cache*, %struct.val_neg_cache** %11, align 8
  %478 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %477, i32 0, i32 0
  %479 = call i32 @lock_basic_unlock(i32* %478)
  %480 = load %struct.dns_msg*, %struct.dns_msg** %20, align 8
  store %struct.dns_msg* %480, %struct.dns_msg** %10, align 8
  store i32 1, i32* %36, align 4
  br label %481

481:                                              ; preds = %476, %472, %439, %384, %365, %342, %331, %321, %302, %288, %272, %245, %234, %173, %165, %127, %126, %115, %108, %53
  %482 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %482)
  %483 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  ret %struct.dns_msg* %483
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @log_assert(i32) #2

declare dso_local i64 @dname_subdomain_c(i32*, i32*) #2

declare dso_local %struct.ub_packed_rrset_key* @neg_find_nsec(%struct.val_neg_cache*, i32*, i64, i32, %struct.rrset_cache*, i32, %struct.regional*) #2

declare dso_local i64 @nsec_proves_nodata(%struct.ub_packed_rrset_key*, %struct.query_info*, i32**) #2

declare dso_local %struct.dns_msg* @dns_msg_create(i32*, i64, i64, i32, %struct.regional*, i32) #2

declare dso_local i32 @dns_msg_authadd(%struct.dns_msg*, %struct.regional*, %struct.ub_packed_rrset_key*, i32) #2

declare dso_local i32 @add_soa(%struct.rrset_cache*, i32, %struct.regional*, %struct.dns_msg*, %struct.val_neg_zone*) #2

declare dso_local i32 @lock_basic_lock(i32*) #2

declare dso_local i32 @lock_basic_unlock(i32*) #2

declare dso_local i64 @val_nsec_proves_name_error(%struct.ub_packed_rrset_key*, i32*) #2

declare dso_local i32* @nsec_closest_encloser(i32*, %struct.ub_packed_rrset_key*) #2

declare dso_local i32 @dname_count_size_labels(i32*, i64*) #2

declare dso_local i64 @query_dname_compare(i32*, i32*) #2

declare dso_local i32 @memmove(i32*, i32*, i64) #2

declare dso_local %struct.ub_packed_rrset_key* @rrset_cache_lookup(%struct.rrset_cache*, i32*, i64, i64, i32, i32, i32, i32) #2

declare dso_local i32 @lock_rw_unlock(i32*) #2

declare dso_local %struct.ub_packed_rrset_key* @packed_rrset_copy_region(%struct.ub_packed_rrset_key*, %struct.regional*, i32) #2

declare dso_local i32 @dns_msg_ansadd(%struct.dns_msg*, %struct.regional*, %struct.ub_packed_rrset_key*, i32) #2

declare dso_local i32 @FLAGS_SET_RCODE(i32, i32) #2

declare dso_local i32 @dname_remove_label(i32**, i64*) #2

declare dso_local i32 @dname_count_labels(i32*) #2

declare dso_local %struct.val_neg_zone* @neg_closest_zone_parent(%struct.val_neg_cache*, i32*, i64, i32, i32) #2

declare dso_local %struct.dns_msg* @neg_nsec3_proof_ds(%struct.val_neg_zone*, i32*, i64, i32, i32*, %struct.rrset_cache*, %struct.regional*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
