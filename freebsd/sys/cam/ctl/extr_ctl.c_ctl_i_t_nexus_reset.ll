; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_i_t_nexus_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_i_t_nexus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ctl_softc = type { i32 }
%union.ctl_ha_msg = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@CTL_FLAG_FROM_OTHER_SC = common dso_local global i32 0, align 4
@CTL_TASK_I_T_NEXUS_RESET = common dso_local global i32 0, align 4
@CTL_MSG_MANAGE_TASKS = common dso_local global i32 0, align 4
@CTL_HA_CHAN_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@CTL_UA_I_T_NEXUS_LOSS = common dso_local global i32 0, align 4
@CTL_TASK_FUNCTION_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*)* @ctl_i_t_nexus_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_i_t_nexus_reset(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca %struct.ctl_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.ctl_ha_msg, align 8
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %6 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %7 = call %struct.ctl_softc* @CTL_SOFTC(%union.ctl_io* %6)
  store %struct.ctl_softc* %7, %struct.ctl_softc** %3, align 8
  %8 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %9 = bitcast %union.ctl_io* %8 to %struct.TYPE_7__*
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CTL_FLAG_FROM_OTHER_SC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %1
  %16 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %17 = bitcast %union.ctl_io* %16 to %struct.TYPE_7__*
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = bitcast %union.ctl_ha_msg* %5 to %struct.TYPE_6__*
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @CTL_TASK_I_T_NEXUS_RESET, align 4
  %23 = bitcast %union.ctl_ha_msg* %5 to %struct.TYPE_5__*
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @CTL_MSG_MANAGE_TASKS, align 4
  %26 = bitcast %union.ctl_ha_msg* %5 to %struct.TYPE_6__*
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = bitcast %union.ctl_ha_msg* %5 to %struct.TYPE_6__*
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = bitcast %union.ctl_ha_msg* %5 to %struct.TYPE_6__*
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  %32 = load i32, i32* @CTL_HA_CHAN_CTL, align 4
  %33 = load i32, i32* @M_WAITOK, align 4
  %34 = call i32 @ctl_ha_msg_send(i32 %32, %union.ctl_ha_msg* %5, i32 4, i32 %33)
  br label %35

35:                                               ; preds = %15, %1
  %36 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %37 = bitcast %union.ctl_io* %36 to %struct.TYPE_7__*
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = call i32 @ctl_get_initindex(i32* %38)
  store i32 %39, i32* %4, align 4
  %40 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @CTL_UA_I_T_NEXUS_LOSS, align 4
  %43 = call i32 @ctl_i_t_nexus_loss(%struct.ctl_softc* %40, i32 %41, i32 %42)
  %44 = load i32, i32* @CTL_TASK_FUNCTION_COMPLETE, align 4
  %45 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %46 = bitcast %union.ctl_io* %45 to %struct.TYPE_8__*
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  ret i32 0
}

declare dso_local %struct.ctl_softc* @CTL_SOFTC(%union.ctl_io*) #1

declare dso_local i32 @ctl_ha_msg_send(i32, %union.ctl_ha_msg*, i32, i32) #1

declare dso_local i32 @ctl_get_initindex(i32*) #1

declare dso_local i32 @ctl_i_t_nexus_loss(%struct.ctl_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
