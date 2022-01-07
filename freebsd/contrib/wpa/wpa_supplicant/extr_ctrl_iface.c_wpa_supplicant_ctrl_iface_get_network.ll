; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_ctrl_iface_get_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_ctrl_iface_get_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_ssid = type { i32 }

@MSG_EXCESSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"CTRL_IFACE: GET_NETWORK id=%d name='%s'\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"CTRL_IFACE: Could not find network id=%d\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"CTRL_IFACE: Failed to get network variable '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*, i8*, i64)* @wpa_supplicant_ctrl_iface_get_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_ctrl_iface_get_network(%struct.wpa_supplicant* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.wpa_ssid*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* @os_strchr(i8* %15, i8 signext 32)
  store i8* %16, i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* %9, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %4
  store i32 -1, i32* %5, align 4
  br label %69

23:                                               ; preds = %19
  %24 = load i8*, i8** %13, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %13, align 8
  store i8 0, i8* %24, align 1
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @atoi(i8* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @MSG_EXCESSIVE, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i8*, i8** %13, align 8
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %29, i8* %30)
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %33 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call %struct.wpa_ssid* @wpa_config_get_network(i32 %34, i32 %35)
  store %struct.wpa_ssid* %36, %struct.wpa_ssid** %12, align 8
  %37 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %38 = icmp eq %struct.wpa_ssid* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %23
  %40 = load i32, i32* @MSG_EXCESSIVE, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  store i32 -1, i32* %5, align 4
  br label %69

43:                                               ; preds = %23
  %44 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = call i8* @wpa_config_get_no_key(%struct.wpa_ssid* %44, i8* %45)
  store i8* %46, i8** %14, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @MSG_EXCESSIVE, align 4
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 (i32, i8*, ...) @wpa_printf(i32 %50, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  store i32 -1, i32* %5, align 4
  br label %69

53:                                               ; preds = %43
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i64 @os_strlcpy(i8* %54, i8* %55, i64 %56)
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp uge i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i8*, i8** %14, align 8
  %63 = call i32 @os_free(i8* %62)
  store i32 -1, i32* %5, align 4
  br label %69

64:                                               ; preds = %53
  %65 = load i8*, i8** %14, align 8
  %66 = call i32 @os_free(i8* %65)
  %67 = load i64, i64* %11, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %64, %61, %49, %39, %22
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.wpa_ssid* @wpa_config_get_network(i32, i32) #1

declare dso_local i8* @wpa_config_get_no_key(%struct.wpa_ssid*, i8*) #1

declare dso_local i64 @os_strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
