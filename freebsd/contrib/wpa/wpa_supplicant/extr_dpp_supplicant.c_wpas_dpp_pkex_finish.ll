; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_dpp_supplicant.c_wpas_dpp_pkex_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_dpp_supplicant.c_wpas_dpp_pkex_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_bootstrap_info = type { i32 }
%struct.wpa_supplicant = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dpp_bootstrap_info* (%struct.wpa_supplicant*, i32*, i32)* @wpas_dpp_pkex_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dpp_bootstrap_info* @wpas_dpp_pkex_finish(%struct.wpa_supplicant* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.dpp_bootstrap_info*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpp_bootstrap_info*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %10 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.dpp_bootstrap_info* @dpp_pkex_finish(i32 %11, i32* %14, i32* %15, i32 %16)
  store %struct.dpp_bootstrap_info* %17, %struct.dpp_bootstrap_info** %8, align 8
  %18 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %8, align 8
  %19 = icmp ne %struct.dpp_bootstrap_info* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store %struct.dpp_bootstrap_info* null, %struct.dpp_bootstrap_info** %4, align 8
  br label %25

21:                                               ; preds = %3
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %8, align 8
  store %struct.dpp_bootstrap_info* %24, %struct.dpp_bootstrap_info** %4, align 8
  br label %25

25:                                               ; preds = %21, %20
  %26 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  ret %struct.dpp_bootstrap_info* %26
}

declare dso_local %struct.dpp_bootstrap_info* @dpp_pkex_finish(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
