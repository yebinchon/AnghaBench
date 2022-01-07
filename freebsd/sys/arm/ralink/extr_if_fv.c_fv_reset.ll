; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fv_softc = type { i32 }

@CSR_BUSMODE = common dso_local global i32 0, align 4
@BUSMODE_SWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"reset time out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fv_softc*)* @fv_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fv_reset(%struct.fv_softc* %0) #0 {
  %2 = alloca %struct.fv_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.fv_softc* %0, %struct.fv_softc** %2, align 8
  %4 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %5 = load i32, i32* @CSR_BUSMODE, align 4
  %6 = load i32, i32* @BUSMODE_SWR, align 4
  %7 = call i32 @CSR_WRITE_4(%struct.fv_softc* %4, i32 %5, i32 %6)
  %8 = call i32 @DELAY(i32 1000)
  %9 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %10 = load i32, i32* @CSR_BUSMODE, align 4
  %11 = call i32 @CSR_WRITE_4(%struct.fv_softc* %9, i32 %10, i32 0)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %25, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 1000
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = call i32 @DELAY(i32 1000)
  %17 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %18 = load i32, i32* @CSR_BUSMODE, align 4
  %19 = call i32 @CSR_READ_4(%struct.fv_softc* %17, i32 %18)
  %20 = load i32, i32* @BUSMODE_SWR, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %28

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %12

28:                                               ; preds = %23, %12
  %29 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %30 = load i32, i32* @CSR_BUSMODE, align 4
  %31 = call i32 @CSR_READ_4(%struct.fv_softc* %29, i32 %30)
  %32 = load i32, i32* @BUSMODE_SWR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %37 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %35, %28
  %41 = call i32 @DELAY(i32 1000)
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.fv_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.fv_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
