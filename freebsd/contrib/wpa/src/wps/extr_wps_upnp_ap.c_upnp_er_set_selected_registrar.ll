; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_ap.c_upnp_er_set_selected_registrar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_ap.c_upnp_er_set_selected_registrar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { i32 }
%struct.subscription = type { i32, i32, i32, i32, %struct.wps_registrar* }
%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i64*, i32, i32, i64, i64, i64 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"WPS: SetSelectedRegistrar attributes\00", align 1
@upnp_er_set_selected_timeout = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"WPS: SetSelectedRegistrar: Disable Selected Registrar\00", align 1
@DEV_PW_DEFAULT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WPS_MAX_AUTHORIZED_MACS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"WPS: Add broadcast AuthorizedMACs for WPS 1.0 ER\00", align 1
@WPS_PBC_WALK_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @upnp_er_set_selected_registrar(%struct.wps_registrar* %0, %struct.subscription* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wps_registrar*, align 8
  %6 = alloca %struct.subscription*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.wps_parse_attr, align 8
  %9 = alloca i32, align 4
  store %struct.wps_registrar* %0, %struct.wps_registrar** %5, align 8
  store %struct.subscription* %1, %struct.subscription** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  %10 = load i32, i32* @MSG_MSGDUMP, align 4
  %11 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %12 = call i32 @wpa_hexdump_buf(i32 %10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.wpabuf* %11)
  %13 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %14 = call i64 @wps_validate_upnp_set_selected_registrar(%struct.wpabuf* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %18 = call i64 @wps_parse_msg(%struct.wpabuf* %17, %struct.wps_parse_attr* %8)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %3
  store i32 -1, i32* %4, align 4
  br label %119

21:                                               ; preds = %16
  %22 = load %struct.wps_registrar*, %struct.wps_registrar** %5, align 8
  %23 = load %struct.subscription*, %struct.subscription** %6, align 8
  %24 = getelementptr inbounds %struct.subscription, %struct.subscription* %23, i32 0, i32 4
  store %struct.wps_registrar* %22, %struct.wps_registrar** %24, align 8
  %25 = load i32, i32* @upnp_er_set_selected_timeout, align 4
  %26 = load %struct.subscription*, %struct.subscription** %6, align 8
  %27 = load %struct.wps_registrar*, %struct.wps_registrar** %5, align 8
  %28 = call i32 @eloop_cancel_timeout(i32 %25, %struct.subscription* %26, %struct.wps_registrar* %27)
  %29 = load %struct.subscription*, %struct.subscription** %6, align 8
  %30 = getelementptr inbounds %struct.subscription, %struct.subscription* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @os_memset(i32 %31, i32 0, i32 4)
  %33 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = icmp eq i64* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %21
  %37 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36, %21
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = call i32 @wpa_printf(i32 %42, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.subscription*, %struct.subscription** %6, align 8
  %45 = getelementptr inbounds %struct.subscription, %struct.subscription* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  br label %116

46:                                               ; preds = %36
  %47 = load %struct.subscription*, %struct.subscription** %6, align 8
  %48 = getelementptr inbounds %struct.subscription, %struct.subscription* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @WPA_GET_BE16(i64 %54)
  br label %58

56:                                               ; preds = %46
  %57 = load i32, i32* @DEV_PW_DEFAULT, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi i32 [ %55, %52 ], [ %57, %56 ]
  %60 = load %struct.subscription*, %struct.subscription** %6, align 8
  %61 = getelementptr inbounds %struct.subscription, %struct.subscription* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @WPA_GET_BE16(i64 %67)
  br label %70

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %65
  %71 = phi i32 [ %68, %65 ], [ -1, %69 ]
  %72 = load %struct.subscription*, %struct.subscription** %6, align 8
  %73 = getelementptr inbounds %struct.subscription, %struct.subscription* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %97

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @ETH_ALEN, align 4
  %81 = sdiv i32 %79, %80
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @WPS_MAX_AUTHORIZED_MACS, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* @WPS_MAX_AUTHORIZED_MACS, align 4
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %85, %77
  %88 = load %struct.subscription*, %struct.subscription** %6, align 8
  %89 = getelementptr inbounds %struct.subscription, %struct.subscription* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @ETH_ALEN, align 4
  %95 = mul nsw i32 %93, %94
  %96 = call i32 @os_memcpy(i32 %90, i64 %92, i32 %95)
  br label %110

97:                                               ; preds = %70
  %98 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* @MSG_DEBUG, align 4
  %103 = call i32 @wpa_printf(i32 %102, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %104 = load %struct.subscription*, %struct.subscription** %6, align 8
  %105 = getelementptr inbounds %struct.subscription, %struct.subscription* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @ETH_ALEN, align 4
  %108 = call i32 @os_memset(i32 %106, i32 255, i32 %107)
  br label %109

109:                                              ; preds = %101, %97
  br label %110

110:                                              ; preds = %109, %87
  %111 = load i32, i32* @WPS_PBC_WALK_TIME, align 4
  %112 = load i32, i32* @upnp_er_set_selected_timeout, align 4
  %113 = load %struct.subscription*, %struct.subscription** %6, align 8
  %114 = load %struct.wps_registrar*, %struct.wps_registrar** %5, align 8
  %115 = call i32 @eloop_register_timeout(i32 %111, i32 0, i32 %112, %struct.subscription* %113, %struct.wps_registrar* %114)
  br label %116

116:                                              ; preds = %110, %41
  %117 = load %struct.wps_registrar*, %struct.wps_registrar** %5, align 8
  %118 = call i32 @wps_registrar_selected_registrar_changed(%struct.wps_registrar* %117, i32 0)
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %116, %20
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i64 @wps_validate_upnp_set_selected_registrar(%struct.wpabuf*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.subscription*, %struct.wps_registrar*) #1

declare dso_local i32 @os_memset(i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @WPA_GET_BE16(i64) #1

declare dso_local i32 @os_memcpy(i32, i64, i32) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.subscription*, %struct.wps_registrar*) #1

declare dso_local i32 @wps_registrar_selected_registrar_changed(%struct.wps_registrar*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
