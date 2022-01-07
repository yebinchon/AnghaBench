; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_ha_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_ha_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_softc = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ctl_port = type { %struct.ctl_port* }

@control_softc = common dso_local global %struct.ctl_softc* null, align 8
@CTL_HA_CHAN_CTL = common dso_local global i32 0, align 4
@CTL_HA_STATUS_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ha_frontend = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@M_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ctl_ha_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_ha_shutdown() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ctl_softc*, align 8
  %3 = alloca %struct.ctl_port*, align 8
  %4 = load %struct.ctl_softc*, %struct.ctl_softc** @control_softc, align 8
  store %struct.ctl_softc* %4, %struct.ctl_softc** %2, align 8
  %5 = load %struct.ctl_softc*, %struct.ctl_softc** %2, align 8
  %6 = call i32 @ctl_ha_msg_shutdown(%struct.ctl_softc* %5)
  %7 = load i32, i32* @CTL_HA_CHAN_CTL, align 4
  %8 = call i64 @ctl_ha_msg_deregister(i32 %7)
  %9 = load i64, i64* @CTL_HA_STATUS_SUCCESS, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = load i32, i32* @EIO, align 4
  store i32 %12, i32* %1, align 4
  br label %40

13:                                               ; preds = %0
  %14 = load %struct.ctl_softc*, %struct.ctl_softc** %2, align 8
  %15 = call i64 @ctl_ha_msg_destroy(%struct.ctl_softc* %14)
  %16 = load i64, i64* @CTL_HA_STATUS_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @EIO, align 4
  store i32 %19, i32* %1, align 4
  br label %40

20:                                               ; preds = %13
  %21 = load %struct.ctl_softc*, %struct.ctl_softc** %2, align 8
  %22 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ctl_pool_free(i32 %23)
  br label %25

25:                                               ; preds = %28, %20
  %26 = call %struct.ctl_port* @STAILQ_FIRST(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ha_frontend, i32 0, i32 0))
  store %struct.ctl_port* %26, %struct.ctl_port** %3, align 8
  %27 = icmp ne %struct.ctl_port* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %30 = call i32 @ctl_port_deregister(%struct.ctl_port* %29)
  %31 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %32 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %31, i32 0, i32 0
  %33 = load %struct.ctl_port*, %struct.ctl_port** %32, align 8
  %34 = load i32, i32* @M_CTL, align 4
  %35 = call i32 @free(%struct.ctl_port* %33, i32 %34)
  %36 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %37 = load i32, i32* @M_CTL, align 4
  %38 = call i32 @free(%struct.ctl_port* %36, i32 %37)
  br label %25

39:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  br label %40

40:                                               ; preds = %39, %18, %11
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

declare dso_local i32 @ctl_ha_msg_shutdown(%struct.ctl_softc*) #1

declare dso_local i64 @ctl_ha_msg_deregister(i32) #1

declare dso_local i64 @ctl_ha_msg_destroy(%struct.ctl_softc*) #1

declare dso_local i32 @ctl_pool_free(i32) #1

declare dso_local %struct.ctl_port* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @ctl_port_deregister(%struct.ctl_port*) #1

declare dso_local i32 @free(%struct.ctl_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
