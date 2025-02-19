; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_unregister_event_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_unregister_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ctrl = type { i32 }

@ctrl_conn = common dso_local global i32 0, align 4
@interactive = common dso_local global i64 0, align 8
@event_handler_registered = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_ctrl*)* @unregister_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unregister_event_handler(%struct.wpa_ctrl* %0) #0 {
  %2 = alloca %struct.wpa_ctrl*, align 8
  store %struct.wpa_ctrl* %0, %struct.wpa_ctrl** %2, align 8
  %3 = load i32, i32* @ctrl_conn, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %16

6:                                                ; preds = %1
  %7 = load i64, i64* @interactive, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load i64, i64* @event_handler_registered, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %2, align 8
  %14 = call i32 @wpa_ctrl_get_fd(%struct.wpa_ctrl* %13)
  %15 = call i32 @eloop_unregister_read_sock(i32 %14)
  store i64 0, i64* @event_handler_registered, align 8
  br label %16

16:                                               ; preds = %5, %12, %9, %6
  ret void
}

declare dso_local i32 @eloop_unregister_read_sock(i32) #1

declare dso_local i32 @wpa_ctrl_get_fd(%struct.wpa_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
