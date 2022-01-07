; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_sdxc-m8.c_aml8726_sdxc_busy_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_sdxc-m8.c_aml8726_sdxc_busy_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_sdxc_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@AML_SDXC_BUSY_POLL_INTVL = common dso_local global i64 0, align 8
@AML_SDXC_STATUS_REG = common dso_local global i32 0, align 4
@AML_SDXC_STATUS_DAT0 = common dso_local global i32 0, align 4
@AML_SDXC_BUSY_TIMEOUT = common dso_local global i64 0, align 8
@MMC_ERR_NONE = common dso_local global i64 0, align 8
@MMC_ERR_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @aml8726_sdxc_busy_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aml8726_sdxc_busy_check(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.aml8726_sdxc_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.aml8726_sdxc_softc*
  store %struct.aml8726_sdxc_softc* %6, %struct.aml8726_sdxc_softc** %3, align 8
  %7 = load i64, i64* @AML_SDXC_BUSY_POLL_INTVL, align 8
  %8 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %9 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, %7
  store i64 %12, i64* %10, align 8
  %13 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %14 = load i32, i32* @AML_SDXC_STATUS_REG, align 4
  %15 = call i32 @CSR_READ_4(%struct.aml8726_sdxc_softc* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @AML_SDXC_STATUS_DAT0, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %1
  %21 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %22 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AML_SDXC_BUSY_TIMEOUT, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %29 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %28, i32 0, i32 1
  %30 = load i64, i64* @AML_SDXC_BUSY_POLL_INTVL, align 8
  %31 = call i32 @msecs_to_ticks(i64 %30)
  %32 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %33 = call i32 @callout_reset(i32* %29, i32 %31, void (i8*)* @aml8726_sdxc_busy_check, %struct.aml8726_sdxc_softc* %32)
  %34 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %35 = call i32 @AML_SDXC_UNLOCK(%struct.aml8726_sdxc_softc* %34)
  br label %56

36:                                               ; preds = %20
  %37 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %38 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MMC_ERR_NONE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i64, i64* @MMC_ERR_TIMEOUT, align 8
  %45 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %46 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i64 %44, i64* %47, align 8
  br label %48

48:                                               ; preds = %43, %36
  br label %49

49:                                               ; preds = %48, %1
  %50 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %51 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %52 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @aml8726_sdxc_finish_command(%struct.aml8726_sdxc_softc* %50, i64 %54)
  br label %56

56:                                               ; preds = %49, %27
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.aml8726_sdxc_softc*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.aml8726_sdxc_softc*) #1

declare dso_local i32 @msecs_to_ticks(i64) #1

declare dso_local i32 @AML_SDXC_UNLOCK(%struct.aml8726_sdxc_softc*) #1

declare dso_local i32 @aml8726_sdxc_finish_command(%struct.aml8726_sdxc_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
