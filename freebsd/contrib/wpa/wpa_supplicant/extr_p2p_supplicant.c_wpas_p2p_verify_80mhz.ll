; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_verify_80mhz.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_verify_80mhz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.hostapd_hw_modes = type { i32 }

@ALLOWED = common dso_local global i32 0, align 4
@NOT_ALLOWED = common dso_local global i32 0, align 4
@NO_IR = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_10_70 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_30_50 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_50_30 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_70_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.hostapd_hw_modes*, i32, i32)* @wpas_p2p_verify_80mhz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_p2p_verify_80mhz(%struct.wpa_supplicant* %0, %struct.hostapd_hw_modes* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca %struct.hostapd_hw_modes*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store %struct.hostapd_hw_modes* %1, %struct.hostapd_hw_modes** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @ALLOWED, align 4
  store i32 %16, i32* %14, align 4
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %18 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @wpas_p2p_get_center_80mhz(%struct.wpa_supplicant* %17, %struct.hostapd_hw_modes* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %24, i32* %5, align 4
  br label %106

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = icmp sge i32 %26, 58
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = icmp sle i32 %29, 138
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %32, i32* %5, align 4
  br label %106

33:                                               ; preds = %28, %25
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %101, %33
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %104

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %38, 6
  %40 = load i32, i32* %11, align 4
  %41 = mul nsw i32 %40, 4
  %42 = add nsw i32 %39, %41
  store i32 %42, i32* %15, align 4
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %44 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %7, align 8
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @has_channel(i32 %45, %struct.hostapd_hw_modes* %46, i32 %47, i32* %12)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @NOT_ALLOWED, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %53, i32* %5, align 4
  br label %106

54:                                               ; preds = %37
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @NO_IR, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @NO_IR, align 4
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @HOSTAPD_CHAN_VHT_10_70, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %69, i32* %5, align 4
  br label %106

70:                                               ; preds = %63, %60
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @HOSTAPD_CHAN_VHT_30_50, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %79, i32* %5, align 4
  br label %106

80:                                               ; preds = %73, %70
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @HOSTAPD_CHAN_VHT_50_30, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %89, i32* %5, align 4
  br label %106

90:                                               ; preds = %83, %80
  %91 = load i32, i32* %11, align 4
  %92 = icmp eq i32 %91, 3
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @HOSTAPD_CHAN_VHT_70_10, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %99, i32* %5, align 4
  br label %106

100:                                              ; preds = %93, %90
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %34

104:                                              ; preds = %34
  %105 = load i32, i32* %14, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %98, %88, %78, %68, %52, %31, %23
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @wpas_p2p_get_center_80mhz(%struct.wpa_supplicant*, %struct.hostapd_hw_modes*, i32) #1

declare dso_local i32 @has_channel(i32, %struct.hostapd_hw_modes*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
