; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_build_cred_auth_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_build_cred_auth_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }

@WPS_AUTH_WPA2PSK = common dso_local global i32 0, align 4
@WPS_AUTH_WPAPSK = common dso_local global i32 0, align 4
@WPS_AUTH_OPEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"WPS:  * Authentication Type (0x%x)\00", align 1
@ATTR_AUTH_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*)* @wps_build_cred_auth_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_build_cred_auth_type(%struct.wps_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32, align 4
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %6 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %7 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  store i32 %16, i32* %5, align 4
  br label %33

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  store i32 %23, i32* %5, align 4
  br label %32

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @WPS_AUTH_OPEN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @WPS_AUTH_OPEN, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %24
  br label %32

32:                                               ; preds = %31, %22
  br label %33

33:                                               ; preds = %32, %15
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @wpa_printf(i32 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %38 = load i32, i32* @ATTR_AUTH_TYPE, align 4
  %39 = call i32 @wpabuf_put_be16(%struct.wpabuf* %37, i32 %38)
  %40 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %41 = call i32 @wpabuf_put_be16(%struct.wpabuf* %40, i32 2)
  %42 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @wpabuf_put_be16(%struct.wpabuf* %42, i32 %43)
  ret i32 0
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
