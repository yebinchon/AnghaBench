; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_update_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_update_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8*, i8*, i32 }
%struct.wpa_driver_capa = type { i32 }

@CFG_CHANGED_COUNTRY = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to set country code '%s'\00", align 1
@CFG_CHANGED_EXT_PW_BACKEND = common dso_local global i32 0, align 4
@CFG_CHANGED_SCHED_SCAN_PLANS = common dso_local global i32 0, align 4
@CFG_CHANGED_WOWLAN_TRIGGERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to update wowlan_triggers to '%s'\00", align 1
@CFG_CHANGED_DISABLE_BTM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_supplicant_update_config(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.wpa_driver_capa, align 4
  %5 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %6 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %7 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @CFG_CHANGED_COUNTRY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %61

14:                                               ; preds = %1
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %16 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %14
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %26 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %24
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  store i8 %41, i8* %42, align 1
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %44 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 1
  store i8 %49, i8* %50, align 1
  %51 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 2
  store i8 0, i8* %51, align 1
  %52 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %53 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %54 = call i64 @wpa_drv_set_country(%struct.wpa_supplicant* %52, i8* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %34
  %57 = load i32, i32* @MSG_ERROR, align 4
  %58 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %59 = call i32 @wpa_printf(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %56, %34
  br label %61

61:                                               ; preds = %60, %24, %14, %1
  %62 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %63 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @CFG_CHANGED_EXT_PW_BACKEND, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %72 = call i32 @wpas_init_ext_pw(%struct.wpa_supplicant* %71)
  br label %73

73:                                               ; preds = %70, %61
  %74 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %75 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @CFG_CHANGED_SCHED_SCAN_PLANS, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %84 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %85 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @wpas_sched_scan_plans_set(%struct.wpa_supplicant* %83, i32 %88)
  br label %90

90:                                               ; preds = %82, %73
  %91 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %92 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @CFG_CHANGED_WOWLAN_TRIGGERS, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %90
  %100 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %101 = call i32 @wpa_drv_get_capa(%struct.wpa_supplicant* %100, %struct.wpa_driver_capa* %4)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %99
  %105 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %106 = call i64 @wpas_set_wowlan_triggers(%struct.wpa_supplicant* %105, %struct.wpa_driver_capa* %4)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = load i32, i32* @MSG_ERROR, align 4
  %110 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %111 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @wpa_printf(i32 %109, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %108, %104, %99
  br label %117

117:                                              ; preds = %116, %90
  %118 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %119 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @CFG_CHANGED_DISABLE_BTM, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %117
  %127 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %128 = call i32 @wpa_supplicant_set_default_scan_ies(%struct.wpa_supplicant* %127)
  br label %129

129:                                              ; preds = %126, %117
  %130 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %131 = call i32 @wpas_p2p_update_config(%struct.wpa_supplicant* %130)
  %132 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %133 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  store i32 0, i32* %135, align 8
  ret void
}

declare dso_local i64 @wpa_drv_set_country(%struct.wpa_supplicant*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i32 @wpas_init_ext_pw(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_sched_scan_plans_set(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpa_drv_get_capa(%struct.wpa_supplicant*, %struct.wpa_driver_capa*) #1

declare dso_local i64 @wpas_set_wowlan_triggers(%struct.wpa_supplicant*, %struct.wpa_driver_capa*) #1

declare dso_local i32 @wpa_supplicant_set_default_scan_ies(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_p2p_update_config(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
