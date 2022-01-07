; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_negative_del_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_negative_del_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash_entry = type { i64, i64 }
%struct.del_info = type { i32, i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.packed_rrset_data = type { i32, i64, i64*, i32 }

@PACKED_RRSET_PARENT_SIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lruhash_entry*, i8*)* @negative_del_rrset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @negative_del_rrset(%struct.lruhash_entry* %0, i8* %1) #0 {
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
  %14 = load %struct.lruhash_entry*, %struct.lruhash_entry** %3, align 8
  %15 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %17, %struct.packed_rrset_data** %7, align 8
  %18 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %19 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PACKED_RRSET_PARENT_SIDE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %2
  %26 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %27 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %52

30:                                               ; preds = %25
  %31 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %32 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %37 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %36, i32 0, i32 2
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load %struct.del_info*, %struct.del_info** %5, align 8
  %44 = getelementptr inbounds %struct.del_info, %struct.del_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %47 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.del_info*, %struct.del_info** %5, align 8
  %49 = getelementptr inbounds %struct.del_info, %struct.del_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %42, %35, %30, %25, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
