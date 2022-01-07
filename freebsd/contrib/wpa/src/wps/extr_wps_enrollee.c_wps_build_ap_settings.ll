; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_build_ap_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_build_ap_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"WPS:  * AP Settings (pre-configured)\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"WPS:  * AP Settings based on current configuration\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"WPS: Plaintext AP Settings\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*)* @wps_build_ap_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_build_ap_settings(%struct.wps_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.wps_data* %0, %struct.wps_data** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %9 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %10 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %19 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %20 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %25 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @wpabuf_put_data(%struct.wpabuf* %18, i64 %23, i32 %28)
  store i32 0, i32* %3, align 4
  br label %75

30:                                               ; preds = %2
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = call i32 @wpa_printf(i32 %31, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %34 = call i32* @wpabuf_put(%struct.wpabuf* %33, i32 0)
  store i32* %34, i32** %6, align 8
  %35 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %36 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %37 = call i64 @wps_build_cred_ssid(%struct.wps_data* %35, %struct.wpabuf* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %30
  %40 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %41 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %42 = call i64 @wps_build_cred_mac_addr(%struct.wps_data* %40, %struct.wpabuf* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %39
  %45 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %46 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %47 = call i64 @wps_build_cred_auth_type(%struct.wps_data* %45, %struct.wpabuf* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %51 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %52 = call i64 @wps_build_cred_encr_type(%struct.wps_data* %50, %struct.wpabuf* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %56 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %57 = call i64 @wps_build_cred_network_key(%struct.wps_data* %55, %struct.wpabuf* %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %54, %49, %44, %39, %30
  %60 = phi i1 [ true, %49 ], [ true, %44 ], [ true, %39 ], [ true, %30 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %8, align 4
  %62 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %63 = call i32* @wpabuf_put(%struct.wpabuf* %62, i32 0)
  store i32* %63, i32** %7, align 8
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = ptrtoint i32* %66 to i64
  %69 = ptrtoint i32* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = call i32 @wpa_hexdump_key(i32 %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32* %65, i32 %72)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %59, %15
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i64, i32) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_cred_ssid(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_cred_mac_addr(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_cred_auth_type(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_cred_encr_type(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_cred_network_key(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
