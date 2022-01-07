; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_host1x.c_host1x_register_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_host1x.c_host1x_register_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_softc = type { i32 }
%struct.client_info = type { i64, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@list_e = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @host1x_register_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @host1x_register_client(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.host1x_softc*, align 8
  %6 = alloca %struct.client_info*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.host1x_softc* @device_get_softc(i32 %7)
  store %struct.host1x_softc* %8, %struct.host1x_softc** %5, align 8
  %9 = load i32, i32* @M_DEVBUF, align 4
  %10 = load i32, i32* @M_WAITOK, align 4
  %11 = load i32, i32* @M_ZERO, align 4
  %12 = or i32 %10, %11
  %13 = call %struct.client_info* @malloc(i32 16, i32 %9, i32 %12)
  store %struct.client_info* %13, %struct.client_info** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.client_info*, %struct.client_info** %6, align 8
  %16 = getelementptr inbounds %struct.client_info, %struct.client_info* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.client_info*, %struct.client_info** %6, align 8
  %18 = getelementptr inbounds %struct.client_info, %struct.client_info* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.host1x_softc*, %struct.host1x_softc** %5, align 8
  %20 = call i32 @LOCK(%struct.host1x_softc* %19)
  %21 = load %struct.host1x_softc*, %struct.host1x_softc** %5, align 8
  %22 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %21, i32 0, i32 0
  %23 = load %struct.client_info*, %struct.client_info** %6, align 8
  %24 = load i32, i32* @list_e, align 4
  %25 = call i32 @TAILQ_INSERT_TAIL(i32* %22, %struct.client_info* %23, i32 %24)
  %26 = load %struct.host1x_softc*, %struct.host1x_softc** %5, align 8
  %27 = call i32 @UNLOCK(%struct.host1x_softc* %26)
  ret i32 0
}

declare dso_local %struct.host1x_softc* @device_get_softc(i32) #1

declare dso_local %struct.client_info* @malloc(i32, i32, i32) #1

declare dso_local i32 @LOCK(%struct.host1x_softc*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.client_info*, i32) #1

declare dso_local i32 @UNLOCK(%struct.host1x_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
