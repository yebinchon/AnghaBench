; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_level.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sockaddr_storage = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, %struct.sockaddr_storage*, i32, i8*)* @hostapd_ctrl_iface_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_ctrl_iface_level(%struct.hostapd_data* %0, %struct.sockaddr_storage* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %10 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %9, i32 0, i32 0
  %11 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @ctrl_iface_level(i32* %10, %struct.sockaddr_storage* %11, i32 %12, i8* %13)
  ret i32 %14
}

declare dso_local i32 @ctrl_iface_level(i32*, %struct.sockaddr_storage*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
