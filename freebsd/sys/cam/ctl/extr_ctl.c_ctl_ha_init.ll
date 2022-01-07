; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_ha_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_ha_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_softc = type { i32 }

@control_softc = common dso_local global %struct.ctl_softc* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"othersc\00", align 1
@CTL_POOL_ENTRIES_OTHER_SC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CTL_HA_STATUS_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@CTL_HA_CHAN_CTL = common dso_local global i32 0, align 4
@ctl_isc_event_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ctl_ha_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_ha_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ctl_softc*, align 8
  %3 = load %struct.ctl_softc*, %struct.ctl_softc** @control_softc, align 8
  store %struct.ctl_softc* %3, %struct.ctl_softc** %2, align 8
  %4 = load %struct.ctl_softc*, %struct.ctl_softc** %2, align 8
  %5 = load i32, i32* @CTL_POOL_ENTRIES_OTHER_SC, align 4
  %6 = load %struct.ctl_softc*, %struct.ctl_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %6, i32 0, i32 0
  %8 = call i64 @ctl_pool_create(%struct.ctl_softc* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32, i32* @ENOMEM, align 4
  store i32 %11, i32* %1, align 4
  br label %38

12:                                               ; preds = %0
  %13 = load %struct.ctl_softc*, %struct.ctl_softc** %2, align 8
  %14 = call i64 @ctl_ha_msg_init(%struct.ctl_softc* %13)
  %15 = load i64, i64* @CTL_HA_STATUS_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.ctl_softc*, %struct.ctl_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ctl_pool_free(i32 %20)
  %22 = load i32, i32* @EIO, align 4
  store i32 %22, i32* %1, align 4
  br label %38

23:                                               ; preds = %12
  %24 = load i32, i32* @CTL_HA_CHAN_CTL, align 4
  %25 = load i32, i32* @ctl_isc_event_handler, align 4
  %26 = call i64 @ctl_ha_msg_register(i32 %24, i32 %25)
  %27 = load i64, i64* @CTL_HA_STATUS_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.ctl_softc*, %struct.ctl_softc** %2, align 8
  %31 = call i32 @ctl_ha_msg_destroy(%struct.ctl_softc* %30)
  %32 = load %struct.ctl_softc*, %struct.ctl_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ctl_pool_free(i32 %34)
  %36 = load i32, i32* @EIO, align 4
  store i32 %36, i32* %1, align 4
  br label %38

37:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %37, %29, %17, %10
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i64 @ctl_pool_create(%struct.ctl_softc*, i8*, i32, i32*) #1

declare dso_local i64 @ctl_ha_msg_init(%struct.ctl_softc*) #1

declare dso_local i32 @ctl_pool_free(i32) #1

declare dso_local i64 @ctl_ha_msg_register(i32, i32) #1

declare dso_local i32 @ctl_ha_msg_destroy(%struct.ctl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
