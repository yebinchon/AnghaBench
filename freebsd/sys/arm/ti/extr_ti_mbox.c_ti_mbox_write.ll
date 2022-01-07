; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_mbox.c_ti_mbox_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_mbox.c_ti_mbox_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_mbox_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"FIFOSTAUS%d stuck\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ti_mbox_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_mbox_write(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ti_mbox_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 500, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 7
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %52

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.ti_mbox_softc* @device_get_softc(i32 %18)
  store %struct.ti_mbox_softc* %19, %struct.ti_mbox_softc** %9, align 8
  %20 = load %struct.ti_mbox_softc*, %struct.ti_mbox_softc** %9, align 8
  %21 = call i32 @TI_MBOX_LOCK(%struct.ti_mbox_softc* %20)
  br label %22

22:                                               ; preds = %34, %17
  %23 = load %struct.ti_mbox_softc*, %struct.ti_mbox_softc** %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @TI_MBOX_FIFOSTATUS(i32 %24)
  %26 = call i32 @ti_mbox_reg_read(%struct.ti_mbox_softc* %23, i32 %25)
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %8, align 4
  %31 = icmp ne i32 %29, 0
  br label %32

32:                                               ; preds = %28, %22
  %33 = phi i1 [ false, %22 ], [ %31, %28 ]
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = call i32 @DELAY(i32 10)
  br label %22

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.ti_mbox_softc*, %struct.ti_mbox_softc** %9, align 8
  %44 = call i32 @TI_MBOX_UNLOCK(%struct.ti_mbox_softc* %43)
  %45 = load i32, i32* @EAGAIN, align 4
  store i32 %45, i32* %4, align 4
  br label %52

46:                                               ; preds = %36
  %47 = load %struct.ti_mbox_softc*, %struct.ti_mbox_softc** %9, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @TI_MBOX_MESSAGE(i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @ti_mbox_reg_write(%struct.ti_mbox_softc* %47, i32 %49, i32 %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %46, %39, %15
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.ti_mbox_softc* @device_get_softc(i32) #1

declare dso_local i32 @TI_MBOX_LOCK(%struct.ti_mbox_softc*) #1

declare dso_local i32 @ti_mbox_reg_read(%struct.ti_mbox_softc*, i32) #1

declare dso_local i32 @TI_MBOX_FIFOSTATUS(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @TI_MBOX_UNLOCK(%struct.ti_mbox_softc*) #1

declare dso_local i32 @ti_mbox_reg_write(%struct.ti_mbox_softc*, i32, i32) #1

declare dso_local i32 @TI_MBOX_MESSAGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
