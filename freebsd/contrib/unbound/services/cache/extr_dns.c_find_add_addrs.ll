; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_find_add_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_find_add_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.regional = type { i32 }
%struct.delegpt = type { %struct.delegpt_ns* }
%struct.delegpt_ns = type { i32, i32, %struct.delegpt_ns* }
%struct.dns_msg = type { i32 }
%struct.msgreply_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_AAAA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_env*, i32, %struct.regional*, %struct.delegpt*, i32, %struct.dns_msg**)* @find_add_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_add_addrs(%struct.module_env* %0, i32 %1, %struct.regional* %2, %struct.delegpt* %3, i32 %4, %struct.dns_msg** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.module_env*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.regional*, align 8
  %11 = alloca %struct.delegpt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dns_msg**, align 8
  %14 = alloca %struct.delegpt_ns*, align 8
  %15 = alloca %struct.msgreply_entry*, align 8
  %16 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.module_env* %0, %struct.module_env** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.regional* %2, %struct.regional** %10, align 8
  store %struct.delegpt* %3, %struct.delegpt** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.dns_msg** %5, %struct.dns_msg*** %13, align 8
  %17 = load %struct.delegpt*, %struct.delegpt** %11, align 8
  %18 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %17, i32 0, i32 0
  %19 = load %struct.delegpt_ns*, %struct.delegpt_ns** %18, align 8
  store %struct.delegpt_ns* %19, %struct.delegpt_ns** %14, align 8
  br label %20

20:                                               ; preds = %154, %6
  %21 = load %struct.delegpt_ns*, %struct.delegpt_ns** %14, align 8
  %22 = icmp ne %struct.delegpt_ns* %21, null
  br i1 %22, label %23, label %158

23:                                               ; preds = %20
  %24 = load %struct.module_env*, %struct.module_env** %8, align 8
  %25 = getelementptr inbounds %struct.module_env, %struct.module_env* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.delegpt_ns*, %struct.delegpt_ns** %14, align 8
  %28 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.delegpt_ns*, %struct.delegpt_ns** %14, align 8
  %31 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call %struct.ub_packed_rrset_key* @rrset_cache_lookup(i32 %26, i32 %29, i32 %32, i32 %33, i32 %34, i32 0, i32 %35, i32 0)
  store %struct.ub_packed_rrset_key* %36, %struct.ub_packed_rrset_key** %16, align 8
  %37 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %38 = icmp ne %struct.ub_packed_rrset_key* %37, null
  br i1 %38, label %39, label %65

39:                                               ; preds = %23
  %40 = load %struct.delegpt*, %struct.delegpt** %11, align 8
  %41 = load %struct.regional*, %struct.regional** %10, align 8
  %42 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %43 = call i32 @delegpt_add_rrset_A(%struct.delegpt* %40, %struct.regional* %41, %struct.ub_packed_rrset_key* %42, i32 0)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %47 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @lock_rw_unlock(i32* %48)
  store i32 0, i32* %7, align 4
  br label %159

50:                                               ; preds = %39
  %51 = load %struct.dns_msg**, %struct.dns_msg*** %13, align 8
  %52 = icmp ne %struct.dns_msg** %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %55 = load %struct.regional*, %struct.regional** %10, align 8
  %56 = load %struct.dns_msg**, %struct.dns_msg*** %13, align 8
  %57 = load %struct.dns_msg*, %struct.dns_msg** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @addr_to_additional(%struct.ub_packed_rrset_key* %54, %struct.regional* %55, %struct.dns_msg* %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %50
  %61 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %62 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = call i32 @lock_rw_unlock(i32* %63)
  br label %88

65:                                               ; preds = %23
  %66 = load %struct.module_env*, %struct.module_env** %8, align 8
  %67 = load %struct.delegpt_ns*, %struct.delegpt_ns** %14, align 8
  %68 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.delegpt_ns*, %struct.delegpt_ns** %14, align 8
  %71 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call %struct.msgreply_entry* @msg_cache_lookup(%struct.module_env* %66, i32 %69, i32 %72, i32 %73, i32 %74, i32 0, i32 %75, i32 0)
  store %struct.msgreply_entry* %76, %struct.msgreply_entry** %15, align 8
  %77 = load %struct.msgreply_entry*, %struct.msgreply_entry** %15, align 8
  %78 = icmp ne %struct.msgreply_entry* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %65
  %80 = load %struct.delegpt*, %struct.delegpt** %11, align 8
  %81 = load %struct.msgreply_entry*, %struct.msgreply_entry** %15, align 8
  %82 = call i32 @delegpt_add_neg_msg(%struct.delegpt* %80, %struct.msgreply_entry* %81)
  %83 = load %struct.msgreply_entry*, %struct.msgreply_entry** %15, align 8
  %84 = getelementptr inbounds %struct.msgreply_entry, %struct.msgreply_entry* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = call i32 @lock_rw_unlock(i32* %85)
  br label %87

87:                                               ; preds = %79, %65
  br label %88

88:                                               ; preds = %87, %60
  %89 = load %struct.module_env*, %struct.module_env** %8, align 8
  %90 = getelementptr inbounds %struct.module_env, %struct.module_env* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.delegpt_ns*, %struct.delegpt_ns** %14, align 8
  %93 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.delegpt_ns*, %struct.delegpt_ns** %14, align 8
  %96 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call %struct.ub_packed_rrset_key* @rrset_cache_lookup(i32 %91, i32 %94, i32 %97, i32 %98, i32 %99, i32 0, i32 %100, i32 0)
  store %struct.ub_packed_rrset_key* %101, %struct.ub_packed_rrset_key** %16, align 8
  %102 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %103 = icmp ne %struct.ub_packed_rrset_key* %102, null
  br i1 %103, label %104, label %130

104:                                              ; preds = %88
  %105 = load %struct.delegpt*, %struct.delegpt** %11, align 8
  %106 = load %struct.regional*, %struct.regional** %10, align 8
  %107 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %108 = call i32 @delegpt_add_rrset_AAAA(%struct.delegpt* %105, %struct.regional* %106, %struct.ub_packed_rrset_key* %107, i32 0)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %104
  %111 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %112 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = call i32 @lock_rw_unlock(i32* %113)
  store i32 0, i32* %7, align 4
  br label %159

115:                                              ; preds = %104
  %116 = load %struct.dns_msg**, %struct.dns_msg*** %13, align 8
  %117 = icmp ne %struct.dns_msg** %116, null
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %120 = load %struct.regional*, %struct.regional** %10, align 8
  %121 = load %struct.dns_msg**, %struct.dns_msg*** %13, align 8
  %122 = load %struct.dns_msg*, %struct.dns_msg** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @addr_to_additional(%struct.ub_packed_rrset_key* %119, %struct.regional* %120, %struct.dns_msg* %122, i32 %123)
  br label %125

125:                                              ; preds = %118, %115
  %126 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %127 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = call i32 @lock_rw_unlock(i32* %128)
  br label %153

130:                                              ; preds = %88
  %131 = load %struct.module_env*, %struct.module_env** %8, align 8
  %132 = load %struct.delegpt_ns*, %struct.delegpt_ns** %14, align 8
  %133 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.delegpt_ns*, %struct.delegpt_ns** %14, align 8
  %136 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %12, align 4
  %141 = call %struct.msgreply_entry* @msg_cache_lookup(%struct.module_env* %131, i32 %134, i32 %137, i32 %138, i32 %139, i32 0, i32 %140, i32 0)
  store %struct.msgreply_entry* %141, %struct.msgreply_entry** %15, align 8
  %142 = load %struct.msgreply_entry*, %struct.msgreply_entry** %15, align 8
  %143 = icmp ne %struct.msgreply_entry* %142, null
  br i1 %143, label %144, label %152

144:                                              ; preds = %130
  %145 = load %struct.delegpt*, %struct.delegpt** %11, align 8
  %146 = load %struct.msgreply_entry*, %struct.msgreply_entry** %15, align 8
  %147 = call i32 @delegpt_add_neg_msg(%struct.delegpt* %145, %struct.msgreply_entry* %146)
  %148 = load %struct.msgreply_entry*, %struct.msgreply_entry** %15, align 8
  %149 = getelementptr inbounds %struct.msgreply_entry, %struct.msgreply_entry* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = call i32 @lock_rw_unlock(i32* %150)
  br label %152

152:                                              ; preds = %144, %130
  br label %153

153:                                              ; preds = %152, %125
  br label %154

154:                                              ; preds = %153
  %155 = load %struct.delegpt_ns*, %struct.delegpt_ns** %14, align 8
  %156 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %155, i32 0, i32 2
  %157 = load %struct.delegpt_ns*, %struct.delegpt_ns** %156, align 8
  store %struct.delegpt_ns* %157, %struct.delegpt_ns** %14, align 8
  br label %20

158:                                              ; preds = %20
  store i32 1, i32* %7, align 4
  br label %159

159:                                              ; preds = %158, %110, %45
  %160 = load i32, i32* %7, align 4
  ret i32 %160
}

declare dso_local %struct.ub_packed_rrset_key* @rrset_cache_lookup(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @delegpt_add_rrset_A(%struct.delegpt*, %struct.regional*, %struct.ub_packed_rrset_key*, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @addr_to_additional(%struct.ub_packed_rrset_key*, %struct.regional*, %struct.dns_msg*, i32) #1

declare dso_local %struct.msgreply_entry* @msg_cache_lookup(%struct.module_env*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @delegpt_add_neg_msg(%struct.delegpt*, %struct.msgreply_entry*) #1

declare dso_local i32 @delegpt_add_rrset_AAAA(%struct.delegpt*, %struct.regional*, %struct.ub_packed_rrset_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
