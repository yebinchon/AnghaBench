; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_sp804.c_sp804_timer_delay.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_sp804.c_sp804_timer_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp804_timer_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @sp804_timer_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sp804_timer_delay(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sp804_timer_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.sp804_timer_softc*
  store %struct.sp804_timer_softc* %10, %struct.sp804_timer_softc** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.sp804_timer_softc*, %struct.sp804_timer_softc** %5, align 8
  %13 = getelementptr inbounds %struct.sp804_timer_softc, %struct.sp804_timer_softc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %15, 1000000
  %17 = add nsw i32 %16, 1
  %18 = mul nsw i32 %11, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.sp804_timer_softc*, %struct.sp804_timer_softc** %5, align 8
  %20 = getelementptr inbounds %struct.sp804_timer_softc, %struct.sp804_timer_softc* %19, i32 0, i32 0
  %21 = call i32 @sp804_timer_tc_get_timecount(%struct.TYPE_2__* %20)
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %50, %32, %2
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %22
  %26 = load %struct.sp804_timer_softc*, %struct.sp804_timer_softc** %5, align 8
  %27 = getelementptr inbounds %struct.sp804_timer_softc, %struct.sp804_timer_softc* %26, i32 0, i32 0
  %28 = call i32 @sp804_timer_tc_get_timecount(%struct.TYPE_2__* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %22

33:                                               ; preds = %25
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %38, %39
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %50

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = sub i32 -1, %44
  %46 = load i32, i32* %8, align 4
  %47 = add i32 %45, %46
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %43, %37
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %7, align 4
  br label %22

52:                                               ; preds = %22
  ret void
}

declare dso_local i32 @sp804_timer_tc_get_timecount(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
