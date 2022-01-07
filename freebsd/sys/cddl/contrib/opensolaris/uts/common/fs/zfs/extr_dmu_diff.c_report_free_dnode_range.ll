; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_diff.c_report_free_dnode_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_diff.c_report_free_dnode_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diffarg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@DDR_FREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.diffarg*, i64, i64)* @report_free_dnode_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report_free_dnode_range(%struct.diffarg* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.diffarg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.diffarg* %0, %struct.diffarg** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp sle i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load %struct.diffarg*, %struct.diffarg** %5, align 8
  %14 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DDR_FREE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.diffarg*, %struct.diffarg** %5, align 8
  %22 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  %26 = icmp ne i64 %20, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %19, %3
  %28 = load %struct.diffarg*, %struct.diffarg** %5, align 8
  %29 = call i64 @write_record(%struct.diffarg* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.diffarg*, %struct.diffarg** %5, align 8
  %33 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %4, align 4
  br label %53

35:                                               ; preds = %27
  %36 = load i64, i64* @DDR_FREE, align 8
  %37 = load %struct.diffarg*, %struct.diffarg** %5, align 8
  %38 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.diffarg*, %struct.diffarg** %5, align 8
  %42 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i64 %40, i64* %43, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.diffarg*, %struct.diffarg** %5, align 8
  %46 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i64 %44, i64* %47, align 8
  store i32 0, i32* %4, align 4
  br label %53

48:                                               ; preds = %19
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.diffarg*, %struct.diffarg** %5, align 8
  %51 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i64 %49, i64* %52, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %35, %31
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @write_record(%struct.diffarg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
