; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_build_ap_setup_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_build_ap_setup_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_context = type { i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"WPS:  * AP Setup Locked\00", align 1
@ATTR_AP_SETUP_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_context*, %struct.wpabuf*)* @wps_build_ap_setup_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_build_ap_setup_locked(%struct.wps_context* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.wps_context*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  store %struct.wps_context* %0, %struct.wps_context** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %5 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %6 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %11 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 2
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = call i32 @wpa_printf(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %18 = load i32, i32* @ATTR_AP_SETUP_LOCKED, align 4
  %19 = call i32 @wpabuf_put_be16(%struct.wpabuf* %17, i32 %18)
  %20 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %21 = call i32 @wpabuf_put_be16(%struct.wpabuf* %20, i32 1)
  %22 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %23 = call i32 @wpabuf_put_u8(%struct.wpabuf* %22, i32 1)
  br label %24

24:                                               ; preds = %14, %9, %2
  ret i32 0
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
