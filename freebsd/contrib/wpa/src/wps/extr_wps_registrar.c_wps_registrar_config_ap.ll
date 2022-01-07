; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_registrar_config_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_registrar_config_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.wps_credential*)*, i32 }
%struct.wps_credential = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"WPS: encr_type=0x%x\00", align 1
@WPS_ENCR_NONE = common dso_local global i32 0, align 4
@WPS_ENCR_TKIP = common dso_local global i32 0, align 4
@WPS_ENCR_AES = common dso_local global i32 0, align 4
@WPS_ENCR_WEP = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"WPS: Reject new AP settings due to WEP configuration\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"WPS: Reject new AP settings due to invalid encr_type 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"WPS: Upgrade encr_type TKIP -> TKIP+AES\00", align 1
@WPS_AUTH_WPAPSK = common dso_local global i32 0, align 4
@WPS_AUTH_WPA2PSK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"WPS: Upgrade auth_type WPAPSK -> WPAPSK+WPA2PSK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_registrar_config_ap(%struct.wps_registrar* %0, %struct.wps_credential* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_registrar*, align 8
  %5 = alloca %struct.wps_credential*, align 8
  store %struct.wps_registrar* %0, %struct.wps_registrar** %4, align 8
  store %struct.wps_credential* %1, %struct.wps_credential** %5, align 8
  %6 = load i32, i32* @MSG_DEBUG, align 4
  %7 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %8 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i32, i8*, ...) @wpa_printf(i32 %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %12 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @WPS_ENCR_NONE, align 4
  %15 = load i32, i32* @WPS_ENCR_TKIP, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @WPS_ENCR_AES, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %13, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %2
  %22 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %23 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @WPS_ENCR_WEP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @MSG_INFO, align 4
  %30 = call i32 (i32, i8*, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %94

31:                                               ; preds = %21
  %32 = load i32, i32* @MSG_INFO, align 4
  %33 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %34 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  store i32 -1, i32* %3, align 4
  br label %94

37:                                               ; preds = %2
  %38 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %39 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @WPS_ENCR_TKIP, align 4
  %42 = load i32, i32* @WPS_ENCR_AES, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = load i32, i32* @WPS_ENCR_TKIP, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = call i32 (i32, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32, i32* @WPS_ENCR_AES, align 4
  %51 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %52 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %47, %37
  %56 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %57 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %60 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = call i32 (i32, i8*, ...) @wpa_printf(i32 %66, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %68 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %69 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %70 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %65, %55
  %74 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %75 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32 (i32, %struct.wps_credential*)*, i32 (i32, %struct.wps_credential*)** %77, align 8
  %79 = icmp ne i32 (i32, %struct.wps_credential*)* %78, null
  br i1 %79, label %80, label %93

80:                                               ; preds = %73
  %81 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %82 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32 (i32, %struct.wps_credential*)*, i32 (i32, %struct.wps_credential*)** %84, align 8
  %86 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %87 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %92 = call i32 %85(i32 %90, %struct.wps_credential* %91)
  store i32 %92, i32* %3, align 4
  br label %94

93:                                               ; preds = %73
  store i32 -1, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %80, %31, %28
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
