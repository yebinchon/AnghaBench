; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_verify_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_verify_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.hostapd_hw_modes = type { i32 }

@BW40MINUS = common dso_local global i64 0, align 8
@HOSTAPD_CHAN_HT40MINUS = common dso_local global i32 0, align 4
@NOT_ALLOWED = common dso_local global i32 0, align 4
@BW40PLUS = common dso_local global i64 0, align 8
@HOSTAPD_CHAN_HT40PLUS = common dso_local global i32 0, align 4
@BW80 = common dso_local global i64 0, align 8
@BW160 = common dso_local global i64 0, align 8
@NO_IR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.hostapd_hw_modes*, i64, i64)* @wpas_p2p_verify_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_p2p_verify_channel(%struct.wpa_supplicant* %0, %struct.hostapd_hw_modes* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca %struct.hostapd_hw_modes*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store %struct.hostapd_hw_modes* %1, %struct.hostapd_hw_modes** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @has_channel(i32 %15, %struct.hostapd_hw_modes* %16, i64 %17, i32* %10)
  store i32 %18, i32* %11, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @BW40MINUS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @HOSTAPD_CHAN_HT40MINUS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %28, i32* %5, align 4
  br label %101

29:                                               ; preds = %22
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = sub nsw i64 %34, 4
  %36 = call i32 @has_channel(i32 %32, %struct.hostapd_hw_modes* %33, i64 %35, i32* null)
  store i32 %36, i32* %12, align 4
  br label %79

37:                                               ; preds = %4
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @BW40PLUS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @HOSTAPD_CHAN_HT40PLUS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %47, i32* %5, align 4
  br label %101

48:                                               ; preds = %41
  %49 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %50 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = add nsw i64 %53, 4
  %55 = call i32 @has_channel(i32 %51, %struct.hostapd_hw_modes* %52, i64 %54, i32* null)
  store i32 %55, i32* %12, align 4
  br label %78

56:                                               ; preds = %37
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @BW80, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %62 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @wpas_p2p_verify_80mhz(%struct.wpa_supplicant* %61, %struct.hostapd_hw_modes* %62, i64 %63, i64 %64)
  store i32 %65, i32* %12, align 4
  br label %77

66:                                               ; preds = %56
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* @BW160, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %72 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @wpas_p2p_verify_160mhz(%struct.wpa_supplicant* %71, %struct.hostapd_hw_modes* %72, i64 %73, i64 %74)
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %70, %66
  br label %77

77:                                               ; preds = %76, %60
  br label %78

78:                                               ; preds = %77, %48
  br label %79

79:                                               ; preds = %78, %29
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @NOT_ALLOWED, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @NOT_ALLOWED, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83, %79
  %88 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %88, i32* %5, align 4
  br label %101

89:                                               ; preds = %83
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @NO_IR, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @NO_IR, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93, %89
  %98 = load i32, i32* @NO_IR, align 4
  store i32 %98, i32* %5, align 4
  br label %101

99:                                               ; preds = %93
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %99, %97, %87, %46, %27
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @has_channel(i32, %struct.hostapd_hw_modes*, i64, i32*) #1

declare dso_local i32 @wpas_p2p_verify_80mhz(%struct.wpa_supplicant*, %struct.hostapd_hw_modes*, i64, i64) #1

declare dso_local i32 @wpas_p2p_verify_160mhz(%struct.wpa_supplicant*, %struct.hostapd_hw_modes*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
