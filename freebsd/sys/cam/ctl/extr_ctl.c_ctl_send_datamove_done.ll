; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_send_datamove_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_send_datamove_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32 }
%union.ctl_ha_msg = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, %union.ctl_io*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@CTL_MSG_DATAMOVE_DONE = common dso_local global i32 0, align 4
@CTL_FLAG_IO_ACTIVE = common dso_local global i32 0, align 4
@CTL_FLAG_FAILOVER = common dso_local global i32 0, align 4
@CTL_HA_CHAN_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ctl_io*, i32)* @ctl_send_datamove_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_send_datamove_done(%union.ctl_io* %0, i32 %1) #0 {
  %3 = alloca %union.ctl_io*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.ctl_ha_msg, align 8
  store %union.ctl_io* %0, %union.ctl_io** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @memset(%union.ctl_ha_msg* %5, i32 0, i32 32)
  %7 = load i32, i32* @CTL_MSG_DATAMOVE_DONE, align 4
  %8 = bitcast %union.ctl_ha_msg* %5 to %struct.TYPE_5__*
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 8
  %10 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %11 = bitcast %union.ctl_ha_msg* %5 to %struct.TYPE_5__*
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  store %union.ctl_io* %10, %union.ctl_io** %12, align 8
  %13 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %14 = bitcast %union.ctl_io* %13 to %struct.TYPE_8__*
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = bitcast %union.ctl_ha_msg* %5 to %struct.TYPE_5__*
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %20 = bitcast %union.ctl_io* %19 to %struct.TYPE_8__*
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = bitcast %union.ctl_ha_msg* %5 to %struct.TYPE_5__*
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %26 = bitcast %union.ctl_io* %25 to %struct.TYPE_8__*
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = bitcast %union.ctl_ha_msg* %5 to %struct.TYPE_5__*
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %32 = bitcast %union.ctl_io* %31 to %struct.TYPE_6__*
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = bitcast %union.ctl_ha_msg* %5 to %struct.TYPE_7__*
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %38 = bitcast %union.ctl_io* %37 to %struct.TYPE_6__*
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = bitcast %union.ctl_ha_msg* %5 to %struct.TYPE_7__*
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %44 = bitcast %union.ctl_io* %43 to %struct.TYPE_6__*
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = bitcast %union.ctl_ha_msg* %5 to %struct.TYPE_7__*
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %50 = bitcast %union.ctl_io* %49 to %struct.TYPE_6__*
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = bitcast %union.ctl_ha_msg* %5 to %struct.TYPE_7__*
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = bitcast %union.ctl_ha_msg* %5 to %struct.TYPE_7__*
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %58 = bitcast %union.ctl_io* %57 to %struct.TYPE_6__*
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %61 = bitcast %union.ctl_io* %60 to %struct.TYPE_6__*
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @memcpy(i32* %56, i32* %59, i64 %63)
  %65 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %66 = bitcast %union.ctl_io* %65 to %struct.TYPE_6__*
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = bitcast %union.ctl_ha_msg* %5 to %struct.TYPE_7__*
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %72 = bitcast %union.ctl_io* %71 to %struct.TYPE_8__*
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = bitcast %union.ctl_ha_msg* %5 to %struct.TYPE_7__*
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @CTL_FLAG_IO_ACTIVE, align 4
  %78 = xor i32 %77, -1
  %79 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %80 = bitcast %union.ctl_io* %79 to %struct.TYPE_8__*
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, %78
  store i32 %83, i32* %81, align 8
  %84 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %85 = bitcast %union.ctl_io* %84 to %struct.TYPE_8__*
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @CTL_FLAG_FAILOVER, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %2
  %92 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @ctl_failover_io(%union.ctl_io* %92, i32 %93)
  br label %108

95:                                               ; preds = %2
  %96 = load i32, i32* @CTL_HA_CHAN_CTL, align 4
  %97 = bitcast %union.ctl_ha_msg* %5 to %struct.TYPE_7__*
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add i64 28, %99
  %101 = load i32, i32* @M_WAITOK, align 4
  %102 = call i32 @ctl_ha_msg_send(i32 %96, %union.ctl_ha_msg* %5, i64 %100, i32 %101)
  %103 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %104 = bitcast %union.ctl_io* %103 to %struct.TYPE_8__*
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %95, %91
  ret void
}

declare dso_local i32 @memset(%union.ctl_ha_msg*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @ctl_failover_io(%union.ctl_io*, i32) #1

declare dso_local i32 @ctl_ha_msg_send(i32, %union.ctl_ha_msg*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
