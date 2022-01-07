; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_l2arc_write_eligible.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_l2arc_write_eligible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@arcstat_l2_write_spa_mismatch = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@arcstat_l2_write_in_l2 = common dso_local global i32 0, align 4
@arcstat_l2_write_hdr_io_in_progress = common dso_local global i32 0, align 4
@arcstat_l2_write_not_cacheable = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_6__*)* @l2arc_write_eligible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2arc_write_eligible(i64 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @arcstat_l2_write_spa_mismatch, align 4
  %13 = call i32 @ARCSTAT_BUMP(i32 %12)
  %14 = load i32, i32* @B_FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %41

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = call i64 @HDR_HAS_L2HDR(%struct.TYPE_6__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @arcstat_l2_write_in_l2, align 4
  %21 = call i32 @ARCSTAT_BUMP(i32 %20)
  %22 = load i32, i32* @B_FALSE, align 4
  store i32 %22, i32* %3, align 4
  br label %41

23:                                               ; preds = %15
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = call i64 @HDR_IO_IN_PROGRESS(%struct.TYPE_6__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* @arcstat_l2_write_hdr_io_in_progress, align 4
  %29 = call i32 @ARCSTAT_BUMP(i32 %28)
  %30 = load i32, i32* @B_FALSE, align 4
  store i32 %30, i32* %3, align 4
  br label %41

31:                                               ; preds = %23
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = call i32 @HDR_L2CACHE(%struct.TYPE_6__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @arcstat_l2_write_not_cacheable, align 4
  %37 = call i32 @ARCSTAT_BUMP(i32 %36)
  %38 = load i32, i32* @B_FALSE, align 4
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @B_TRUE, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %35, %27, %19, %11
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @ARCSTAT_BUMP(i32) #1

declare dso_local i64 @HDR_HAS_L2HDR(%struct.TYPE_6__*) #1

declare dso_local i64 @HDR_IO_IN_PROGRESS(%struct.TYPE_6__*) #1

declare dso_local i32 @HDR_L2CACHE(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
