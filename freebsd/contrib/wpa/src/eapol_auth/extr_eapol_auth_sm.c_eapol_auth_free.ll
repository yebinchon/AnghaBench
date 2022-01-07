; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_auth/extr_eapol_auth_sm.c_eapol_auth_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_auth/extr_eapol_auth_sm.c_eapol_auth_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_state_machine = type { %struct.eapol_state_machine*, i32, i64 }

@eapol_port_timers_tick = common dso_local global i32 0, align 4
@eapol_sm_step_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eapol_auth_free(%struct.eapol_state_machine* %0) #0 {
  %2 = alloca %struct.eapol_state_machine*, align 8
  store %struct.eapol_state_machine* %0, %struct.eapol_state_machine** %2, align 8
  %3 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %4 = icmp eq %struct.eapol_state_machine* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %33

6:                                                ; preds = %1
  %7 = load i32, i32* @eapol_port_timers_tick, align 4
  %8 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %9 = call i32 @eloop_cancel_timeout(i32 %7, %struct.eapol_state_machine* null, %struct.eapol_state_machine* %8)
  %10 = load i32, i32* @eapol_sm_step_cb, align 4
  %11 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %12 = call i32 @eloop_cancel_timeout(i32 %10, %struct.eapol_state_machine* %11, %struct.eapol_state_machine* null)
  %13 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %14 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %6
  %18 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %19 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @eap_server_sm_deinit(i64 %20)
  br label %22

22:                                               ; preds = %17, %6
  %23 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %24 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @wpabuf_free(i32 %25)
  %27 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %28 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %27, i32 0, i32 0
  %29 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %28, align 8
  %30 = call i32 @os_free(%struct.eapol_state_machine* %29)
  %31 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %32 = call i32 @os_free(%struct.eapol_state_machine* %31)
  br label %33

33:                                               ; preds = %22, %5
  ret void
}

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.eapol_state_machine*, %struct.eapol_state_machine*) #1

declare dso_local i32 @eap_server_sm_deinit(i64) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @os_free(%struct.eapol_state_machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
