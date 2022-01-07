; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_uses_ft_sae.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_uses_ft_sae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_state_machine = type { i64 }

@WPA_KEY_MGMT_FT_SAE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_auth_uses_ft_sae(%struct.wpa_state_machine* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_state_machine*, align 8
  store %struct.wpa_state_machine* %0, %struct.wpa_state_machine** %3, align 8
  %4 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %3, align 8
  %5 = icmp eq %struct.wpa_state_machine* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

7:                                                ; preds = %1
  %8 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %3, align 8
  %9 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @WPA_KEY_MGMT_FT_SAE, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %7, %6
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
