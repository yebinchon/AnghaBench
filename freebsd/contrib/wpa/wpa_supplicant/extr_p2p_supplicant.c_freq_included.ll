; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_freq_included.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_freq_included.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.p2p_channels = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.p2p_channels*, i32)* @freq_included to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freq_included(%struct.wpa_supplicant* %0, %struct.p2p_channels* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.p2p_channels*, align 8
  %7 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.p2p_channels* %1, %struct.p2p_channels** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.p2p_channels*, %struct.p2p_channels** %6, align 8
  %9 = icmp eq %struct.p2p_channels* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load %struct.p2p_channels*, %struct.p2p_channels** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @p2p_channels_includes_freq(%struct.p2p_channels* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10, %3
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @wpas_p2p_go_is_peer_freq(%struct.wpa_supplicant* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %22

21:                                               ; preds = %15, %10
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i64 @p2p_channels_includes_freq(%struct.p2p_channels*, i32) #1

declare dso_local i64 @wpas_p2p_go_is_peer_freq(%struct.wpa_supplicant*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
