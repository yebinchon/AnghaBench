; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_synth_dname_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_synth_dname_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_msg = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i8*, i8*, %struct.ub_packed_rrset_key**, i32, i64, i64, i32, i64 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.packed_rrset_data*, i32, %struct.ub_packed_rrset_key* }
%struct.packed_rrset_data = type { i64, i32, i32, i64*, i64*, i32**, i32, i64 }
%struct.TYPE_5__ = type { i64, i32, i64, i32, i32 }
%struct.regional = type { i32 }
%struct.query_info = type { i64, i32 }

@BIT_QR = common dso_local global i32 0, align 4
@SERVE_EXPIRED_TTL = common dso_local global i8* null, align 8
@sec_status_unchecked = common dso_local global i32 0, align 4
@LDNS_MAX_DOMAINLEN = common dso_local global i64 0, align 8
@LDNS_RCODE_YXDOMAIN = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_CNAME = common dso_local global i32 0, align 4
@rrset_trust_ans_noAA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dns_msg* (%struct.ub_packed_rrset_key*, %struct.regional*, i64, %struct.query_info*, i32*)* @synth_dname_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dns_msg* @synth_dname_msg(%struct.ub_packed_rrset_key* %0, %struct.regional* %1, i64 %2, %struct.query_info* %3, i32* %4) #0 {
  %6 = alloca %struct.dns_msg*, align 8
  %7 = alloca %struct.ub_packed_rrset_key*, align 8
  %8 = alloca %struct.regional*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.query_info*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.dns_msg*, align 8
  %13 = alloca %struct.ub_packed_rrset_key*, align 8
  %14 = alloca %struct.packed_rrset_data*, align 8
  %15 = alloca %struct.packed_rrset_data*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %7, align 8
  store %struct.regional* %1, %struct.regional** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.query_info* %3, %struct.query_info** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %21 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %22, align 8
  store %struct.packed_rrset_data* %23, %struct.packed_rrset_data** %15, align 8
  store i32* null, i32** %17, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %26 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store %struct.dns_msg* null, %struct.dns_msg** %6, align 8
  br label %354

30:                                               ; preds = %5
  %31 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %32 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %11, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.regional*, %struct.regional** %8, align 8
  %36 = load %struct.query_info*, %struct.query_info** %10, align 8
  %37 = call %struct.dns_msg* @gen_dns_msg(%struct.regional* %35, %struct.query_info* %36, i32 2)
  store %struct.dns_msg* %37, %struct.dns_msg** %12, align 8
  %38 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %39 = icmp ne %struct.dns_msg* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %30
  store %struct.dns_msg* null, %struct.dns_msg** %6, align 8
  br label %354

41:                                               ; preds = %30
  %42 = load i32, i32* @BIT_QR, align 4
  %43 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %44 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 7
  store i32 %42, i32* %46, align 8
  %47 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %48 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 11
  store i64 0, i64* %50, align 8
  %51 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %52 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %56 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = sub nsw i64 %57, %58
  %60 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %61 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i64 %59, i64* %63, align 8
  %64 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %65 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i8* @PREFETCH_TTL_CALC(i64 %68)
  %70 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %71 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 5
  store i8* %69, i8** %73, align 8
  %74 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %75 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i8*, i8** @SERVE_EXPIRED_TTL, align 8
  %80 = getelementptr i8, i8* %79, i64 %78
  %81 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %82 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  store i8* %80, i8** %84, align 8
  %85 = load i32, i32* @sec_status_unchecked, align 4
  %86 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %87 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 10
  store i32 %85, i32* %89, align 8
  %90 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %91 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  store i32 1, i32* %93, align 8
  %94 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %95 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 9
  store i64 0, i64* %97, align 8
  %98 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %99 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 8
  store i64 0, i64* %101, align 8
  %102 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %103 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 3
  store i32 1, i32* %105, align 4
  %106 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %107 = load %struct.regional*, %struct.regional** %8, align 8
  %108 = load i64, i64* %9, align 8
  %109 = call %struct.ub_packed_rrset_key* @packed_rrset_copy_region(%struct.ub_packed_rrset_key* %106, %struct.regional* %107, i64 %108)
  %110 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %111 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 6
  %114 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %113, align 8
  %115 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %114, i64 0
  store %struct.ub_packed_rrset_key* %109, %struct.ub_packed_rrset_key** %115, align 8
  %116 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %117 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 6
  %120 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %119, align 8
  %121 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %120, i64 0
  %122 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %121, align 8
  %123 = icmp ne %struct.ub_packed_rrset_key* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %41
  store %struct.dns_msg* null, %struct.dns_msg** %6, align 8
  br label %354

125:                                              ; preds = %41
  %126 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %127 = call i32 @get_cname_target(%struct.ub_packed_rrset_key* %126, i32** %17, i64* %19)
  %128 = load i32*, i32** %17, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %125
  store %struct.dns_msg* null, %struct.dns_msg** %6, align 8
  br label %354

131:                                              ; preds = %125
  %132 = load %struct.query_info*, %struct.query_info** %10, align 8
  %133 = getelementptr inbounds %struct.query_info, %struct.query_info* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %19, align 8
  %136 = add i64 %134, %135
  %137 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %138 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = sub i64 %136, %140
  store i64 %141, i64* %18, align 8
  %142 = load i64, i64* %18, align 8
  %143 = load i64, i64* @LDNS_MAX_DOMAINLEN, align 8
  %144 = icmp ugt i64 %142, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %131
  %146 = load i32, i32* @LDNS_RCODE_YXDOMAIN, align 4
  %147 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %148 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %147, i32 0, i32 0
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %146
  store i32 %152, i32* %150, align 8
  %153 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  store %struct.dns_msg* %153, %struct.dns_msg** %6, align 8
  br label %354

154:                                              ; preds = %131
  %155 = load %struct.regional*, %struct.regional** %8, align 8
  %156 = load i64, i64* %18, align 8
  %157 = trunc i64 %156 to i32
  %158 = call i64 @regional_alloc(%struct.regional* %155, i32 %157)
  %159 = inttoptr i64 %158 to i32*
  store i32* %159, i32** %16, align 8
  %160 = load i32*, i32** %16, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %154
  store %struct.dns_msg* null, %struct.dns_msg** %6, align 8
  br label %354

163:                                              ; preds = %154
  %164 = load i32*, i32** %16, align 8
  %165 = load %struct.query_info*, %struct.query_info** %10, align 8
  %166 = getelementptr inbounds %struct.query_info, %struct.query_info* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.query_info*, %struct.query_info** %10, align 8
  %169 = getelementptr inbounds %struct.query_info, %struct.query_info* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %172 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = sub i64 %170, %174
  %176 = call i32 @memcpy(i32* %164, i32 %167, i64 %175)
  %177 = load i32*, i32** %16, align 8
  %178 = load %struct.query_info*, %struct.query_info** %10, align 8
  %179 = getelementptr inbounds %struct.query_info, %struct.query_info* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %182 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = sub i64 %180, %184
  %186 = getelementptr inbounds i32, i32* %177, i64 %185
  %187 = load i32*, i32** %17, align 8
  %188 = load i64, i64* %19, align 8
  %189 = call i32 @memmove(i32* %186, i32* %187, i64 %188)
  %190 = load %struct.regional*, %struct.regional** %8, align 8
  %191 = call i64 @regional_alloc(%struct.regional* %190, i32 56)
  %192 = inttoptr i64 %191 to %struct.ub_packed_rrset_key*
  store %struct.ub_packed_rrset_key* %192, %struct.ub_packed_rrset_key** %13, align 8
  %193 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %194 = icmp ne %struct.ub_packed_rrset_key* %193, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %163
  store %struct.dns_msg* null, %struct.dns_msg** %6, align 8
  br label %354

196:                                              ; preds = %163
  %197 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %198 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %197, i32 0, i32 0
  %199 = call i32 @memset(%struct.TYPE_6__* %198, i32 0, i32 24)
  %200 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %201 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %202 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %201, i32 0, i32 0
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 6
  %205 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %204, align 8
  %206 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %205, i64 1
  store %struct.ub_packed_rrset_key* %200, %struct.ub_packed_rrset_key** %206, align 8
  %207 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %208 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %209 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 2
  store %struct.ub_packed_rrset_key* %207, %struct.ub_packed_rrset_key** %210, align 8
  %211 = load i32, i32* @LDNS_RR_TYPE_CNAME, align 4
  %212 = call i32 @htons(i32 %211)
  %213 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %214 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 4
  store i32 %212, i32* %215, align 4
  %216 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %217 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %221 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 3
  store i32 %219, i32* %222, align 8
  %223 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %224 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 2
  store i64 0, i64* %225, align 8
  %226 = load %struct.regional*, %struct.regional** %8, align 8
  %227 = load %struct.query_info*, %struct.query_info** %10, align 8
  %228 = getelementptr inbounds %struct.query_info, %struct.query_info* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.query_info*, %struct.query_info** %10, align 8
  %231 = getelementptr inbounds %struct.query_info, %struct.query_info* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = trunc i64 %232 to i32
  %234 = call i32 @regional_alloc_init(%struct.regional* %226, i32 %229, i32 %233)
  %235 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %236 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 1
  store i32 %234, i32* %237, align 8
  %238 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %239 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %244, label %243

243:                                              ; preds = %196
  store %struct.dns_msg* null, %struct.dns_msg** %6, align 8
  br label %354

244:                                              ; preds = %196
  %245 = load %struct.query_info*, %struct.query_info** %10, align 8
  %246 = getelementptr inbounds %struct.query_info, %struct.query_info* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %249 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 0
  store i64 %247, i64* %250, align 8
  %251 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %252 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %251, i32 0, i32 1
  %253 = call i32 @rrset_key_hash(%struct.TYPE_5__* %252)
  %254 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %255 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 1
  store i32 %253, i32* %256, align 8
  %257 = load %struct.regional*, %struct.regional** %8, align 8
  %258 = load i64, i64* %18, align 8
  %259 = add i64 84, %258
  %260 = trunc i64 %259 to i32
  %261 = call i64 @regional_alloc_zero(%struct.regional* %257, i32 %260)
  %262 = inttoptr i64 %261 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %262, %struct.packed_rrset_data** %14, align 8
  %263 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %264 = icmp ne %struct.packed_rrset_data* %263, null
  br i1 %264, label %266, label %265

265:                                              ; preds = %244
  store %struct.dns_msg* null, %struct.dns_msg** %6, align 8
  br label %354

266:                                              ; preds = %244
  %267 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %268 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %269 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 0
  store %struct.packed_rrset_data* %267, %struct.packed_rrset_data** %270, align 8
  %271 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %272 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %271, i32 0, i32 0
  store i64 0, i64* %272, align 8
  %273 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %274 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %273, i32 0, i32 2
  store i32 1, i32* %274, align 4
  %275 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %276 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %275, i32 0, i32 7
  store i64 0, i64* %276, align 8
  %277 = load i32, i32* @rrset_trust_ans_noAA, align 4
  %278 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %279 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %278, i32 0, i32 6
  store i32 %277, i32* %279, align 8
  %280 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %281 = bitcast %struct.packed_rrset_data* %280 to i32*
  %282 = getelementptr inbounds i32, i32* %281, i64 56
  %283 = bitcast i32* %282 to i64*
  %284 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %285 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %284, i32 0, i32 3
  store i64* %283, i64** %285, align 8
  %286 = load i64, i64* %18, align 8
  %287 = add i64 %286, 4
  %288 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %289 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %288, i32 0, i32 3
  %290 = load i64*, i64** %289, align 8
  %291 = getelementptr inbounds i64, i64* %290, i64 0
  store i64 %287, i64* %291, align 8
  %292 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %293 = call i32 @packed_rrset_ptr_fixup(%struct.packed_rrset_data* %292)
  %294 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %295 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %298 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %297, i32 0, i32 4
  %299 = load i64*, i64** %298, align 8
  %300 = getelementptr inbounds i64, i64* %299, i64 0
  store i64 %296, i64* %300, align 8
  %301 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %302 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %305 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %304, i32 0, i32 0
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 1
  store i64 %303, i64* %307, align 8
  %308 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %309 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = call i8* @PREFETCH_TTL_CALC(i64 %310)
  %312 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %313 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %312, i32 0, i32 0
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 5
  store i8* %311, i8** %315, align 8
  %316 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %317 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = load i8*, i8** @SERVE_EXPIRED_TTL, align 8
  %320 = getelementptr i8, i8* %319, i64 %318
  %321 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %322 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %321, i32 0, i32 0
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 4
  store i8* %320, i8** %324, align 8
  %325 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %326 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %325, i32 0, i32 5
  %327 = load i32**, i32*** %326, align 8
  %328 = getelementptr inbounds i32*, i32** %327, i64 0
  %329 = load i32*, i32** %328, align 8
  %330 = load i64, i64* %18, align 8
  %331 = call i32 @sldns_write_uint16(i32* %329, i64 %330)
  %332 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %333 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %332, i32 0, i32 5
  %334 = load i32**, i32*** %333, align 8
  %335 = getelementptr inbounds i32*, i32** %334, i64 0
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 4
  %338 = load i32*, i32** %16, align 8
  %339 = load i64, i64* %18, align 8
  %340 = call i32 @memmove(i32* %337, i32* %338, i64 %339)
  %341 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %342 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %341, i32 0, i32 0
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %344, align 8
  %347 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %348 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %347, i32 0, i32 0
  %349 = load %struct.TYPE_4__*, %struct.TYPE_4__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %350, align 4
  %353 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  store %struct.dns_msg* %353, %struct.dns_msg** %6, align 8
  br label %354

354:                                              ; preds = %266, %265, %243, %195, %162, %145, %130, %124, %40, %29
  %355 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  ret %struct.dns_msg* %355
}

declare dso_local %struct.dns_msg* @gen_dns_msg(%struct.regional*, %struct.query_info*, i32) #1

declare dso_local i8* @PREFETCH_TTL_CALC(i64) #1

declare dso_local %struct.ub_packed_rrset_key* @packed_rrset_copy_region(%struct.ub_packed_rrset_key*, %struct.regional*, i64) #1

declare dso_local i32 @get_cname_target(%struct.ub_packed_rrset_key*, i32**, i64*) #1

declare dso_local i64 @regional_alloc(%struct.regional*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @regional_alloc_init(%struct.regional*, i32, i32) #1

declare dso_local i32 @rrset_key_hash(%struct.TYPE_5__*) #1

declare dso_local i64 @regional_alloc_zero(%struct.regional*, i32) #1

declare dso_local i32 @packed_rrset_ptr_fixup(%struct.packed_rrset_data*) #1

declare dso_local i32 @sldns_write_uint16(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
