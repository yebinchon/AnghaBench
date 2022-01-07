; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_freq_range_to_channel_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_freq_range_to_channel_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.hostapd_hw_modes* }
%struct.hostapd_hw_modes = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.wpa_freq_range_list = type { i32 }

@HOSTAPD_CHAN_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.wpa_supplicant*, i8*)* @freq_range_to_channel_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @freq_range_to_channel_list(%struct.wpa_supplicant* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpa_freq_range_list, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hostapd_hw_modes*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %7, align 8
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %14, align 8
  %16 = icmp eq %struct.hostapd_hw_modes* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %86

18:                                               ; preds = %2
  %19 = call i32 @os_memset(%struct.wpa_freq_range_list* %6, i32 0, i32 4)
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @freq_range_list_parse(%struct.wpa_freq_range_list* %6, i8* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32* null, i32** %3, align 8
  br label %86

24:                                               ; preds = %18
  store i64 0, i64* %9, align 8
  br label %25

25:                                               ; preds = %78, %24
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %28 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %26, %30
  br i1 %31, label %32, label %81

32:                                               ; preds = %25
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %36, i64 %37
  store %struct.hostapd_hw_modes* %38, %struct.hostapd_hw_modes** %8, align 8
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %74, %32
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %42 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %77

45:                                               ; preds = %39
  %46 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %47 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @HOSTAPD_CHAN_DISABLED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %74

58:                                               ; preds = %45
  %59 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %60 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @freq_range_list_includes(%struct.wpa_freq_range_list* %6, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %58
  br label %74

71:                                               ; preds = %58
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @int_array_add_unique(i32** %7, i32 %72)
  br label %74

74:                                               ; preds = %71, %70, %57
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %39

77:                                               ; preds = %39
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %9, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %9, align 8
  br label %25

81:                                               ; preds = %25
  %82 = getelementptr inbounds %struct.wpa_freq_range_list, %struct.wpa_freq_range_list* %6, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @os_free(i32 %83)
  %85 = load i32*, i32** %7, align 8
  store i32* %85, i32** %3, align 8
  br label %86

86:                                               ; preds = %81, %23, %17
  %87 = load i32*, i32** %3, align 8
  ret i32* %87
}

declare dso_local i32 @os_memset(%struct.wpa_freq_range_list*, i32, i32) #1

declare dso_local i64 @freq_range_list_parse(%struct.wpa_freq_range_list*, i8*) #1

declare dso_local i32 @freq_range_list_includes(%struct.wpa_freq_range_list*, i32) #1

declare dso_local i32 @int_array_add_unique(i32**, i32) #1

declare dso_local i32 @os_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
