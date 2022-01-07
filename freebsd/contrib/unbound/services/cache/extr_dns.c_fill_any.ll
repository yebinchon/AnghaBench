; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_fill_any.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_fill_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_msg = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.module_env = type { i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i64 }
%struct.regional = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.packed_rrset_data = type { i64 }

@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_MX = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DNAME = common dso_local global i64 0, align 8
@LDNS_RCODE_NOTIMPL = common dso_local global i32 0, align 4
@sec_status_indeterminate = common dso_local global i32 0, align 4
@rrset_trust_add_noAA = common dso_local global i64 0, align 8
@rrset_trust_auth_noAA = common dso_local global i64 0, align 8
@rrset_trust_add_AA = common dso_local global i64 0, align 8
@rrset_trust_auth_AA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dns_msg* (%struct.module_env*, i32*, i64, i64, i64, %struct.regional*)* @fill_any to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dns_msg* @fill_any(%struct.module_env* %0, i32* %1, i64 %2, i64 %3, i64 %4, %struct.regional* %5) #0 {
  %7 = alloca %struct.dns_msg*, align 8
  %8 = alloca %struct.module_env*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.regional*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dns_msg*, align 8
  %16 = alloca [7 x i64], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ub_packed_rrset_key*, align 8
  %20 = alloca %struct.packed_rrset_data*, align 8
  store %struct.module_env* %0, %struct.module_env** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.regional* %5, %struct.regional** %13, align 8
  %21 = load %struct.module_env*, %struct.module_env** %8, align 8
  %22 = getelementptr inbounds %struct.module_env, %struct.module_env* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %14, align 4
  store %struct.dns_msg* null, %struct.dns_msg** %15, align 8
  %25 = getelementptr inbounds [7 x i64], [7 x i64]* %16, i64 0, i64 0
  %26 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  store i64 %26, i64* %25, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 1
  %28 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 1
  %30 = load i64, i64* @LDNS_RR_TYPE_MX, align 8
  store i64 %30, i64* %29, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 1
  %32 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  store i64 %32, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 1
  %34 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  store i64 %34, i64* %33, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 1
  %36 = load i64, i64* @LDNS_RR_TYPE_DNAME, align 8
  store i64 %36, i64* %35, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 1
  store i64 0, i64* %37, align 8
  store i32 6, i32* %18, align 4
  %38 = load i32, i32* %18, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [7 x i64], [7 x i64]* %16, i64 0, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @log_assert(i32 %43)
  %45 = load %struct.module_env*, %struct.module_env** %8, align 8
  %46 = getelementptr inbounds %struct.module_env, %struct.module_env* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %6
  %52 = load i32*, i32** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load %struct.regional*, %struct.regional** %13, align 8
  %57 = call %struct.dns_msg* @dns_msg_create(i32* %52, i64 %53, i64 %54, i64 %55, %struct.regional* %56, i64 0)
  store %struct.dns_msg* %57, %struct.dns_msg** %15, align 8
  %58 = load %struct.dns_msg*, %struct.dns_msg** %15, align 8
  %59 = icmp ne %struct.dns_msg* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  store %struct.dns_msg* null, %struct.dns_msg** %7, align 8
  br label %174

61:                                               ; preds = %51
  %62 = load i32, i32* @LDNS_RCODE_NOTIMPL, align 4
  %63 = load %struct.dns_msg*, %struct.dns_msg** %15, align 8
  %64 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %62
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @sec_status_indeterminate, align 4
  %70 = load %struct.dns_msg*, %struct.dns_msg** %15, align 8
  %71 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  %74 = load %struct.dns_msg*, %struct.dns_msg** %15, align 8
  store %struct.dns_msg* %74, %struct.dns_msg** %7, align 8
  br label %174

75:                                               ; preds = %6
  store i32 0, i32* %17, align 4
  br label %76

76:                                               ; preds = %169, %75
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %18, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %172

80:                                               ; preds = %76
  %81 = load %struct.module_env*, %struct.module_env** %8, align 8
  %82 = getelementptr inbounds %struct.module_env, %struct.module_env* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [7 x i64], [7 x i64]* %16, i64 0, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call %struct.ub_packed_rrset_key* @rrset_cache_lookup(i32 %83, i32* %84, i64 %85, i64 %89, i64 %90, i32 0, i32 %91, i32 0)
  store %struct.ub_packed_rrset_key* %92, %struct.ub_packed_rrset_key** %19, align 8
  %93 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %19, align 8
  %94 = icmp ne %struct.ub_packed_rrset_key* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %80
  br label %169

96:                                               ; preds = %80
  %97 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %19, align 8
  %98 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %101, %struct.packed_rrset_data** %20, align 8
  %102 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %20, align 8
  %103 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @rrset_trust_add_noAA, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %125, label %107

107:                                              ; preds = %96
  %108 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %20, align 8
  %109 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @rrset_trust_auth_noAA, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %125, label %113

113:                                              ; preds = %107
  %114 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %20, align 8
  %115 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @rrset_trust_add_AA, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %125, label %119

119:                                              ; preds = %113
  %120 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %20, align 8
  %121 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @rrset_trust_auth_AA, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %119, %113, %107, %96
  %126 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %19, align 8
  %127 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = call i32 @lock_rw_unlock(i32* %128)
  br label %169

130:                                              ; preds = %119
  %131 = load %struct.dns_msg*, %struct.dns_msg** %15, align 8
  %132 = icmp ne %struct.dns_msg* %131, null
  br i1 %132, label %152, label %133

133:                                              ; preds = %130
  %134 = load i32*, i32** %9, align 8
  %135 = load i64, i64* %10, align 8
  %136 = load i64, i64* %11, align 8
  %137 = load i64, i64* %12, align 8
  %138 = load %struct.regional*, %struct.regional** %13, align 8
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* %17, align 4
  %141 = sub nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = call %struct.dns_msg* @dns_msg_create(i32* %134, i64 %135, i64 %136, i64 %137, %struct.regional* %138, i64 %142)
  store %struct.dns_msg* %143, %struct.dns_msg** %15, align 8
  %144 = load %struct.dns_msg*, %struct.dns_msg** %15, align 8
  %145 = icmp ne %struct.dns_msg* %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %133
  %147 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %19, align 8
  %148 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = call i32 @lock_rw_unlock(i32* %149)
  store %struct.dns_msg* null, %struct.dns_msg** %7, align 8
  br label %174

151:                                              ; preds = %133
  br label %152

152:                                              ; preds = %151, %130
  %153 = load %struct.dns_msg*, %struct.dns_msg** %15, align 8
  %154 = load %struct.regional*, %struct.regional** %13, align 8
  %155 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %19, align 8
  %156 = load i32, i32* %14, align 4
  %157 = call i32 @dns_msg_ansadd(%struct.dns_msg* %153, %struct.regional* %154, %struct.ub_packed_rrset_key* %155, i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %152
  %160 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %19, align 8
  %161 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = call i32 @lock_rw_unlock(i32* %162)
  store %struct.dns_msg* null, %struct.dns_msg** %7, align 8
  br label %174

164:                                              ; preds = %152
  %165 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %19, align 8
  %166 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = call i32 @lock_rw_unlock(i32* %167)
  br label %169

169:                                              ; preds = %164, %125, %95
  %170 = load i32, i32* %17, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %17, align 4
  br label %76

172:                                              ; preds = %76
  %173 = load %struct.dns_msg*, %struct.dns_msg** %15, align 8
  store %struct.dns_msg* %173, %struct.dns_msg** %7, align 8
  br label %174

174:                                              ; preds = %172, %159, %146, %61, %60
  %175 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  ret %struct.dns_msg* %175
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local %struct.dns_msg* @dns_msg_create(i32*, i64, i64, i64, %struct.regional*, i64) #1

declare dso_local %struct.ub_packed_rrset_key* @rrset_cache_lookup(i32, i32*, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @dns_msg_ansadd(%struct.dns_msg*, %struct.regional*, %struct.ub_packed_rrset_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
