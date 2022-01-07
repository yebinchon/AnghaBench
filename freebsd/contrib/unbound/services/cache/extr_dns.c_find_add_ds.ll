; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_find_add_ds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_find_add_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.regional = type { i32 }
%struct.dns_msg = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.delegpt = type { i32, i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@LDNS_RR_TYPE_DS = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_NSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_env*, %struct.regional*, %struct.dns_msg*, %struct.delegpt*, i32)* @find_add_ds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_add_ds(%struct.module_env* %0, %struct.regional* %1, %struct.dns_msg* %2, %struct.delegpt* %3, i32 %4) #0 {
  %6 = alloca %struct.module_env*, align 8
  %7 = alloca %struct.regional*, align 8
  %8 = alloca %struct.dns_msg*, align 8
  %9 = alloca %struct.delegpt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.module_env* %0, %struct.module_env** %6, align 8
  store %struct.regional* %1, %struct.regional** %7, align 8
  store %struct.dns_msg* %2, %struct.dns_msg** %8, align 8
  store %struct.delegpt* %3, %struct.delegpt** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.module_env*, %struct.module_env** %6, align 8
  %13 = getelementptr inbounds %struct.module_env, %struct.module_env* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %16 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %19 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %22 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %23 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call %struct.ub_packed_rrset_key* @rrset_cache_lookup(i32 %14, i32 %17, i32 %20, i32 %21, i32 %25, i32 0, i32 %26, i32 0)
  store %struct.ub_packed_rrset_key* %27, %struct.ub_packed_rrset_key** %11, align 8
  %28 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %29 = icmp ne %struct.ub_packed_rrset_key* %28, null
  br i1 %29, label %60, label %30

30:                                               ; preds = %5
  %31 = load %struct.module_env*, %struct.module_env** %6, align 8
  %32 = getelementptr inbounds %struct.module_env, %struct.module_env* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %35 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %38 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @LDNS_RR_TYPE_NSEC, align 4
  %41 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %42 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call %struct.ub_packed_rrset_key* @rrset_cache_lookup(i32 %33, i32 %36, i32 %39, i32 %40, i32 %44, i32 0, i32 %45, i32 0)
  store %struct.ub_packed_rrset_key* %46, %struct.ub_packed_rrset_key** %11, align 8
  %47 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %48 = icmp ne %struct.ub_packed_rrset_key* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %30
  %50 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %51 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %52 = call i64 @nsec_has_type(%struct.ub_packed_rrset_key* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %56 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = call i32 @lock_rw_unlock(i32* %57)
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %11, align 8
  br label %59

59:                                               ; preds = %54, %49, %30
  br label %60

60:                                               ; preds = %59, %5
  %61 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %62 = icmp ne %struct.ub_packed_rrset_key* %61, null
  br i1 %62, label %63, label %98

63:                                               ; preds = %60
  %64 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %65 = load %struct.regional*, %struct.regional** %7, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @packed_rrset_copy_region(%struct.ub_packed_rrset_key* %64, %struct.regional* %65, i32 %66)
  %68 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %69 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %74 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %72, i64 %77
  store i32 %67, i32* %78, align 4
  %79 = icmp ne i32 %67, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %63
  %81 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %82 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  %87 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %88 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %90, align 8
  br label %93

93:                                               ; preds = %80, %63
  %94 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %95 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = call i32 @lock_rw_unlock(i32* %96)
  br label %98

98:                                               ; preds = %93, %60
  ret void
}

declare dso_local %struct.ub_packed_rrset_key* @rrset_cache_lookup(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @nsec_has_type(%struct.ub_packed_rrset_key*, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @packed_rrset_copy_region(%struct.ub_packed_rrset_key*, %struct.regional*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
