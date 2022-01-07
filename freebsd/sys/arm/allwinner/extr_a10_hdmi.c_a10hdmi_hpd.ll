; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmi.c_a10hdmi_hpd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmi.c_a10hdmi_hpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10hdmi_softc = type { i32 }

@HDMI_HPD = common dso_local global i32 0, align 4
@HPD_DET = common dso_local global i32 0, align 4
@hdmi_event = common dso_local global i32 0, align 4
@HDMI_EVENT_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @a10hdmi_hpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a10hdmi_hpd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.a10hdmi_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.a10hdmi_softc* @device_get_softc(i8* %7)
  store %struct.a10hdmi_softc* %8, %struct.a10hdmi_softc** %3, align 8
  %9 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %3, align 8
  %10 = load i32, i32* @HDMI_HPD, align 4
  %11 = call i32 @HDMI_READ(%struct.a10hdmi_softc* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @HPD_DET, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @HPD_DET, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32, i32* @hdmi_event, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @HDMI_EVENT_CONNECTED, align 4
  %21 = call i32 @EVENTHANDLER_INVOKE(i32 %18, i8* %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %3, align 8
  %24 = getelementptr inbounds %struct.a10hdmi_softc, %struct.a10hdmi_softc* %23, i32 0, i32 0
  %25 = call i32 @config_intrhook_disestablish(i32* %24)
  ret void
}

declare dso_local %struct.a10hdmi_softc* @device_get_softc(i8*) #1

declare dso_local i32 @HDMI_READ(%struct.a10hdmi_softc*, i32) #1

declare dso_local i32 @EVENTHANDLER_INVOKE(i32, i8*, i32) #1

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
