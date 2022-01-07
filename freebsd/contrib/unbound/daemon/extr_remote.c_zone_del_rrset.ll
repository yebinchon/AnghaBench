; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_zone_del_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_zone_del_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash_entry = type { i64, i64 }
%struct.del_info = type { i64, i32, i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.packed_rrset_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lruhash_entry*, i8*)* @zone_del_rrset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zone_del_rrset(%struct.lruhash_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.lruhash_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.del_info*, align 8
  %6 = alloca %struct.ub_packed_rrset_key*, align 8
  %7 = alloca %struct.packed_rrset_data*, align 8
  store %struct.lruhash_entry* %0, %struct.lruhash_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.del_info*
  store %struct.del_info* %9, %struct.del_info** %5, align 8
  %10 = load %struct.lruhash_entry*, %struct.lruhash_entry** %3, align 8
  %11 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ub_packed_rrset_key*
  store %struct.ub_packed_rrset_key* %13, %struct.ub_packed_rrset_key** %6, align 8
  %14 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %15 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.del_info*, %struct.del_info** %5, align 8
  %19 = getelementptr inbounds %struct.del_info, %struct.del_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @dname_subdomain_c(i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %2
  %24 = load %struct.lruhash_entry*, %struct.lruhash_entry** %3, align 8
  %25 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %27, %struct.packed_rrset_data** %7, align 8
  %28 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %29 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.del_info*, %struct.del_info** %5, align 8
  %32 = getelementptr inbounds %struct.del_info, %struct.del_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %23
  %36 = load %struct.del_info*, %struct.del_info** %5, align 8
  %37 = getelementptr inbounds %struct.del_info, %struct.del_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %40 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.del_info*, %struct.del_info** %5, align 8
  %42 = getelementptr inbounds %struct.del_info, %struct.del_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %35, %23
  br label %46

46:                                               ; preds = %45, %2
  ret void
}

declare dso_local i64 @dname_subdomain_c(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
