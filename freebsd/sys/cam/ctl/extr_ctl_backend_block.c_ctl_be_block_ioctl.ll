; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_block_softc = type { i32 }
%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.ctl_lun_req = type { i32, i32, i32 }

@backend_block_softc = common dso_local global %struct.ctl_be_block_softc zeroinitializer, align 4
@CTL_LUN_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid LUN request type %d\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @ctl_be_block_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_be_block_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.ctl_be_block_softc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ctl_lun_req*, align 8
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  store %struct.ctl_be_block_softc* @backend_block_softc, %struct.ctl_be_block_softc** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %45 [
    i32 128, label %15
  ]

15:                                               ; preds = %5
  %16 = load i64, i64* %8, align 8
  %17 = inttoptr i64 %16 to %struct.ctl_lun_req*
  store %struct.ctl_lun_req* %17, %struct.ctl_lun_req** %13, align 8
  %18 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %13, align 8
  %19 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %33 [
    i32 131, label %21
    i32 129, label %25
    i32 130, label %29
  ]

21:                                               ; preds = %15
  %22 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %11, align 8
  %23 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %13, align 8
  %24 = call i32 @ctl_be_block_create(%struct.ctl_be_block_softc* %22, %struct.ctl_lun_req* %23)
  store i32 %24, i32* %12, align 4
  br label %44

25:                                               ; preds = %15
  %26 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %11, align 8
  %27 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %13, align 8
  %28 = call i32 @ctl_be_block_rm(%struct.ctl_be_block_softc* %26, %struct.ctl_lun_req* %27)
  store i32 %28, i32* %12, align 4
  br label %44

29:                                               ; preds = %15
  %30 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %11, align 8
  %31 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %13, align 8
  %32 = call i32 @ctl_be_block_modify(%struct.ctl_be_block_softc* %30, %struct.ctl_lun_req* %31)
  store i32 %32, i32* %12, align 4
  br label %44

33:                                               ; preds = %15
  %34 = load i32, i32* @CTL_LUN_ERROR, align 4
  %35 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %13, align 8
  %36 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %13, align 8
  %38 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %13, align 8
  %41 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @snprintf(i32 %39, i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %33, %29, %25, %21
  br label %47

45:                                               ; preds = %5
  %46 = load i32, i32* @ENOTTY, align 4
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %45, %44
  %48 = load i32, i32* %12, align 4
  ret i32 %48
}

declare dso_local i32 @ctl_be_block_create(%struct.ctl_be_block_softc*, %struct.ctl_lun_req*) #1

declare dso_local i32 @ctl_be_block_rm(%struct.ctl_be_block_softc*, %struct.ctl_lun_req*) #1

declare dso_local i32 @ctl_be_block_modify(%struct.ctl_be_block_softc*, %struct.ctl_lun_req*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
