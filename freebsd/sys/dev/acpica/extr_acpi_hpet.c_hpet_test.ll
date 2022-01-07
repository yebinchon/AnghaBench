; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_hpet.c_hpet_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_hpet.c_hpet_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpet_softc = type { i32, i32 }
%struct.bintime = type { i32 }
%struct.timespec = type { i32, i64 }

@HPET_MAIN_COUNTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%ld.%09ld: %u ... %u = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"time per call: %ld ns\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpet_softc*)* @hpet_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpet_test(%struct.hpet_softc* %0) #0 {
  %2 = alloca %struct.hpet_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bintime, align 4
  %7 = alloca %struct.bintime, align 4
  %8 = alloca %struct.bintime, align 4
  %9 = alloca %struct.timespec, align 8
  store %struct.hpet_softc* %0, %struct.hpet_softc** %2, align 8
  %10 = call i32 @binuptime(%struct.bintime* %6)
  %11 = call i32 @binuptime(%struct.bintime* %6)
  %12 = call i32 @binuptime(%struct.bintime* %7)
  %13 = load %struct.hpet_softc*, %struct.hpet_softc** %2, align 8
  %14 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HPET_MAIN_COUNTER, align 4
  %17 = call i64 @bus_read_4(i32 %15, i32 %16)
  store i64 %17, i64* %4, align 8
  store i32 1, i32* %3, align 4
  br label %18

18:                                               ; preds = %27, %1
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 1000
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load %struct.hpet_softc*, %struct.hpet_softc** %2, align 8
  %23 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @HPET_MAIN_COUNTER, align 4
  %26 = call i64 @bus_read_4(i32 %24, i32 %25)
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %18

30:                                               ; preds = %18
  %31 = call i32 @binuptime(%struct.bintime* %8)
  %32 = load %struct.hpet_softc*, %struct.hpet_softc** %2, align 8
  %33 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @HPET_MAIN_COUNTER, align 4
  %36 = call i64 @bus_read_4(i32 %34, i32 %35)
  store i64 %36, i64* %5, align 8
  %37 = call i32 @bintime_sub(%struct.bintime* %8, %struct.bintime* %7)
  %38 = call i32 @bintime_sub(%struct.bintime* %7, %struct.bintime* %6)
  %39 = call i32 @bintime_sub(%struct.bintime* %8, %struct.bintime* %7)
  %40 = call i32 @bintime2timespec(%struct.bintime* %8, %struct.timespec* %9)
  %41 = load %struct.hpet_softc*, %struct.hpet_softc** %2, align 8
  %42 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* %4, align 8
  %53 = sub nsw i64 %51, %52
  %54 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %48, i64 %49, i64 %50, i64 %53)
  %55 = load %struct.hpet_softc*, %struct.hpet_softc** %2, align 8
  %56 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sdiv i32 %59, 1000
  %61 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  ret void
}

declare dso_local i32 @binuptime(%struct.bintime*) #1

declare dso_local i64 @bus_read_4(i32, i32) #1

declare dso_local i32 @bintime_sub(%struct.bintime*, %struct.bintime*) #1

declare dso_local i32 @bintime2timespec(%struct.bintime*, %struct.timespec*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
