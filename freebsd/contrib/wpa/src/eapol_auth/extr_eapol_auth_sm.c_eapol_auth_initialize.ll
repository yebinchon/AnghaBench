; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_auth/extr_eapol_auth_sm.c_eapol_auth_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_auth/extr_eapol_auth_sm.c_eapol_auth_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_state_machine = type { i8*, i8* }

@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@eapol_port_timers_tick = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eapol_state_machine*)* @eapol_auth_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eapol_auth_initialize(%struct.eapol_state_machine* %0) #0 {
  %2 = alloca %struct.eapol_state_machine*, align 8
  store %struct.eapol_state_machine* %0, %struct.eapol_state_machine** %2, align 8
  %3 = load i8*, i8** @TRUE, align 8
  %4 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %5 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %4, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = load i8*, i8** @TRUE, align 8
  %7 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %8 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %7, i32 0, i32 1
  store i8* %6, i8** %8, align 8
  %9 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %10 = call i32 @eapol_sm_step_run(%struct.eapol_state_machine* %9)
  %11 = load i8*, i8** @FALSE, align 8
  %12 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %13 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  %14 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %15 = call i32 @eapol_sm_step_run(%struct.eapol_state_machine* %14)
  %16 = load i8*, i8** @FALSE, align 8
  %17 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %18 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* @eapol_port_timers_tick, align 4
  %20 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %21 = call i32 @eloop_cancel_timeout(i32 %19, i32* null, %struct.eapol_state_machine* %20)
  %22 = load i32, i32* @eapol_port_timers_tick, align 4
  %23 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %24 = call i32 @eloop_register_timeout(i32 1, i32 0, i32 %22, i32* null, %struct.eapol_state_machine* %23)
  ret void
}

declare dso_local i32 @eapol_sm_step_run(%struct.eapol_state_machine*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, i32*, %struct.eapol_state_machine*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, i32*, %struct.eapol_state_machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
