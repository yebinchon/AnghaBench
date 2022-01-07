; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_rsb.c_rsb_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_rsb.c_rsb_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsb_softc = type { i32 }

@RSB_CTRL = common dso_local global i32 0, align 4
@SOFT_RESET = common dso_local global i32 0, align 4
@RSB_RESET_RETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"soft reset timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@IIC_ENOADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @rsb_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsb_reset(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rsb_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.rsb_softc* @device_get_softc(i32 %12)
  store %struct.rsb_softc* %13, %struct.rsb_softc** %10, align 8
  %14 = load %struct.rsb_softc*, %struct.rsb_softc** %10, align 8
  %15 = call i32 @RSB_LOCK(%struct.rsb_softc* %14)
  %16 = load %struct.rsb_softc*, %struct.rsb_softc** %10, align 8
  %17 = load i32, i32* @RSB_CTRL, align 4
  %18 = load i32, i32* @SOFT_RESET, align 4
  %19 = call i32 @RSB_WRITE(%struct.rsb_softc* %16, i32 %17, i32 %18)
  %20 = load i32, i32* @RSB_RESET_RETRY, align 4
  store i32 %20, i32* %11, align 4
  br label %21

21:                                               ; preds = %33, %4
  %22 = load i32, i32* %11, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load %struct.rsb_softc*, %struct.rsb_softc** %10, align 8
  %26 = load i32, i32* @RSB_CTRL, align 4
  %27 = call i32 @RSB_READ(%struct.rsb_softc* %25, i32 %26)
  %28 = load i32, i32* @SOFT_RESET, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %36

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %11, align 4
  br label %21

36:                                               ; preds = %31, %21
  %37 = load %struct.rsb_softc*, %struct.rsb_softc** %10, align 8
  %38 = call i32 @RSB_UNLOCK(%struct.rsb_softc* %37)
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %44, i32* %5, align 4
  br label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @IIC_ENOADDR, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.rsb_softc* @device_get_softc(i32) #1

declare dso_local i32 @RSB_LOCK(%struct.rsb_softc*) #1

declare dso_local i32 @RSB_WRITE(%struct.rsb_softc*, i32, i32) #1

declare dso_local i32 @RSB_READ(%struct.rsb_softc*, i32) #1

declare dso_local i32 @RSB_UNLOCK(%struct.rsb_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
