; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_ctrl_iface.c_fst_ctrl_iface_on_iface_state_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_ctrl_iface.c_fst_ctrl_iface_on_iface_state_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_iface = type { i32 }
%union.fst_event_extra = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@FST_INVALID_SESSION_ID = common dso_local global i32 0, align 4
@EVENT_FST_IFACE_STATE_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fst_iface*, i32)* @fst_ctrl_iface_on_iface_state_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fst_ctrl_iface_on_iface_state_changed(%struct.fst_iface* %0, i32 %1) #0 {
  %3 = alloca %struct.fst_iface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.fst_event_extra, align 4
  store %struct.fst_iface* %0, %struct.fst_iface** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @os_memset(%union.fst_event_extra* %5, i32 0, i32 12)
  %7 = load i32, i32* %4, align 4
  %8 = bitcast %union.fst_event_extra* %5 to %struct.TYPE_2__*
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = bitcast %union.fst_event_extra* %5 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.fst_iface*, %struct.fst_iface** %3, align 8
  %14 = call i32 @fst_iface_get_name(%struct.fst_iface* %13)
  %15 = call i32 @os_strlcpy(i32 %12, i32 %14, i32 4)
  %16 = bitcast %union.fst_event_extra* %5 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.fst_iface*, %struct.fst_iface** %3, align 8
  %20 = call i32 @fst_iface_get_group_id(%struct.fst_iface* %19)
  %21 = call i32 @os_strlcpy(i32 %18, i32 %20, i32 4)
  %22 = load %struct.fst_iface*, %struct.fst_iface** %3, align 8
  %23 = load i32, i32* @FST_INVALID_SESSION_ID, align 4
  %24 = load i32, i32* @EVENT_FST_IFACE_STATE_CHANGED, align 4
  %25 = call i32 @fst_ctrl_iface_notify(%struct.fst_iface* %22, i32 %23, i32 %24, %union.fst_event_extra* %5)
  ret void
}

declare dso_local i32 @os_memset(%union.fst_event_extra*, i32, i32) #1

declare dso_local i32 @os_strlcpy(i32, i32, i32) #1

declare dso_local i32 @fst_iface_get_name(%struct.fst_iface*) #1

declare dso_local i32 @fst_iface_get_group_id(%struct.fst_iface*) #1

declare dso_local i32 @fst_ctrl_iface_notify(%struct.fst_iface*, i32, i32, %union.fst_event_extra*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
