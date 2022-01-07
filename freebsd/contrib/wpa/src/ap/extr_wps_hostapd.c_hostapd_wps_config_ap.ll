; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_hostapd_wps_config_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_hostapd_wps_config_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wps_credential = type { i64, i64, i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"OPEN\00", align 1
@WPS_AUTH_OPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"WPAPSK\00", align 1
@WPS_AUTH_WPAPSK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"WPA2PSK\00", align 1
@WPS_AUTH_WPA2PSK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@WPS_ENCR_NONE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"TKIP\00", align 1
@WPS_ENCR_TKIP = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"CCMP\00", align 1
@WPS_ENCR_AES = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_wps_config_ap(%struct.hostapd_data* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostapd_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.wps_credential, align 8
  %13 = alloca i64, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = call i32 @os_memset(%struct.wps_credential* %12, i32 0, i32 40)
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @os_strlen(i8* %15)
  store i64 %16, i64* %13, align 8
  %17 = load i64, i64* %13, align 8
  %18 = and i64 %17, 1
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %5
  %21 = load i64, i64* %13, align 8
  %22 = icmp ugt i64 %21, 8
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %12, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %13, align 8
  %28 = udiv i64 %27, 2
  %29 = call i64 @hexstr2bin(i8* %24, i32 %26, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23, %20, %5
  store i32 -1, i32* %6, align 4
  br label %122

32:                                               ; preds = %23
  %33 = load i64, i64* %13, align 8
  %34 = udiv i64 %33, 2
  %35 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %12, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i64 @os_strncmp(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @WPS_AUTH_OPEN, align 4
  %41 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %12, i32 0, i32 4
  store i32 %40, i32* %41, align 8
  br label %59

42:                                               ; preds = %32
  %43 = load i8*, i8** %9, align 8
  %44 = call i64 @os_strncmp(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %48 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %12, i32 0, i32 4
  store i32 %47, i32* %48, align 8
  br label %58

49:                                               ; preds = %42
  %50 = load i8*, i8** %9, align 8
  %51 = call i64 @os_strncmp(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %55 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %12, i32 0, i32 4
  store i32 %54, i32* %55, align 8
  br label %57

56:                                               ; preds = %49
  store i32 -1, i32* %6, align 4
  br label %122

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57, %46
  br label %59

59:                                               ; preds = %58, %39
  %60 = load i8*, i8** %10, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %87

62:                                               ; preds = %59
  %63 = load i8*, i8** %10, align 8
  %64 = call i64 @os_strncmp(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i8*, i8** @WPS_ENCR_NONE, align 8
  %68 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %12, i32 0, i32 3
  store i8* %67, i8** %68, align 8
  br label %86

69:                                               ; preds = %62
  %70 = load i8*, i8** %10, align 8
  %71 = call i64 @os_strncmp(i8* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i8*, i8** @WPS_ENCR_TKIP, align 8
  %75 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %12, i32 0, i32 3
  store i8* %74, i8** %75, align 8
  br label %85

76:                                               ; preds = %69
  %77 = load i8*, i8** %10, align 8
  %78 = call i64 @os_strncmp(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i8*, i8** @WPS_ENCR_AES, align 8
  %82 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %12, i32 0, i32 3
  store i8* %81, i8** %82, align 8
  br label %84

83:                                               ; preds = %76
  store i32 -1, i32* %6, align 4
  br label %122

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84, %73
  br label %86

86:                                               ; preds = %85, %66
  br label %90

87:                                               ; preds = %59
  %88 = load i8*, i8** @WPS_ENCR_NONE, align 8
  %89 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %12, i32 0, i32 3
  store i8* %88, i8** %89, align 8
  br label %90

90:                                               ; preds = %87, %86
  %91 = load i8*, i8** %11, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %115

93:                                               ; preds = %90
  %94 = load i8*, i8** %11, align 8
  %95 = call i64 @os_strlen(i8* %94)
  store i64 %95, i64* %13, align 8
  %96 = load i64, i64* %13, align 8
  %97 = and i64 %96, 1
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %93
  %100 = load i64, i64* %13, align 8
  %101 = icmp ugt i64 %100, 8
  br i1 %101, label %110, label %102

102:                                              ; preds = %99
  %103 = load i8*, i8** %11, align 8
  %104 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %12, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i64, i64* %13, align 8
  %107 = udiv i64 %106, 2
  %108 = call i64 @hexstr2bin(i8* %103, i32 %105, i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102, %99, %93
  store i32 -1, i32* %6, align 4
  br label %122

111:                                              ; preds = %102
  %112 = load i64, i64* %13, align 8
  %113 = udiv i64 %112, 2
  %114 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %12, i32 0, i32 1
  store i64 %113, i64* %114, align 8
  br label %115

115:                                              ; preds = %111, %90
  %116 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %117 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @wps_registrar_config_ap(i32 %120, %struct.wps_credential* %12)
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %115, %110, %83, %56, %31
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @os_memset(%struct.wps_credential*, i32, i32) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i64 @hexstr2bin(i8*, i32, i64) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @wps_registrar_config_ap(i32, %struct.wps_credential*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
