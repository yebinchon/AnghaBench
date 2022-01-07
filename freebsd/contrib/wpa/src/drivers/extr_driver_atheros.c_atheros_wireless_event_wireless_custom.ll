; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_atheros.c_atheros_wireless_event_wireless_custom.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_atheros.c_atheros_wireless_event_wireless_custom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atheros_driver_data = type { i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }
%union.wpa_event_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Custom wireless event: '%s'\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"MLME-MICHAELMICFAILURE.indication\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"addr=\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"MLME-MICHAELMICFAILURE.indication without sender address ignored\00", align 1
@EVENT_MICHAEL_MIC_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"MLME-MICHAELMICFAILURE.indication with invalid MAC address\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"STA-TRAFFIC-STAT\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"rx_packets\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"tx_packets\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"rx_bytes\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"tx_bytes\00", align 1
@EVENT_WPS_BUTTON_PUSHED = common dso_local global i32 0, align 4
@MGMT_FRAM_TAG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atheros_driver_data*, i8*, i8*)* @atheros_wireless_event_wireless_custom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atheros_wireless_event_wireless_custom(%struct.atheros_driver_data* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.atheros_driver_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.wpa_event_data, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.atheros_driver_data* %0, %struct.atheros_driver_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 (i32, i8*, ...) @wpa_printf(i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @os_strncmp(i8* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 33)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %3
  %22 = load i32, i32* @ETH_ALEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %8, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i8* @os_strstr(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = call i32 (i32, i8*, ...) @wpa_printf(i32 %31, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %54

33:                                               ; preds = %21
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 5
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 @hwaddr_aton(i8* %36, i32* %25)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = call i32 @os_memset(%union.wpa_event_data* %11, i32 0, i32 16)
  %41 = bitcast %union.wpa_event_data* %11 to %struct.TYPE_3__*
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = bitcast %union.wpa_event_data* %11 to %struct.TYPE_3__*
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32* %25, i32** %44, align 8
  %45 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %4, align 8
  %46 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @EVENT_MICHAEL_MIC_FAILURE, align 4
  %49 = call i32 @wpa_supplicant_event(i32 %47, i32 %48, %union.wpa_event_data* %11)
  br label %53

50:                                               ; preds = %33
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = call i32 (i32, i8*, ...) @wpa_printf(i32 %51, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %39
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %53, %30
  %55 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %10, align 4
  switch i32 %56, label %135 [
    i32 0, label %57
    i32 1, label %134
  ]

57:                                               ; preds = %54
  br label %134

58:                                               ; preds = %3
  %59 = load i8*, i8** %5, align 8
  %60 = call i64 @strncmp(i8* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 16)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %133

62:                                               ; preds = %58
  %63 = load i8*, i8** %5, align 8
  store i8* %63, i8** %12, align 8
  br label %64

64:                                               ; preds = %130, %75, %62
  %65 = load i8*, i8** %12, align 8
  %66 = call i8* @os_strchr(i8* %65, i8 signext 10)
  store i8* %66, i8** %12, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %132

68:                                               ; preds = %64
  %69 = load i8*, i8** %12, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %12, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = call i8* @os_strchr(i8* %71, i8 signext 61)
  store i8* %72, i8** %13, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %64

76:                                               ; preds = %68
  %77 = load i8*, i8** %13, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %13, align 8
  store i8 0, i8* %77, align 1
  %79 = load i8*, i8** %13, align 8
  %80 = call i8* @strtoul(i8* %79, i32* null, i32 10)
  store i8* %80, i8** %14, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = call i64 @os_strcmp(i8* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %76
  %85 = load i8*, i8** %13, align 8
  %86 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %4, align 8
  %87 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = call i64 @hwaddr_aton(i8* %85, i32* %88)
  br label %130

90:                                               ; preds = %76
  %91 = load i8*, i8** %12, align 8
  %92 = call i64 @os_strcmp(i8* %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i8*, i8** %14, align 8
  %96 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %4, align 8
  %97 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  store i8* %95, i8** %98, align 8
  br label %129

99:                                               ; preds = %90
  %100 = load i8*, i8** %12, align 8
  %101 = call i64 @os_strcmp(i8* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i8*, i8** %14, align 8
  %105 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %4, align 8
  %106 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  store i8* %104, i8** %107, align 8
  br label %128

108:                                              ; preds = %99
  %109 = load i8*, i8** %12, align 8
  %110 = call i64 @os_strcmp(i8* %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i8*, i8** %14, align 8
  %114 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %4, align 8
  %115 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  store i8* %113, i8** %116, align 8
  br label %127

117:                                              ; preds = %108
  %118 = load i8*, i8** %12, align 8
  %119 = call i64 @os_strcmp(i8* %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i8*, i8** %14, align 8
  %123 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %4, align 8
  %124 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  store i8* %122, i8** %125, align 8
  br label %126

126:                                              ; preds = %121, %117
  br label %127

127:                                              ; preds = %126, %112
  br label %128

128:                                              ; preds = %127, %103
  br label %129

129:                                              ; preds = %128, %94
  br label %130

130:                                              ; preds = %129, %84
  %131 = load i8*, i8** %13, align 8
  store i8* %131, i8** %12, align 8
  br label %64

132:                                              ; preds = %64
  br label %133

133:                                              ; preds = %132, %58
  br label %134

134:                                              ; preds = %54, %133, %57
  ret void

135:                                              ; preds = %54
  unreachable
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @os_strstr(i8*, i8*) #1

declare dso_local i64 @hwaddr_aton(i8*, i32*) #1

declare dso_local i32 @os_memset(%union.wpa_event_data*, i32, i32) #1

declare dso_local i32 @wpa_supplicant_event(i32, i32, %union.wpa_event_data*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i8* @strtoul(i8*, i32*, i32) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
