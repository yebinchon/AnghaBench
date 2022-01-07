; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_matching_ciphers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_matching_ciphers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ssid = type { i32, i32 }
%struct.wpa_ie_data = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_ssid*, %struct.wpa_ie_data*, i32)* @matching_ciphers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matching_ciphers(%struct.wpa_ssid* %0, %struct.wpa_ie_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_ssid*, align 8
  %5 = alloca %struct.wpa_ie_data*, align 8
  %6 = alloca i32, align 4
  store %struct.wpa_ssid* %0, %struct.wpa_ssid** %4, align 8
  store %struct.wpa_ie_data* %1, %struct.wpa_ie_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %5, align 8
  %8 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = call i8* @wpa_default_rsn_cipher(i32 %12)
  %14 = ptrtoint i8* %13 to i32
  %15 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %5, align 8
  %16 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %11, %3
  %18 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %5, align 8
  %19 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = call i8* @wpa_default_rsn_cipher(i32 %23)
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %5, align 8
  %27 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %17
  %29 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %5, align 8
  %30 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %33 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %5, align 8
  %39 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %42 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %37, %28
  %47 = phi i1 [ false, %28 ], [ %45, %37 ]
  %48 = zext i1 %47 to i32
  ret i32 %48
}

declare dso_local i8* @wpa_default_rsn_cipher(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
