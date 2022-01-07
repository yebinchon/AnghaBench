; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_hash_matches_owner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_hash_matches_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsec3_filter = type { i32 }
%struct.nsec3_cached_hash = type { i64, i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nsec3_filter*, %struct.nsec3_cached_hash*, %struct.ub_packed_rrset_key*)* @nsec3_hash_matches_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsec3_hash_matches_owner(%struct.nsec3_filter* %0, %struct.nsec3_cached_hash* %1, %struct.ub_packed_rrset_key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nsec3_filter*, align 8
  %6 = alloca %struct.nsec3_cached_hash*, align 8
  %7 = alloca %struct.ub_packed_rrset_key*, align 8
  %8 = alloca i64*, align 8
  store %struct.nsec3_filter* %0, %struct.nsec3_filter** %5, align 8
  store %struct.nsec3_cached_hash* %1, %struct.nsec3_cached_hash** %6, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %7, align 8
  %9 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %10 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  store i64* %12, i64** %8, align 8
  %13 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %6, align 8
  %14 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %3
  %18 = load i64*, i64** %8, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %6, align 8
  %22 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %17
  %26 = load i64*, i64** %8, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %6, align 8
  %29 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %6, align 8
  %32 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @label_compare_lower(i64* %27, i32 %30, i64 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %25
  %37 = load i64*, i64** %8, align 8
  %38 = load i64*, i64** %8, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i64, i64* %37, i64 %40
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load %struct.nsec3_filter*, %struct.nsec3_filter** %5, align 8
  %44 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @query_dname_compare(i64* %42, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %50

49:                                               ; preds = %36, %25, %17, %3
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %48
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @label_compare_lower(i64*, i32, i64) #1

declare dso_local i64 @query_dname_compare(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
