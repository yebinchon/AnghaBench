; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_sa_guidinfo_record.c_sm_assigned_guid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_sa_guidinfo_record.c_sm_assigned_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sm_assigned_guid.uniq_count = internal global i64 0, align 8
@OSM_VENDOR_ID_OPENIB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @sm_assigned_guid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm_assigned_guid(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* @sm_assigned_guid.uniq_count, align 8
  %5 = add nsw i64 %4, 1
  store i64 %5, i64* @sm_assigned_guid.uniq_count, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i64, i64* @sm_assigned_guid.uniq_count, align 8
  %9 = add nsw i64 %8, -1
  store i64 %9, i64* @sm_assigned_guid.uniq_count, align 8
  store i32 0, i32* %2, align 4
  br label %22

10:                                               ; preds = %1
  %11 = load i64, i64* @sm_assigned_guid.uniq_count, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i64, i64* %3, align 8
  %14 = trunc i64 %13 to i32
  %15 = shl i32 %14, 32
  %16 = or i32 %12, %15
  %17 = load i64, i64* @OSM_VENDOR_ID_OPENIB, align 8
  %18 = trunc i64 %17 to i32
  %19 = shl i32 %18, 40
  %20 = or i32 %16, %19
  %21 = call i32 @cl_hton64(i32 %20)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %10, %7
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @cl_hton64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
