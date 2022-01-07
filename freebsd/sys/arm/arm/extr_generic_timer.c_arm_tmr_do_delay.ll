; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_generic_timer.c_arm_tmr_do_delay.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_generic_timer.c_arm_tmr_do_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.arm_tmr_softc = type { i32, i64 (i32)* }

@arm_tmr_timecount = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @arm_tmr_do_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_tmr_do_delay(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.arm_tmr_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.arm_tmr_softc*
  store %struct.arm_tmr_softc* %11, %struct.arm_tmr_softc** %5, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arm_tmr_timecount, i32 0, i32 0), align 4
  %13 = sdiv i32 %12, 1000000
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %7, align 4
  %17 = udiv i32 -2147483648, %16
  %18 = icmp uge i32 %15, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = udiv i32 -2147483648, %20
  %22 = sub i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %5, align 8
  %29 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %28, i32 0, i32 1
  %30 = load i64 (i32)*, i64 (i32)** %29, align 8
  %31 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %5, align 8
  %32 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 %30(i32 %33)
  store i64 %34, i64* %8, align 8
  br label %35

35:                                               ; preds = %38, %27
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %5, align 8
  %40 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %39, i32 0, i32 1
  %41 = load i64 (i32)*, i64 (i32)** %40, align 8
  %42 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %5, align 8
  %43 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 %41(i32 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %8, align 8
  %48 = sub nsw i64 %46, %47
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load i64, i64* %9, align 8
  store i64 %52, i64* %8, align 8
  br label %35

53:                                               ; preds = %35
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
