; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_grab_nsec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_grab_nsec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.rrset_cache = type { i32 }
%struct.regional = type { i32 }
%struct.packed_rrset_data = type { i64, i64, i32 }

@sec_status_secure = common dso_local global i64 0, align 8
@sec_status_unchecked = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ub_packed_rrset_key* (%struct.rrset_cache*, i32*, i64, i64, i64, i32, %struct.regional*, i32, i64, i32)* @grab_nsec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ub_packed_rrset_key* @grab_nsec(%struct.rrset_cache* %0, i32* %1, i64 %2, i64 %3, i64 %4, i32 %5, %struct.regional* %6, i32 %7, i64 %8, i32 %9) #0 {
  %11 = alloca %struct.ub_packed_rrset_key*, align 8
  %12 = alloca %struct.rrset_cache*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.regional*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.ub_packed_rrset_key*, align 8
  %23 = alloca %struct.ub_packed_rrset_key*, align 8
  %24 = alloca %struct.packed_rrset_data*, align 8
  store %struct.rrset_cache* %0, %struct.rrset_cache** %12, align 8
  store i32* %1, i32** %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i32 %5, i32* %17, align 4
  store %struct.regional* %6, %struct.regional** %18, align 8
  store i32 %7, i32* %19, align 4
  store i64 %8, i64* %20, align 8
  store i32 %9, i32* %21, align 4
  %25 = load %struct.rrset_cache*, %struct.rrset_cache** %12, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = load i64, i64* %14, align 8
  %28 = load i64, i64* %15, align 8
  %29 = load i64, i64* %16, align 8
  %30 = load i32, i32* %17, align 4
  %31 = load i32, i32* %21, align 4
  %32 = call %struct.ub_packed_rrset_key* @rrset_cache_lookup(%struct.rrset_cache* %25, i32* %26, i64 %27, i64 %28, i64 %29, i32 %30, i32 %31, i32 0)
  store %struct.ub_packed_rrset_key* %32, %struct.ub_packed_rrset_key** %23, align 8
  %33 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %23, align 8
  %34 = icmp ne %struct.ub_packed_rrset_key* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %10
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %11, align 8
  br label %110

36:                                               ; preds = %10
  %37 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %23, align 8
  %38 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %41, %struct.packed_rrset_data** %24, align 8
  %42 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %24, align 8
  %43 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %21, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %36
  %48 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %23, align 8
  %49 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @lock_rw_unlock(i32* %50)
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %11, align 8
  br label %110

52:                                               ; preds = %36
  %53 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %24, align 8
  %54 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @sec_status_secure, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %74, label %58

58:                                               ; preds = %52
  %59 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %24, align 8
  %60 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @sec_status_unchecked, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %24, align 8
  %66 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64, %58
  %70 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %23, align 8
  %71 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @lock_rw_unlock(i32* %72)
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %11, align 8
  br label %110

74:                                               ; preds = %64, %52
  %75 = load i32, i32* %19, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %74
  %78 = load i64, i64* %15, align 8
  %79 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %23, align 8
  %83 = load i64, i64* %20, align 8
  %84 = call i64 @nsec_has_type(%struct.ub_packed_rrset_key* %82, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %81, %77
  %87 = load i64, i64* %15, align 8
  %88 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %23, align 8
  %92 = load i64, i64* %20, align 8
  %93 = call i32 @nsec3_no_type(%struct.ub_packed_rrset_key* %91, i64 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90, %81
  %96 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %23, align 8
  %97 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = call i32 @lock_rw_unlock(i32* %98)
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %11, align 8
  br label %110

100:                                              ; preds = %90, %86, %74
  %101 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %23, align 8
  %102 = load %struct.regional*, %struct.regional** %18, align 8
  %103 = load i32, i32* %21, align 4
  %104 = call %struct.ub_packed_rrset_key* @packed_rrset_copy_region(%struct.ub_packed_rrset_key* %101, %struct.regional* %102, i32 %103)
  store %struct.ub_packed_rrset_key* %104, %struct.ub_packed_rrset_key** %22, align 8
  %105 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %23, align 8
  %106 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = call i32 @lock_rw_unlock(i32* %107)
  %109 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %22, align 8
  store %struct.ub_packed_rrset_key* %109, %struct.ub_packed_rrset_key** %11, align 8
  br label %110

110:                                              ; preds = %100, %95, %69, %47, %35
  %111 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  ret %struct.ub_packed_rrset_key* %111
}

declare dso_local %struct.ub_packed_rrset_key* @rrset_cache_lookup(%struct.rrset_cache*, i32*, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i64 @nsec_has_type(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @nsec3_no_type(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local %struct.ub_packed_rrset_key* @packed_rrset_copy_region(%struct.ub_packed_rrset_key*, %struct.regional*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
