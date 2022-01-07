; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_attr_process.c_wps_process_ap_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_attr_process.c_wps_process_ap_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_parse_attr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wps_credential = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"WPS: Processing AP Settings\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_process_ap_settings(%struct.wps_parse_attr* %0, %struct.wps_credential* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_parse_attr*, align 8
  %5 = alloca %struct.wps_credential*, align 8
  store %struct.wps_parse_attr* %0, %struct.wps_parse_attr** %4, align 8
  store %struct.wps_credential* %1, %struct.wps_credential** %5, align 8
  %6 = load i32, i32* @MSG_DEBUG, align 4
  %7 = call i32 @wpa_printf(i32 %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %9 = call i32 @os_memset(%struct.wps_credential* %8, i32 0, i32 4)
  %10 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %11 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %12 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %15 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @wps_process_cred_ssid(%struct.wps_credential* %10, i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %57, label %19

19:                                               ; preds = %2
  %20 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %21 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %22 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @wps_process_cred_auth_type(%struct.wps_credential* %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %57, label %26

26:                                               ; preds = %19
  %27 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %28 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %29 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @wps_process_cred_encr_type(%struct.wps_credential* %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %57, label %33

33:                                               ; preds = %26
  %34 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %35 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %36 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @wps_process_cred_network_key_idx(%struct.wps_credential* %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %33
  %41 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %42 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %43 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %46 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @wps_process_cred_network_key(%struct.wps_credential* %41, i32 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %40
  %51 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %52 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %53 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @wps_process_cred_mac_addr(%struct.wps_credential* %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50, %40, %33, %26, %19, %2
  store i32 -1, i32* %3, align 4
  br label %61

58:                                               ; preds = %50
  %59 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %60 = call i32 @wps_workaround_cred_key(%struct.wps_credential* %59)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %57
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memset(%struct.wps_credential*, i32, i32) #1

declare dso_local i64 @wps_process_cred_ssid(%struct.wps_credential*, i32, i32) #1

declare dso_local i64 @wps_process_cred_auth_type(%struct.wps_credential*, i32) #1

declare dso_local i64 @wps_process_cred_encr_type(%struct.wps_credential*, i32) #1

declare dso_local i64 @wps_process_cred_network_key_idx(%struct.wps_credential*, i32) #1

declare dso_local i64 @wps_process_cred_network_key(%struct.wps_credential*, i32, i32) #1

declare dso_local i64 @wps_process_cred_mac_addr(%struct.wps_credential*, i32) #1

declare dso_local i32 @wps_workaround_cred_key(%struct.wps_credential*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
