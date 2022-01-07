; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_isc_login.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_isc_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_softc = type { i64, i64 }
%union.ctl_ha_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64 }

@CTL_HA_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"CTL HA peers have different versions %d != %d\0A\00", align 1
@CTL_HA_CHAN_CTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"CTL HA peers have different ha_mode %d != %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"CTL HA peers have same ha_id %d\0A\00", align 1
@ctl_max_luns = common dso_local global i64 0, align 8
@ctl_max_ports = common dso_local global i64 0, align 8
@CTL_MAX_INIT_PER_PORT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"CTL HA peers have different limits\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_softc*, %union.ctl_ha_msg*, i32)* @ctl_isc_login to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_isc_login(%struct.ctl_softc* %0, %union.ctl_ha_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.ctl_softc*, align 8
  %5 = alloca %union.ctl_ha_msg*, align 8
  %6 = alloca i32, align 4
  store %struct.ctl_softc* %0, %struct.ctl_softc** %4, align 8
  store %union.ctl_ha_msg* %1, %union.ctl_ha_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %8 = bitcast %union.ctl_ha_msg* %7 to %struct.TYPE_2__*
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CTL_HA_VERSION, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %15 = bitcast %union.ctl_ha_msg* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CTL_HA_VERSION, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %18)
  %20 = load i32, i32* @CTL_HA_CHAN_CTL, align 4
  %21 = call i32 @ctl_ha_msg_abort(i32 %20)
  br label %84

22:                                               ; preds = %3
  %23 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %24 = bitcast %union.ctl_ha_msg* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %28 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %22
  %32 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %33 = bitcast %union.ctl_ha_msg* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %37 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %35, i64 %38)
  %40 = load i32, i32* @CTL_HA_CHAN_CTL, align 4
  %41 = call i32 @ctl_ha_msg_abort(i32 %40)
  br label %84

42:                                               ; preds = %22
  %43 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %44 = bitcast %union.ctl_ha_msg* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %48 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %42
  %52 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %53 = bitcast %union.ctl_ha_msg* %52 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* @CTL_HA_CHAN_CTL, align 4
  %58 = call i32 @ctl_ha_msg_abort(i32 %57)
  br label %84

59:                                               ; preds = %42
  %60 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %61 = bitcast %union.ctl_ha_msg* %60 to %struct.TYPE_2__*
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ctl_max_luns, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %80, label %66

66:                                               ; preds = %59
  %67 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %68 = bitcast %union.ctl_ha_msg* %67 to %struct.TYPE_2__*
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ctl_max_ports, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %75 = bitcast %union.ctl_ha_msg* %74 to %struct.TYPE_2__*
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CTL_MAX_INIT_PER_PORT, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %73, %66, %59
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @CTL_HA_CHAN_CTL, align 4
  %83 = call i32 @ctl_ha_msg_abort(i32 %82)
  br label %84

84:                                               ; preds = %13, %31, %51, %80, %73
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ctl_ha_msg_abort(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
