; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_op_classes.c_wpas_supp_op_class_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_op_classes.c_wpas_supp_op_class_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.wpa_supplicant = type { i32 }
%struct.wpa_ssid = type { i32 }
%struct.wpabuf = type { i32 }

@CHANWIDTH_USE_HT = common dso_local global i32 0, align 4
@NUM_HOSTAPD_MODES = common dso_local global i64 0, align 8
@global_op_class_size = common dso_local global i64 0, align 8
@WLAN_EID_SUPPORTED_OPERATING_CLASSES = common dso_local global i64 0, align 8
@global_op_class = common dso_local global %struct.TYPE_3__* null, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to add supported operating classes IE\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Added supported operating classes IE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wpas_supp_op_class_ie(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1, i32 %2, i64* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.wpa_supplicant*, align 8
  %8 = alloca %struct.wpa_ssid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %7, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @CHANWIDTH_USE_HT, align 4
  %20 = call i64 @ieee80211_freq_to_channel_ext(i32 %18, i32 0, i32 %19, i64* %14, i64* %15)
  %21 = load i64, i64* @NUM_HOSTAPD_MODES, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %99

24:                                               ; preds = %5
  %25 = load i64, i64* @global_op_class_size, align 8
  %26 = add nsw i64 %25, 3
  %27 = call %struct.wpabuf* @wpabuf_alloc(i64 %26)
  store %struct.wpabuf* %27, %struct.wpabuf** %12, align 8
  %28 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %29 = icmp ne %struct.wpabuf* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i64 0, i64* %6, align 8
  br label %99

31:                                               ; preds = %24
  %32 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %33 = load i64, i64* @WLAN_EID_SUPPORTED_OPERATING_CLASSES, align 8
  %34 = call i32 @wpabuf_put_u8(%struct.wpabuf* %32, i64 %33)
  %35 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %36 = call i64* @wpabuf_put(%struct.wpabuf* %35, i32 1)
  store i64* %36, i64** %16, align 8
  %37 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %38 = load i64, i64* %14, align 8
  %39 = call i32 @wpabuf_put_u8(%struct.wpabuf* %37, i64 %38)
  store i64 0, i64* %13, align 8
  br label %40

40:                                               ; preds = %64, %31
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @global_op_class, align 8
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %40
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %49 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @global_op_class, align 8
  %51 = load i64, i64* %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %51
  %53 = call i64 @wpas_op_class_supported(%struct.wpa_supplicant* %48, %struct.wpa_ssid* %49, %struct.TYPE_3__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @global_op_class, align 8
  %58 = load i64, i64* %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @wpabuf_put_u8(%struct.wpabuf* %56, i64 %61)
  br label %63

63:                                               ; preds = %55, %47
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %13, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %13, align 8
  br label %40

67:                                               ; preds = %40
  %68 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %69 = call i64 @wpabuf_len(%struct.wpabuf* %68)
  %70 = sub i64 %69, 2
  %71 = load i64*, i64** %16, align 8
  store i64 %70, i64* %71, align 8
  %72 = load i64*, i64** %16, align 8
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %73, 2
  br i1 %74, label %80, label %75

75:                                               ; preds = %67
  %76 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %77 = call i64 @wpabuf_len(%struct.wpabuf* %76)
  %78 = load i64, i64* %11, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %75, %67
  %81 = load i32, i32* @MSG_ERROR, align 4
  %82 = call i32 @wpa_printf(i32 %81, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %17, align 8
  br label %95

83:                                               ; preds = %75
  %84 = load i64*, i64** %10, align 8
  %85 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %86 = call i32 @wpabuf_head(%struct.wpabuf* %85)
  %87 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %88 = call i64 @wpabuf_len(%struct.wpabuf* %87)
  %89 = call i32 @os_memcpy(i64* %84, i32 %86, i64 %88)
  %90 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %91 = call i64 @wpabuf_len(%struct.wpabuf* %90)
  store i64 %91, i64* %17, align 8
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %94 = call i32 @wpa_hexdump_buf(i32 %92, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), %struct.wpabuf* %93)
  br label %95

95:                                               ; preds = %83, %80
  %96 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %97 = call i32 @wpabuf_free(%struct.wpabuf* %96)
  %98 = load i64, i64* %17, align 8
  store i64 %98, i64* %6, align 8
  br label %99

99:                                               ; preds = %95, %30, %23
  %100 = load i64, i64* %6, align 8
  ret i64 %100
}

declare dso_local i64 @ieee80211_freq_to_channel_ext(i32, i32, i32, i64*, i64*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i64) #1

declare dso_local i64* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i64 @wpas_op_class_supported(%struct.wpa_supplicant*, %struct.wpa_ssid*, %struct.TYPE_3__*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memcpy(i64*, i32, i64) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
