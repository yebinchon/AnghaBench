; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc.c_pmc_get_driver_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc.c_pmc_get_driver_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_driverstats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pmc_op_getdriverstats = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@GETDRIVERSTATS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmc_get_driver_stats(%struct.pmc_driverstats* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pmc_driverstats*, align 8
  %4 = alloca %struct.pmc_op_getdriverstats, align 4
  store %struct.pmc_driverstats* %0, %struct.pmc_driverstats** %3, align 8
  %5 = load i32, i32* @GETDRIVERSTATS, align 4
  %6 = call i64 @PMC_CALL(i32 %5, %struct.pmc_op_getdriverstats* %4)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %42

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.pmc_op_getdriverstats, %struct.pmc_op_getdriverstats* %4, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.pmc_driverstats*, %struct.pmc_driverstats** %3, align 8
  %13 = getelementptr inbounds %struct.pmc_driverstats, %struct.pmc_driverstats* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 4
  %14 = getelementptr inbounds %struct.pmc_op_getdriverstats, %struct.pmc_op_getdriverstats* %4, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.pmc_driverstats*, %struct.pmc_driverstats** %3, align 8
  %17 = getelementptr inbounds %struct.pmc_driverstats, %struct.pmc_driverstats* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 4
  %18 = getelementptr inbounds %struct.pmc_op_getdriverstats, %struct.pmc_op_getdriverstats* %4, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pmc_driverstats*, %struct.pmc_driverstats** %3, align 8
  %21 = getelementptr inbounds %struct.pmc_driverstats, %struct.pmc_driverstats* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = getelementptr inbounds %struct.pmc_op_getdriverstats, %struct.pmc_op_getdriverstats* %4, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pmc_driverstats*, %struct.pmc_driverstats** %3, align 8
  %25 = getelementptr inbounds %struct.pmc_driverstats, %struct.pmc_driverstats* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = getelementptr inbounds %struct.pmc_op_getdriverstats, %struct.pmc_op_getdriverstats* %4, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pmc_driverstats*, %struct.pmc_driverstats** %3, align 8
  %29 = getelementptr inbounds %struct.pmc_driverstats, %struct.pmc_driverstats* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = getelementptr inbounds %struct.pmc_op_getdriverstats, %struct.pmc_op_getdriverstats* %4, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pmc_driverstats*, %struct.pmc_driverstats** %3, align 8
  %33 = getelementptr inbounds %struct.pmc_driverstats, %struct.pmc_driverstats* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds %struct.pmc_op_getdriverstats, %struct.pmc_op_getdriverstats* %4, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pmc_driverstats*, %struct.pmc_driverstats** %3, align 8
  %37 = getelementptr inbounds %struct.pmc_driverstats, %struct.pmc_driverstats* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds %struct.pmc_op_getdriverstats, %struct.pmc_op_getdriverstats* %4, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pmc_driverstats*, %struct.pmc_driverstats** %3, align 8
  %41 = getelementptr inbounds %struct.pmc_driverstats, %struct.pmc_driverstats* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %9, %8
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @PMC_CALL(i32, %struct.pmc_op_getdriverstats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
