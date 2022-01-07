; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_attr_build.c_wps_build_auth_type_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_attr_build.c_wps_build_auth_type_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i32 }
%struct.wpabuf = type { i32 }

@WPS_AUTH_TYPES = common dso_local global i32 0, align 4
@WPS_AUTH_WPA = common dso_local global i32 0, align 4
@WPS_AUTH_WPA2 = common dso_local global i32 0, align 4
@WPS_AUTH_SHARED = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"WPS:  * Authentication Type Flags (0x%x)\00", align 1
@ATTR_AUTH_TYPE_FLAGS = common dso_local global i32 0, align 4
@wps_force_auth_types = common dso_local global i32 0, align 4
@wps_force_auth_types_in_use = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_build_auth_type_flags(%struct.wps_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32, align 4
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %6 = load i32, i32* @WPS_AUTH_TYPES, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @WPS_AUTH_WPA, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @WPS_AUTH_WPA2, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @WPS_AUTH_SHARED, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %23 = load i32, i32* @ATTR_AUTH_TYPE_FLAGS, align 4
  %24 = call i32 @wpabuf_put_be16(%struct.wpabuf* %22, i32 %23)
  %25 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %26 = call i32 @wpabuf_put_be16(%struct.wpabuf* %25, i32 2)
  %27 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @wpabuf_put_be16(%struct.wpabuf* %27, i32 %28)
  ret i32 0
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
