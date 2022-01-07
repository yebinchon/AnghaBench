; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_lun_has_media.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_lun_has_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_lun = type { i64 }
%struct.ctl_lun = type { i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%union.ctl_ha_msg = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@CTL_LUN_NO_MEDIA = common dso_local global i32 0, align 4
@CTL_LUN_EJECTED = common dso_local global i32 0, align 4
@CTL_LUN_REMOVABLE = common dso_local global i32 0, align 4
@CTL_UA_MEDIUM_CHANGE = common dso_local global i32 0, align 4
@CTL_HA_MODE_XFER = common dso_local global i64 0, align 8
@CTL_MSG_UA = common dso_local global i32 0, align 4
@CTL_HA_CHAN_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_lun_has_media(%struct.ctl_be_lun* %0) #0 {
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
  %10 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %9, i32 0, i32 3
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load i32, i32* @CTL_LUN_NO_MEDIA, align 4
  %13 = load i32, i32* @CTL_LUN_EJECTED, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %17 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %21 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CTL_LUN_REMOVABLE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %28 = load i32, i32* @CTL_UA_MEDIUM_CHANGE, align 4
  %29 = call i32 @ctl_est_ua_all(%struct.ctl_lun* %27, i32 -1, i32 %28)
  br label %30

30:                                               ; preds = %26, %1
  %31 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %32 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %31, i32 0, i32 3
  %33 = call i32 @mtx_unlock(i32* %32)
  %34 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %35 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CTL_LUN_REMOVABLE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %82

40:                                               ; preds = %30
  %41 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %42 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CTL_HA_MODE_XFER, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %82

48:                                               ; preds = %40
  %49 = bitcast %union.ctl_ha_msg* %4 to %struct.TYPE_8__*
  %50 = call i32 @bzero(%struct.TYPE_8__* %49, i32 12)
  %51 = load i32, i32* @CTL_MSG_UA, align 4
  %52 = bitcast %union.ctl_ha_msg* %4 to %struct.TYPE_7__*
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = bitcast %union.ctl_ha_msg* %4 to %struct.TYPE_7__*
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 -1, i32* %56, align 4
  %57 = bitcast %union.ctl_ha_msg* %4 to %struct.TYPE_7__*
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i32 -1, i32* %59, align 4
  %60 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %61 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = bitcast %union.ctl_ha_msg* %4 to %struct.TYPE_7__*
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  store i32 %62, i32* %65, align 4
  %66 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %67 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = bitcast %union.ctl_ha_msg* %4 to %struct.TYPE_7__*
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 4
  %72 = bitcast %union.ctl_ha_msg* %4 to %struct.TYPE_8__*
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  %74 = bitcast %union.ctl_ha_msg* %4 to %struct.TYPE_8__*
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  %76 = load i32, i32* @CTL_UA_MEDIUM_CHANGE, align 4
  %77 = bitcast %union.ctl_ha_msg* %4 to %struct.TYPE_8__*
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @CTL_HA_CHAN_CTL, align 4
  %80 = load i32, i32* @M_WAITOK, align 4
  %81 = call i32 @ctl_ha_msg_send(i32 %79, %union.ctl_ha_msg* %4, i32 12, i32 %80)
  br label %82

82:                                               ; preds = %48, %40, %30
  ret i32 0
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
