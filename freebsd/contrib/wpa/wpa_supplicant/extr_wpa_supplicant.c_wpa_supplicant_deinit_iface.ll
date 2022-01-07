; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_deinit_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_deinit_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.wpa_supplicant*, i32*, i32*, i32*, i64, i32*, i32*, %struct.wpa_supplicant*, i32, %struct.wpa_supplicant*, %struct.wpa_supplicant*, %struct.wpa_global* }
%struct.wpa_global = type { %struct.wpa_supplicant* }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Remove remaining child interface %s from parent %s\00", align 1
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@WPA_EVENT_TERMINATING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, i32, i32)* @wpa_supplicant_deinit_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_supplicant_deinit_iface(%struct.wpa_supplicant* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_global*, align 8
  %8 = alloca %struct.wpa_supplicant*, align 8
  %9 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %11 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %10, i32 0, i32 12
  %12 = load %struct.wpa_global*, %struct.wpa_global** %11, align 8
  store %struct.wpa_global* %12, %struct.wpa_global** %7, align 8
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %15 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %14, i32 0, i32 10
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %17 = icmp eq %struct.wpa_supplicant* %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %20 = call i32 @wpas_p2p_group_remove(%struct.wpa_supplicant* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %3
  %22 = load %struct.wpa_global*, %struct.wpa_global** %7, align 8
  %23 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %22, i32 0, i32 0
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %23, align 8
  store %struct.wpa_supplicant* %24, %struct.wpa_supplicant** %8, align 8
  br label %25

25:                                               ; preds = %54, %50, %21
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %27 = icmp ne %struct.wpa_supplicant* %26, null
  br i1 %27, label %28, label %71

28:                                               ; preds = %25
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %30 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %29, i32 0, i32 11
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %30, align 8
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %33 = icmp eq %struct.wpa_supplicant* %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 10
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %36, align 8
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %39 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %38, i32 0, i32 11
  store %struct.wpa_supplicant* %37, %struct.wpa_supplicant** %39, align 8
  br label %40

40:                                               ; preds = %34, %28
  %41 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %43 = icmp eq %struct.wpa_supplicant* %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %46 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %45, i32 0, i32 10
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %46, align 8
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %49 = icmp ne %struct.wpa_supplicant* %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44, %40
  %51 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %52 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %51, i32 0, i32 8
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %52, align 8
  store %struct.wpa_supplicant* %53, %struct.wpa_supplicant** %8, align 8
  br label %25

54:                                               ; preds = %44
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %57 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %60 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @wpa_printf(i32 %55, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %61)
  %63 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  store %struct.wpa_supplicant* %63, %struct.wpa_supplicant** %9, align 8
  %64 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %65 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %64, i32 0, i32 8
  %66 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %65, align 8
  store %struct.wpa_supplicant* %66, %struct.wpa_supplicant** %8, align 8
  %67 = load %struct.wpa_global*, %struct.wpa_global** %7, align 8
  %68 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @wpa_supplicant_remove_iface(%struct.wpa_global* %67, %struct.wpa_supplicant* %68, i32 %69)
  br label %25

71:                                               ; preds = %25
  %72 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %73 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %75 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %71
  %79 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %80 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %81 = call i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant* %79, i32 %80)
  %82 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %83 = call i32 @wpa_drv_set_countermeasures(%struct.wpa_supplicant* %82, i32 0)
  %84 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %85 = call i32 @wpa_clear_keys(%struct.wpa_supplicant* %84, i32* null)
  br label %86

86:                                               ; preds = %78, %71
  %87 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %88 = call i32 @wpa_supplicant_cleanup(%struct.wpa_supplicant* %87)
  %89 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %90 = call i32 @wpas_p2p_deinit_iface(%struct.wpa_supplicant* %89)
  %91 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %92 = call i32 @wpas_ctrl_radio_work_flush(%struct.wpa_supplicant* %91)
  %93 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %94 = call i32 @radio_remove_interface(%struct.wpa_supplicant* %93)
  %95 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %96 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %86
  %100 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %101 = call i32 @wpa_drv_deinit(%struct.wpa_supplicant* %100)
  br label %102

102:                                              ; preds = %99, %86
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %107 = call i32 @wpas_notify_iface_removed(%struct.wpa_supplicant* %106)
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %113 = load i32, i32* @MSG_INFO, align 4
  %114 = load i32, i32* @WPA_EVENT_TERMINATING, align 4
  %115 = call i32 @wpa_msg(%struct.wpa_supplicant* %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %111, %108
  %117 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %118 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  %122 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %123 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @wpa_supplicant_ctrl_iface_deinit(i32* %124)
  %126 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %127 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %126, i32 0, i32 4
  store i32* null, i32** %127, align 8
  br label %128

128:                                              ; preds = %121, %116
  %129 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %130 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %140

133:                                              ; preds = %128
  %134 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %135 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @wpa_config_free(i32* %136)
  %138 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %139 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %138, i32 0, i32 2
  store i32* null, i32** %139, align 8
  br label %140

140:                                              ; preds = %133, %128
  %141 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %142 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %141, i32 0, i32 1
  %143 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %142, align 8
  %144 = call i32 @os_free(%struct.wpa_supplicant* %143)
  %145 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %146 = call i32 @os_free(%struct.wpa_supplicant* %145)
  ret void
}

declare dso_local i32 @wpas_p2p_group_remove(%struct.wpa_supplicant*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @wpa_supplicant_remove_iface(%struct.wpa_global*, %struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpa_drv_set_countermeasures(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpa_clear_keys(%struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @wpa_supplicant_cleanup(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_p2p_deinit_iface(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_ctrl_radio_work_flush(%struct.wpa_supplicant*) #1

declare dso_local i32 @radio_remove_interface(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_drv_deinit(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_notify_iface_removed(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i32) #1

declare dso_local i32 @wpa_supplicant_ctrl_iface_deinit(i32*) #1

declare dso_local i32 @wpa_config_free(i32*) #1

declare dso_local i32 @os_free(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
