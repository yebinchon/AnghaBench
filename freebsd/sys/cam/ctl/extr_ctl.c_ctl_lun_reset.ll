; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_lun_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_lun_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.ctl_softc = type { i32, %struct.ctl_lun** }
%struct.ctl_lun = type { i32 }
%union.ctl_ha_msg = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i32*, %struct.TYPE_10__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@ctl_max_luns = common dso_local global i64 0, align 8
@CTL_TASK_LUN_DOES_NOT_EXIST = common dso_local global i32 0, align 4
@CTL_UA_LUN_RESET = common dso_local global i32 0, align 4
@CTL_TASK_FUNCTION_COMPLETE = common dso_local global i32 0, align 4
@CTL_FLAG_FROM_OTHER_SC = common dso_local global i32 0, align 4
@CTL_MSG_MANAGE_TASKS = common dso_local global i32 0, align 4
@CTL_TASK_LUN_RESET = common dso_local global i32 0, align 4
@CTL_HA_CHAN_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*)* @ctl_lun_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_lun_reset(%union.ctl_io* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.ctl_io*, align 8
  %4 = alloca %struct.ctl_softc*, align 8
  %5 = alloca %struct.ctl_lun*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.ctl_ha_msg, align 8
  store %union.ctl_io* %0, %union.ctl_io** %3, align 8
  %9 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %10 = call %struct.ctl_softc* @CTL_SOFTC(%union.ctl_io* %9)
  store %struct.ctl_softc* %10, %struct.ctl_softc** %4, align 8
  %11 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %12 = bitcast %union.ctl_io* %11 to %struct.TYPE_7__*
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %17 = bitcast %union.ctl_io* %16 to %struct.TYPE_7__*
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = call i64 @ctl_get_initindex(%struct.TYPE_10__* %18)
  store i64 %19, i64* %7, align 8
  %20 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %21 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %20, i32 0, i32 0
  %22 = call i32 @mtx_lock(i32* %21)
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @ctl_max_luns, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %1
  %27 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %28 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %27, i32 0, i32 1
  %29 = load %struct.ctl_lun**, %struct.ctl_lun*** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.ctl_lun*, %struct.ctl_lun** %29, i64 %30
  %32 = load %struct.ctl_lun*, %struct.ctl_lun** %31, align 8
  store %struct.ctl_lun* %32, %struct.ctl_lun** %5, align 8
  %33 = icmp eq %struct.ctl_lun* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %26, %1
  %35 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %36 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %35, i32 0, i32 0
  %37 = call i32 @mtx_unlock(i32* %36)
  %38 = load i32, i32* @CTL_TASK_LUN_DOES_NOT_EXIST, align 4
  %39 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %40 = bitcast %union.ctl_io* %39 to %struct.TYPE_6__*
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  store i32 1, i32* %2, align 4
  br label %83

42:                                               ; preds = %26
  %43 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* @CTL_UA_LUN_RESET, align 4
  %46 = call i32 @ctl_do_lun_reset(%struct.ctl_lun* %43, i64 %44, i32 %45)
  %47 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %48 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %47, i32 0, i32 0
  %49 = call i32 @mtx_unlock(i32* %48)
  %50 = load i32, i32* @CTL_TASK_FUNCTION_COMPLETE, align 4
  %51 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %52 = bitcast %union.ctl_io* %51 to %struct.TYPE_6__*
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %55 = bitcast %union.ctl_io* %54 to %struct.TYPE_7__*
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @CTL_FLAG_FROM_OTHER_SC, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %42
  %62 = load i32, i32* @CTL_MSG_MANAGE_TASKS, align 4
  %63 = bitcast %union.ctl_ha_msg* %8 to %struct.TYPE_9__*
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = bitcast %union.ctl_ha_msg* %8 to %struct.TYPE_9__*
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %68 = bitcast %union.ctl_io* %67 to %struct.TYPE_7__*
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = bitcast %struct.TYPE_10__* %66 to i8*
  %71 = bitcast %struct.TYPE_10__* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 8, i1 false)
  %72 = load i32, i32* @CTL_TASK_LUN_RESET, align 4
  %73 = bitcast %union.ctl_ha_msg* %8 to %struct.TYPE_8__*
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = bitcast %union.ctl_ha_msg* %8 to %struct.TYPE_9__*
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  store i32* null, i32** %76, align 8
  %77 = bitcast %union.ctl_ha_msg* %8 to %struct.TYPE_9__*
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store i32* null, i32** %78, align 8
  %79 = load i32, i32* @CTL_HA_CHAN_CTL, align 4
  %80 = load i32, i32* @M_WAITOK, align 4
  %81 = call i32 @ctl_ha_msg_send(i32 %79, %union.ctl_ha_msg* %8, i32 4, i32 %80)
  br label %82

82:                                               ; preds = %61, %42
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %34
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.ctl_softc* @CTL_SOFTC(%union.ctl_io*) #1

declare dso_local i64 @ctl_get_initindex(%struct.TYPE_10__*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ctl_do_lun_reset(%struct.ctl_lun*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ctl_ha_msg_send(i32, %union.ctl_ha_msg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
