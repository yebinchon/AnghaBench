; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_systimer.c_bcm_systimer_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_systimer.c_bcm_systimer_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.systimer = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32)*, i64 }

@SYSTIMER_CS = common dso_local global i32 0, align 4
@FILTER_STRAY = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bcm_systimer_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_systimer_intr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.systimer*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.systimer*
  store %struct.systimer* %7, %struct.systimer** %4, align 8
  %8 = load i32, i32* @SYSTIMER_CS, align 4
  %9 = call i32 @bcm_systimer_tc_read_4(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.systimer*, %struct.systimer** %4, align 8
  %12 = getelementptr inbounds %struct.systimer, %struct.systimer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = shl i32 1, %13
  %15 = and i32 %10, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @FILTER_STRAY, align 4
  store i32 %18, i32* %2, align 4
  br label %51

19:                                               ; preds = %1
  %20 = load i32, i32* @SYSTIMER_CS, align 4
  %21 = load %struct.systimer*, %struct.systimer** %4, align 8
  %22 = getelementptr inbounds %struct.systimer, %struct.systimer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 1, %23
  %25 = call i32 @bcm_systimer_tc_write_4(i32 %20, i32 %24)
  %26 = load %struct.systimer*, %struct.systimer** %4, align 8
  %27 = getelementptr inbounds %struct.systimer, %struct.systimer* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %19
  %31 = load %struct.systimer*, %struct.systimer** %4, align 8
  %32 = getelementptr inbounds %struct.systimer, %struct.systimer* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load %struct.systimer*, %struct.systimer** %4, align 8
  %38 = getelementptr inbounds %struct.systimer, %struct.systimer* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %39, align 8
  %41 = load %struct.systimer*, %struct.systimer** %4, align 8
  %42 = getelementptr inbounds %struct.systimer, %struct.systimer* %41, i32 0, i32 1
  %43 = load %struct.systimer*, %struct.systimer** %4, align 8
  %44 = getelementptr inbounds %struct.systimer, %struct.systimer* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 %40(%struct.TYPE_2__* %42, i32 %46)
  br label %48

48:                                               ; preds = %36, %30
  br label %49

49:                                               ; preds = %48, %19
  %50 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %17
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @bcm_systimer_tc_read_4(i32) #1

declare dso_local i32 @bcm_systimer_tc_write_4(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
