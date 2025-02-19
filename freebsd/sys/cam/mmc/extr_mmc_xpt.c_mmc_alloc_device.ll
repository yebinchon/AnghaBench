; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/mmc/extr_mmc_xpt.c_mmc_alloc_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/mmc/extr_mmc_xpt.c_mmc_alloc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_ed = type { i64, i32*, i64, i64, i32, i64, i64, i32* }
%struct.cam_eb = type { i32 }
%struct.cam_et = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"mmc_alloc_device()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cam_ed* (%struct.cam_eb*, %struct.cam_et*, i32)* @mmc_alloc_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cam_ed* @mmc_alloc_device(%struct.cam_eb* %0, %struct.cam_et* %1, i32 %2) #0 {
  %4 = alloca %struct.cam_ed*, align 8
  %5 = alloca %struct.cam_eb*, align 8
  %6 = alloca %struct.cam_et*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cam_ed*, align 8
  store %struct.cam_eb* %0, %struct.cam_eb** %5, align 8
  store %struct.cam_et* %1, %struct.cam_et** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.cam_eb*, %struct.cam_eb** %5, align 8
  %11 = load %struct.cam_et*, %struct.cam_et** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.cam_ed* @xpt_alloc_device(%struct.cam_eb* %10, %struct.cam_et* %11, i32 %12)
  store %struct.cam_ed* %13, %struct.cam_ed** %8, align 8
  %14 = load %struct.cam_ed*, %struct.cam_ed** %8, align 8
  %15 = icmp eq %struct.cam_ed* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.cam_ed* null, %struct.cam_ed** %4, align 8
  br label %36

17:                                               ; preds = %3
  %18 = load %struct.cam_ed*, %struct.cam_ed** %8, align 8
  %19 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %18, i32 0, i32 7
  store i32* null, i32** %19, align 8
  %20 = load %struct.cam_ed*, %struct.cam_ed** %8, align 8
  %21 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load %struct.cam_ed*, %struct.cam_ed** %8, align 8
  %23 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.cam_ed*, %struct.cam_ed** %8, align 8
  %25 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %24, i32 0, i32 4
  %26 = call i32 @bzero(i32* %25, i32 4)
  %27 = load %struct.cam_ed*, %struct.cam_ed** %8, align 8
  %28 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.cam_ed*, %struct.cam_ed** %8, align 8
  %30 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.cam_ed*, %struct.cam_ed** %8, align 8
  %32 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = load %struct.cam_ed*, %struct.cam_ed** %8, align 8
  %34 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.cam_ed*, %struct.cam_ed** %8, align 8
  store %struct.cam_ed* %35, %struct.cam_ed** %4, align 8
  br label %36

36:                                               ; preds = %17, %16
  %37 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  ret %struct.cam_ed* %37
}

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.cam_ed* @xpt_alloc_device(%struct.cam_eb*, %struct.cam_et*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
