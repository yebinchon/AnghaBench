; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_ctrl_iface.c_fst_ctrl_iface_on_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_ctrl_iface.c_fst_ctrl_iface_on_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_iface = type { i32 }
%struct.fst_session = type { i32 }
%union.fst_event_extra = type { i32 }

@FST_INVALID_SESSION_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.fst_iface*, %struct.fst_session*, %union.fst_event_extra*)* @fst_ctrl_iface_on_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fst_ctrl_iface_on_event(i32 %0, %struct.fst_iface* %1, %struct.fst_session* %2, %union.fst_event_extra* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fst_iface*, align 8
  %7 = alloca %struct.fst_session*, align 8
  %8 = alloca %union.fst_event_extra*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.fst_iface* %1, %struct.fst_iface** %6, align 8
  store %struct.fst_session* %2, %struct.fst_session** %7, align 8
  store %union.fst_event_extra* %3, %union.fst_event_extra** %8, align 8
  %10 = load %struct.fst_session*, %struct.fst_session** %7, align 8
  %11 = icmp ne %struct.fst_session* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load %struct.fst_session*, %struct.fst_session** %7, align 8
  %14 = call i32 @fst_session_get_id(%struct.fst_session* %13)
  br label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @FST_INVALID_SESSION_ID, align 4
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i32 [ %14, %12 ], [ %16, %15 ]
  store i32 %18, i32* %9, align 4
  %19 = load %struct.fst_iface*, %struct.fst_iface** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %union.fst_event_extra*, %union.fst_event_extra** %8, align 8
  %23 = call i32 @fst_ctrl_iface_notify(%struct.fst_iface* %19, i32 %20, i32 %21, %union.fst_event_extra* %22)
  ret void
}

declare dso_local i32 @fst_session_get_id(%struct.fst_session*) #1

declare dso_local i32 @fst_ctrl_iface_notify(%struct.fst_iface*, i32, i32, %union.fst_event_extra*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
