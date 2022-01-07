; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wmm_ac.c_wmm_ac_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wmm_ac.c_wmm_ac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.wmm_ac_assoc_data*, i32*, i64, i32 }
%struct.wmm_ac_assoc_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wmm_params = type { i32, i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"WMM AC: Already initialized\00", align 1
@WMM_PARAMS_UAPSD_QUEUES_INFO = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"WMM AC: U-APSD queues=0x%x\00", align 1
@WMM_AC_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i64*, i64, %struct.wmm_params*)* @wmm_ac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmm_ac_init(%struct.wpa_supplicant* %0, i64* %1, i64 %2, %struct.wmm_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wmm_params*, align 8
  %10 = alloca %struct.wmm_ac_assoc_data*, align 8
  %11 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.wmm_params* %3, %struct.wmm_params** %9, align 8
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 0
  %14 = load %struct.wmm_ac_assoc_data*, %struct.wmm_ac_assoc_data** %13, align 8
  %15 = icmp ne %struct.wmm_ac_assoc_data* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @MSG_ERROR, align 4
  %18 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %80

19:                                               ; preds = %4
  %20 = load i64*, i64** %7, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.wmm_params*, %struct.wmm_params** %9, align 8
  %24 = getelementptr inbounds %struct.wmm_params, %struct.wmm_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @WMM_PARAMS_UAPSD_QUEUES_INFO, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22, %19
  store i32 -1, i32* %5, align 4
  br label %80

30:                                               ; preds = %22
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %32 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @os_memset(i32 %33, i32 0, i32 4)
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %38 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call %struct.wmm_ac_assoc_data* @wmm_ac_process_param_elem(%struct.wpa_supplicant* %39, i64* %40, i64 %41)
  store %struct.wmm_ac_assoc_data* %42, %struct.wmm_ac_assoc_data** %10, align 8
  %43 = load %struct.wmm_ac_assoc_data*, %struct.wmm_ac_assoc_data** %10, align 8
  %44 = icmp ne %struct.wmm_ac_assoc_data* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %30
  store i32 -1, i32* %5, align 4
  br label %80

46:                                               ; preds = %30
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = load %struct.wmm_params*, %struct.wmm_params** %9, align 8
  %49 = getelementptr inbounds %struct.wmm_params, %struct.wmm_params* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @wpa_printf(i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i64 0, i64* %11, align 8
  br label %52

52:                                               ; preds = %73, %46
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @WMM_AC_NUM, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %52
  %57 = load %struct.wmm_params*, %struct.wmm_params** %9, align 8
  %58 = getelementptr inbounds %struct.wmm_params, %struct.wmm_params* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @BIT(i64 %60)
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = load %struct.wmm_ac_assoc_data*, %struct.wmm_ac_assoc_data** %10, align 8
  %68 = getelementptr inbounds %struct.wmm_ac_assoc_data, %struct.wmm_ac_assoc_data* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %66, i32* %72, align 4
  br label %73

73:                                               ; preds = %56
  %74 = load i64, i64* %11, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %11, align 8
  br label %52

76:                                               ; preds = %52
  %77 = load %struct.wmm_ac_assoc_data*, %struct.wmm_ac_assoc_data** %10, align 8
  %78 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %79 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %78, i32 0, i32 0
  store %struct.wmm_ac_assoc_data* %77, %struct.wmm_ac_assoc_data** %79, align 8
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %76, %45, %29, %16
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_memset(i32, i32, i32) #1

declare dso_local %struct.wmm_ac_assoc_data* @wmm_ac_process_param_elem(%struct.wpa_supplicant*, i64*, i64) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
