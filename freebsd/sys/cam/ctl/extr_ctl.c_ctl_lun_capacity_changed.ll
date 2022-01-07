; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_lun_capacity_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_lun_capacity_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_lun = type { i64 }
%struct.ctl_lun = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%union.ctl_ha_msg = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@CTL_UA_CAPACITY_CHANGE = common dso_local global i32 0, align 4
@CTL_HA_MODE_XFER = common dso_local global i64 0, align 8
@CTL_MSG_UA = common dso_local global i32 0, align 4
@CTL_HA_CHAN_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_lun_capacity_changed(%struct.ctl_be_lun* %0) #0 {
  %2 = alloca %struct.ctl_be_lun*, align 8
  %3 = alloca %struct.ctl_lun*, align 8
  %4 = alloca %union.ctl_ha_msg, align 4
  store %struct.ctl_be_lun* %0, %struct.ctl_be_lun** %2, align 8
  %5 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %2, align 8
  %6 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.ctl_lun*
  store %struct.ctl_lun* %8, %struct.ctl_lun** %3, align 8
  %9 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %10 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %9, i32 0, i32 2
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %13 = load i32, i32* @CTL_UA_CAPACITY_CHANGE, align 4
  %14 = call i32 @ctl_est_ua_all(%struct.ctl_lun* %12, i32 -1, i32 %13)
  %15 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %16 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %15, i32 0, i32 2
  %17 = call i32 @mtx_unlock(i32* %16)
  %18 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %19 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CTL_HA_MODE_XFER, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %1
  %26 = bitcast %union.ctl_ha_msg* %4 to %struct.TYPE_8__*
  %27 = call i32 @bzero(%struct.TYPE_8__* %26, i32 12)
  %28 = load i32, i32* @CTL_MSG_UA, align 4
  %29 = bitcast %union.ctl_ha_msg* %4 to %struct.TYPE_7__*
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = bitcast %union.ctl_ha_msg* %4 to %struct.TYPE_7__*
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 4
  %34 = bitcast %union.ctl_ha_msg* %4 to %struct.TYPE_7__*
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32 -1, i32* %36, align 4
  %37 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %38 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = bitcast %union.ctl_ha_msg* %4 to %struct.TYPE_7__*
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 4
  %43 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %44 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = bitcast %union.ctl_ha_msg* %4 to %struct.TYPE_7__*
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  %49 = bitcast %union.ctl_ha_msg* %4 to %struct.TYPE_8__*
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  %51 = bitcast %union.ctl_ha_msg* %4 to %struct.TYPE_8__*
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* @CTL_UA_CAPACITY_CHANGE, align 4
  %54 = bitcast %union.ctl_ha_msg* %4 to %struct.TYPE_8__*
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @CTL_HA_CHAN_CTL, align 4
  %57 = load i32, i32* @M_WAITOK, align 4
  %58 = call i32 @ctl_ha_msg_send(i32 %56, %union.ctl_ha_msg* %4, i32 12, i32 %57)
  br label %59

59:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ctl_est_ua_all(%struct.ctl_lun*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @bzero(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ctl_ha_msg_send(i32, %union.ctl_ha_msg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
