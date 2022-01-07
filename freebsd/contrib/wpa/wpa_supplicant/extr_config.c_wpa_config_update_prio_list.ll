; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_update_prio_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_update_prio_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_config = type { %struct.wpa_ssid*, i64, i32* }
%struct.wpa_ssid = type { %struct.wpa_ssid*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_config_update_prio_list(%struct.wpa_config* %0) #0 {
  %2 = alloca %struct.wpa_config*, align 8
  %3 = alloca %struct.wpa_ssid*, align 8
  %4 = alloca i32, align 4
  store %struct.wpa_config* %0, %struct.wpa_config** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %6 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @os_free(i32* %7)
  %9 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %10 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %9, i32 0, i32 2
  store i32* null, i32** %10, align 8
  %11 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %12 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %14 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %13, i32 0, i32 0
  %15 = load %struct.wpa_ssid*, %struct.wpa_ssid** %14, align 8
  store %struct.wpa_ssid* %15, %struct.wpa_ssid** %3, align 8
  br label %16

16:                                               ; preds = %27, %1
  %17 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %18 = icmp ne %struct.wpa_ssid* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %21 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %23 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %24 = call i64 @wpa_config_add_prio_network(%struct.wpa_config* %22, %struct.wpa_ssid* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %19
  %28 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %29 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %28, i32 0, i32 0
  %30 = load %struct.wpa_ssid*, %struct.wpa_ssid** %29, align 8
  store %struct.wpa_ssid* %30, %struct.wpa_ssid** %3, align 8
  br label %16

31:                                               ; preds = %16
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @os_free(i32*) #1

declare dso_local i64 @wpa_config_add_prio_network(%struct.wpa_config*, %struct.wpa_ssid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
