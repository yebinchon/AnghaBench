; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, i32, i32, %struct.TYPE_2__*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"CTRL_IFACE SET '%s'='%s'\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"deny_mac_file\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"accept_mac_file\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"wme_ac_\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"wmm_ac_\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Failed to update beacons with WMM parameters\00", align 1
@dpp_test = common dso_local global i8* null, align 8
@wps_corrupt_pkhash = common dso_local global i32 0, align 4
@wps_testing_dummy_cred = common dso_local global i32 0, align 4
@wps_version_number = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i8*)* @hostapd_ctrl_iface_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_ctrl_iface_set(%struct.hostapd_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = call i8* @os_strchr(i8* %8, i8 signext 32)
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %73

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %6, align 8
  store i8 0, i8* %14, align 1
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %18)
  %20 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %21 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %24 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @hostapd_set_iface(i32 %22, %struct.TYPE_2__* %25, i8* %26, i8* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %13
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %73

33:                                               ; preds = %13
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @os_strcasecmp(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %39 = call i32 @hostapd_disassoc_deny_mac(%struct.hostapd_data* %38)
  br label %71

40:                                               ; preds = %33
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @os_strcasecmp(i8* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %46 = call i32 @hostapd_disassoc_accept_mac(%struct.hostapd_data* %45)
  br label %70

47:                                               ; preds = %40
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 @os_strncmp(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %5, align 8
  %53 = call i64 @os_strncmp(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %51, %47
  %56 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %57 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %61 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @ieee802_11_update_beacons(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = call i32 (i32, i8*, ...) @wpa_printf(i32 %66, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %55
  br label %69

69:                                               ; preds = %68, %51
  br label %70

70:                                               ; preds = %69, %44
  br label %71

71:                                               ; preds = %70, %37
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %31, %12
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @hostapd_set_iface(i32, %struct.TYPE_2__*, i8*, i8*) #1

declare dso_local i64 @os_strcasecmp(i8*, i8*) #1

declare dso_local i32 @hostapd_disassoc_deny_mac(%struct.hostapd_data*) #1

declare dso_local i32 @hostapd_disassoc_accept_mac(%struct.hostapd_data*) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i64 @ieee802_11_update_beacons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
