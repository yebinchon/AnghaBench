; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl_vreg.c_twl_vreg_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl_vreg.c_twl_vreg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl_vreg_softc = type { i32, i32 }

@twl4030_regulators = common dso_local global i32 0, align 4
@twl6030_regulators = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @twl_vreg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl_vreg_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.twl_vreg_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = ptrtoint i8* %4 to i32
  %6 = call %struct.twl_vreg_softc* @device_get_softc(i32 %5)
  store %struct.twl_vreg_softc* %6, %struct.twl_vreg_softc** %3, align 8
  %7 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %8 = call i32 @TWL_VREG_XLOCK(%struct.twl_vreg_softc* %7)
  %9 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %10 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @twl_is_4030(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %16 = load i32, i32* @twl4030_regulators, align 4
  %17 = call i32 @twl_vreg_add_regulators(%struct.twl_vreg_softc* %15, i32 %16)
  br label %35

18:                                               ; preds = %1
  %19 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %20 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @twl_is_6030(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %26 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @twl_is_6025(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24, %18
  %31 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %32 = load i32, i32* @twl6030_regulators, align 4
  %33 = call i32 @twl_vreg_add_regulators(%struct.twl_vreg_softc* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %24
  br label %35

35:                                               ; preds = %34, %14
  %36 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %37 = call i32 @TWL_VREG_XUNLOCK(%struct.twl_vreg_softc* %36)
  %38 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %39 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %38, i32 0, i32 0
  %40 = call i32 @config_intrhook_disestablish(i32* %39)
  ret void
}

declare dso_local %struct.twl_vreg_softc* @device_get_softc(i32) #1

declare dso_local i32 @TWL_VREG_XLOCK(%struct.twl_vreg_softc*) #1

declare dso_local i64 @twl_is_4030(i32) #1

declare dso_local i32 @twl_vreg_add_regulators(%struct.twl_vreg_softc*, i32) #1

declare dso_local i64 @twl_is_6030(i32) #1

declare dso_local i64 @twl_is_6025(i32) #1

declare dso_local i32 @TWL_VREG_XUNLOCK(%struct.twl_vreg_softc*) #1

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
