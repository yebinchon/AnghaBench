; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl_clks.c_twl_clks_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl_clks.c_twl_clks_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl_clks_softc = type { i32, i32 }

@twl4030_clocks = common dso_local global i32 0, align 4
@twl6030_clocks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @twl_clks_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl_clks_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.twl_clks_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = ptrtoint i8* %4 to i32
  %6 = call %struct.twl_clks_softc* @device_get_softc(i32 %5)
  store %struct.twl_clks_softc* %6, %struct.twl_clks_softc** %3, align 8
  %7 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %3, align 8
  %8 = getelementptr inbounds %struct.twl_clks_softc, %struct.twl_clks_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @twl_is_4030(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %3, align 8
  %14 = load i32, i32* @twl4030_clocks, align 4
  %15 = call i32 @twl_clks_add_clocks(%struct.twl_clks_softc* %13, i32 %14)
  br label %33

16:                                               ; preds = %1
  %17 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %3, align 8
  %18 = getelementptr inbounds %struct.twl_clks_softc, %struct.twl_clks_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @twl_is_6030(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %3, align 8
  %24 = getelementptr inbounds %struct.twl_clks_softc, %struct.twl_clks_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @twl_is_6025(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22, %16
  %29 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %3, align 8
  %30 = load i32, i32* @twl6030_clocks, align 4
  %31 = call i32 @twl_clks_add_clocks(%struct.twl_clks_softc* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %22
  br label %33

33:                                               ; preds = %32, %12
  %34 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %3, align 8
  %35 = getelementptr inbounds %struct.twl_clks_softc, %struct.twl_clks_softc* %34, i32 0, i32 0
  %36 = call i32 @config_intrhook_disestablish(i32* %35)
  ret void
}

declare dso_local %struct.twl_clks_softc* @device_get_softc(i32) #1

declare dso_local i64 @twl_is_4030(i32) #1

declare dso_local i32 @twl_clks_add_clocks(%struct.twl_clks_softc*, i32) #1

declare dso_local i64 @twl_is_6030(i32) #1

declare dso_local i64 @twl_is_6025(i32) #1

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
