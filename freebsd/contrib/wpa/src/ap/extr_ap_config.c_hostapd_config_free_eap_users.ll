; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_config.c_hostapd_config_free_eap_users.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_config.c_hostapd_config_free_eap_users.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_eap_user = type { %struct.hostapd_eap_user* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostapd_config_free_eap_users(%struct.hostapd_eap_user* %0) #0 {
  %2 = alloca %struct.hostapd_eap_user*, align 8
  %3 = alloca %struct.hostapd_eap_user*, align 8
  store %struct.hostapd_eap_user* %0, %struct.hostapd_eap_user** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.hostapd_eap_user*, %struct.hostapd_eap_user** %2, align 8
  %6 = icmp ne %struct.hostapd_eap_user* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load %struct.hostapd_eap_user*, %struct.hostapd_eap_user** %2, align 8
  store %struct.hostapd_eap_user* %8, %struct.hostapd_eap_user** %3, align 8
  %9 = load %struct.hostapd_eap_user*, %struct.hostapd_eap_user** %2, align 8
  %10 = getelementptr inbounds %struct.hostapd_eap_user, %struct.hostapd_eap_user* %9, i32 0, i32 0
  %11 = load %struct.hostapd_eap_user*, %struct.hostapd_eap_user** %10, align 8
  store %struct.hostapd_eap_user* %11, %struct.hostapd_eap_user** %2, align 8
  %12 = load %struct.hostapd_eap_user*, %struct.hostapd_eap_user** %3, align 8
  %13 = call i32 @hostapd_config_free_eap_user(%struct.hostapd_eap_user* %12)
  br label %4

14:                                               ; preds = %4
  ret void
}

declare dso_local i32 @hostapd_config_free_eap_user(%struct.hostapd_eap_user*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
