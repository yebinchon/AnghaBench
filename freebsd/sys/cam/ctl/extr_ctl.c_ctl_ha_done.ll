; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_ha_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_ha_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32 }
%union.ctl_ha_msg = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@CTL_IO_SCSI = common dso_local global i64 0, align 8
@CTL_MSG_FINISH_IO = common dso_local global i32 0, align 4
@CTL_HA_CHAN_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ctl_io*)* @ctl_ha_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_ha_done(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca %union.ctl_ha_msg, align 8
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %4 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %5 = bitcast %union.ctl_io* %4 to %struct.TYPE_6__*
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CTL_IO_SCSI, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %74

10:                                               ; preds = %1
  %11 = call i32 @memset(%union.ctl_ha_msg* %3, i32 0, i32 24)
  %12 = load i32, i32* @CTL_MSG_FINISH_IO, align 4
  %13 = bitcast %union.ctl_ha_msg* %3 to %struct.TYPE_5__*
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %16 = bitcast %union.ctl_io* %15 to %struct.TYPE_6__*
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = bitcast %union.ctl_ha_msg* %3 to %struct.TYPE_5__*
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %22 = bitcast %union.ctl_io* %21 to %struct.TYPE_6__*
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = bitcast %union.ctl_ha_msg* %3 to %struct.TYPE_5__*
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %28 = bitcast %union.ctl_io* %27 to %struct.TYPE_6__*
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = bitcast %union.ctl_ha_msg* %3 to %struct.TYPE_5__*
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %34 = bitcast %union.ctl_io* %33 to %struct.TYPE_7__*
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = bitcast %union.ctl_ha_msg* %3 to %struct.TYPE_8__*
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %40 = bitcast %union.ctl_io* %39 to %struct.TYPE_7__*
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = bitcast %union.ctl_ha_msg* %3 to %struct.TYPE_8__*
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %46 = bitcast %union.ctl_io* %45 to %struct.TYPE_7__*
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = bitcast %union.ctl_ha_msg* %3 to %struct.TYPE_8__*
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %52 = bitcast %union.ctl_io* %51 to %struct.TYPE_7__*
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = bitcast %union.ctl_ha_msg* %3 to %struct.TYPE_8__*
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = bitcast %union.ctl_ha_msg* %3 to %struct.TYPE_8__*
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %60 = bitcast %union.ctl_io* %59 to %struct.TYPE_7__*
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %63 = bitcast %union.ctl_io* %62 to %struct.TYPE_7__*
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @memcpy(i32* %58, i32* %61, i64 %65)
  %67 = load i32, i32* @CTL_HA_CHAN_CTL, align 4
  %68 = bitcast %union.ctl_ha_msg* %3 to %struct.TYPE_8__*
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add i64 20, %70
  %72 = load i32, i32* @M_WAITOK, align 4
  %73 = call i32 @ctl_ha_msg_send(i32 %67, %union.ctl_ha_msg* %3, i64 %71, i32 %72)
  br label %74

74:                                               ; preds = %10, %1
  %75 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %76 = call i32 @ctl_free_io(%union.ctl_io* %75)
  ret void
}

declare dso_local i32 @memset(%union.ctl_ha_msg*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @ctl_ha_msg_send(i32, %union.ctl_ha_msg*, i64, i32) #1

declare dso_local i32 @ctl_free_io(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
