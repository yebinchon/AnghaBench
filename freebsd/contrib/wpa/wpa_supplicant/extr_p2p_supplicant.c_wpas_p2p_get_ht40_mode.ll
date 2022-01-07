; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_get_ht40_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_get_ht40_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oper_class_map = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.wpa_supplicant = type { i32 }
%struct.hostapd_hw_modes = type { i32 }

@global_op_class = common dso_local global %struct.oper_class_map* null, align 8
@NO_P2P_SUPP = common dso_local global i64 0, align 8
@HOSTAPD_MODE_IEEE80211A = common dso_local global i64 0, align 8
@BW40PLUS = common dso_local global i64 0, align 8
@BW40MINUS = common dso_local global i64 0, align 8
@ALLOWED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_p2p_get_ht40_mode(%struct.wpa_supplicant* %0, %struct.hostapd_hw_modes* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.hostapd_hw_modes*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.oper_class_map*, align 8
  %11 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.hostapd_hw_modes* %1, %struct.hostapd_hw_modes** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %91, %3
  %13 = load %struct.oper_class_map*, %struct.oper_class_map** @global_op_class, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %13, i64 %15
  %17 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %94

20:                                               ; preds = %12
  %21 = load %struct.oper_class_map*, %struct.oper_class_map** @global_op_class, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %21, i64 %23
  store %struct.oper_class_map* %24, %struct.oper_class_map** %10, align 8
  %25 = load %struct.oper_class_map*, %struct.oper_class_map** %10, align 8
  %26 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NO_P2P_SUPP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %91

31:                                               ; preds = %20
  %32 = load %struct.oper_class_map*, %struct.oper_class_map** %10, align 8
  %33 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  br label %35

35:                                               ; preds = %84, %31
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.oper_class_map*, %struct.oper_class_map** %10, align 8
  %38 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp sle i64 %36, %39
  br i1 %40, label %41, label %90

41:                                               ; preds = %35
  %42 = load %struct.oper_class_map*, %struct.oper_class_map** %10, align 8
  %43 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @HOSTAPD_MODE_IEEE80211A, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %63, label %47

47:                                               ; preds = %41
  %48 = load %struct.oper_class_map*, %struct.oper_class_map** %10, align 8
  %49 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @BW40PLUS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.oper_class_map*, %struct.oper_class_map** %10, align 8
  %55 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @BW40MINUS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %53, %47
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %53, %41
  br label %84

64:                                               ; preds = %59
  %65 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %66 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load %struct.oper_class_map*, %struct.oper_class_map** %10, align 8
  %69 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @wpas_p2p_verify_channel(%struct.wpa_supplicant* %65, %struct.hostapd_hw_modes* %66, i64 %67, i64 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @ALLOWED, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %64
  %76 = load %struct.oper_class_map*, %struct.oper_class_map** %10, align 8
  %77 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @BW40MINUS, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 -1, i32 1
  store i32 %82, i32* %4, align 4
  br label %95

83:                                               ; preds = %64
  br label %84

84:                                               ; preds = %83, %63
  %85 = load %struct.oper_class_map*, %struct.oper_class_map** %10, align 8
  %86 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %11, align 8
  %89 = add nsw i64 %88, %87
  store i64 %89, i64* %11, align 8
  br label %35

90:                                               ; preds = %35
  br label %91

91:                                               ; preds = %90, %30
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %12

94:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %75
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @wpas_p2p_verify_channel(%struct.wpa_supplicant*, %struct.hostapd_hw_modes*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
