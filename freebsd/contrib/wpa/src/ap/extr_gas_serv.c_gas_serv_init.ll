; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_gas_serv_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_gas_serv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.hostapd_data*, i32 }

@gas_serv_rx_public_action = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gas_serv_init(%struct.hostapd_data* %0) #0 {
  %2 = alloca %struct.hostapd_data*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %2, align 8
  %3 = load i32, i32* @gas_serv_rx_public_action, align 4
  %4 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %5 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %4, i32 0, i32 1
  store i32 %3, i32* %5, align 8
  %6 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %7 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %8 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %7, i32 0, i32 0
  store %struct.hostapd_data* %6, %struct.hostapd_data** %8, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
