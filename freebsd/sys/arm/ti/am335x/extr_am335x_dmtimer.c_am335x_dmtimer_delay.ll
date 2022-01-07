; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_dmtimer.c_am335x_dmtimer_delay.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_dmtimer.c_am335x_dmtimer_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am335x_dmtimer_softc = type { i32 }

@DMT_TCRR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @am335x_dmtimer_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am335x_dmtimer_delay(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.am335x_dmtimer_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.am335x_dmtimer_softc*
  store %struct.am335x_dmtimer_softc* %10, %struct.am335x_dmtimer_softc** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %11, 1
  %13 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %5, align 8
  %14 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %15, 1000000
  %17 = mul nsw i32 %12, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %5, align 8
  %19 = load i32, i32* @DMT_TCRR, align 4
  %20 = call i32 @DMTIMER_READ4(%struct.am335x_dmtimer_softc* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %44, %2
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  %25 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %5, align 8
  %26 = load i32, i32* @DMT_TCRR, align 4
  %27 = call i32 @DMTIMER_READ4(%struct.am335x_dmtimer_softc* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %44

37:                                               ; preds = %24
  %38 = load i32, i32* %7, align 4
  %39 = sub i32 -1, %38
  %40 = load i32, i32* %8, align 4
  %41 = add i32 %39, %40
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %37, %31
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %7, align 4
  br label %21

46:                                               ; preds = %21
  ret void
}

declare dso_local i32 @DMTIMER_READ4(%struct.am335x_dmtimer_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
