; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_pmic.c_am335x_pmic_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_pmic.c_am335x_pmic_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am335x_pmic_softc = type { i32 }
%struct.tps65217_status_reg = type { i32, i64 }
%struct.tps65217_int_reg = type { i64, i64 }

@TPS65217_INT_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Cannot read interrupt register\0A\00", align 1
@TPS65217_STATUS_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Cannot read status register\0A\00", align 1
@RB_POWEROFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"notify=0x%02x\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ACPI\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ACAD\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @am335x_pmic_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am335x_pmic_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.am335x_pmic_softc*, align 8
  %4 = alloca %struct.tps65217_status_reg, align 8
  %5 = alloca %struct.tps65217_int_reg, align 8
  %6 = alloca i32, align 4
  %7 = alloca [16 x i8], align 16
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.am335x_pmic_softc*
  store %struct.am335x_pmic_softc* %9, %struct.am335x_pmic_softc** %3, align 8
  %10 = call i32 (...) @THREAD_SLEEPING_OK()
  %11 = load %struct.am335x_pmic_softc*, %struct.am335x_pmic_softc** %3, align 8
  %12 = getelementptr inbounds %struct.am335x_pmic_softc, %struct.am335x_pmic_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TPS65217_INT_REG, align 4
  %15 = bitcast %struct.tps65217_int_reg* %5 to i32*
  %16 = call i32 @am335x_pmic_read(i32 %13, i32 %14, i32* %15, i32 1)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.am335x_pmic_softc*, %struct.am335x_pmic_softc** %3, align 8
  %21 = getelementptr inbounds %struct.am335x_pmic_softc, %struct.am335x_pmic_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 (...) @THREAD_NO_SLEEPING()
  br label %64

25:                                               ; preds = %1
  %26 = load %struct.am335x_pmic_softc*, %struct.am335x_pmic_softc** %3, align 8
  %27 = getelementptr inbounds %struct.am335x_pmic_softc, %struct.am335x_pmic_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TPS65217_STATUS_REG, align 4
  %30 = bitcast %struct.tps65217_status_reg* %4 to i32*
  %31 = call i32 @am335x_pmic_read(i32 %28, i32 %29, i32* %30, i32 1)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load %struct.am335x_pmic_softc*, %struct.am335x_pmic_softc** %3, align 8
  %36 = getelementptr inbounds %struct.am335x_pmic_softc, %struct.am335x_pmic_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 (...) @THREAD_NO_SLEEPING()
  br label %64

40:                                               ; preds = %25
  %41 = call i32 (...) @THREAD_NO_SLEEPING()
  %42 = getelementptr inbounds %struct.tps65217_int_reg, %struct.tps65217_int_reg* %5, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.tps65217_status_reg, %struct.tps65217_status_reg* %4, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @RB_POWEROFF, align 4
  %51 = call i32 @shutdown_nice(i32 %50)
  br label %52

52:                                               ; preds = %49, %45, %40
  %53 = getelementptr inbounds %struct.tps65217_int_reg, %struct.tps65217_int_reg* %5, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %58 = getelementptr inbounds %struct.tps65217_status_reg, %struct.tps65217_status_reg* %4, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @snprintf(i8* %57, i32 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %62 = load i32, i32* @M_NOWAIT, align 4
  %63 = call i32 @devctl_notify_f(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %61, i32 %62)
  br label %64

64:                                               ; preds = %19, %34, %56, %52
  ret void
}

declare dso_local i32 @THREAD_SLEEPING_OK(...) #1

declare dso_local i32 @am335x_pmic_read(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @THREAD_NO_SLEEPING(...) #1

declare dso_local i32 @shutdown_nice(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @devctl_notify_f(i8*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
