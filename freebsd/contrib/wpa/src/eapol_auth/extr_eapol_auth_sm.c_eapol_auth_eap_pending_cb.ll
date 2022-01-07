; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_auth/extr_eapol_auth_sm.c_eapol_auth_eap_pending_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_auth/extr_eapol_auth_sm.c_eapol_auth_eap_pending_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_state_machine = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eapol_auth_eap_pending_cb(%struct.eapol_state_machine* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eapol_state_machine*, align 8
  %5 = alloca i8*, align 8
  store %struct.eapol_state_machine* %0, %struct.eapol_state_machine** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %4, align 8
  %7 = icmp eq %struct.eapol_state_machine* %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %4, align 8
  %14 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %8, %2
  store i32 -1, i32* %3, align 4
  br label %25

18:                                               ; preds = %11
  %19 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %4, align 8
  %20 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @eap_sm_pending_cb(i8* %21)
  %23 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %4, align 8
  %24 = call i32 @eapol_auth_step(%struct.eapol_state_machine* %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @eap_sm_pending_cb(i8*) #1

declare dso_local i32 @eapol_auth_step(%struct.eapol_state_machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
