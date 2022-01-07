; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_req_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_req_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@RRM_RANGE_REQ_MAX_RESPONDERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"CTRL: REQ_RANGE - Bad destination address\00", align 1
@WLAN_RRM_RANGE_REQ_MAX_MIN_AP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"CTRL: REQ_RANGE: Too many responders\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"CTRL: REQ_RANGE: Bad responder address\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"CTRL: REQ_RANGE - No FTM responder address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i8*)* @hostapd_ctrl_iface_req_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_ctrl_iface_req_range(%struct.hostapd_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  store i8* null, i8** %9, align 8
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = load i32, i32* @RRM_RANGE_REQ_MAX_RESPONDERS, align 4
  %21 = mul nsw i32 %19, %20
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @str_token(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %9)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @hwaddr_aton(i8* %29, i32* %18)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %2
  %33 = load i32, i32* @MSG_INFO, align 4
  %34 = call i32 @wpa_printf(i32 %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %105

35:                                               ; preds = %28
  %36 = load i8*, i8** %5, align 8
  %37 = call i8* @str_token(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %9)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %105

41:                                               ; preds = %35
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @atoi(i8* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %10, align 4
  %48 = icmp sgt i32 %47, 65535
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %41
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %105

50:                                               ; preds = %46
  %51 = load i8*, i8** %5, align 8
  %52 = call i8* @str_token(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %9)
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %105

56:                                               ; preds = %50
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @atoi(i8* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @WLAN_RRM_RANGE_REQ_MAX_MIN_AP, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %56
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %105

66:                                               ; preds = %61
  store i32 0, i32* %13, align 4
  br label %67

67:                                               ; preds = %90, %66
  %68 = load i8*, i8** %5, align 8
  %69 = call i8* @str_token(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %9)
  store i8* %69, i8** %8, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %93

71:                                               ; preds = %67
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @RRM_RANGE_REQ_MAX_RESPONDERS, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* @MSG_INFO, align 4
  %77 = call i32 @wpa_printf(i32 %76, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %105

78:                                               ; preds = %71
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @ETH_ALEN, align 4
  %82 = mul i32 %80, %81
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %23, i64 %83
  %85 = call i64 @hwaddr_aton(i8* %79, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = load i32, i32* @MSG_INFO, align 4
  %89 = call i32 @wpa_printf(i32 %88, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %105

90:                                               ; preds = %78
  %91 = load i32, i32* %13, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %67

93:                                               ; preds = %67
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* @MSG_INFO, align 4
  %98 = call i32 @wpa_printf(i32 %97, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %105

99:                                               ; preds = %93
  %100 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @hostapd_send_range_req(%struct.hostapd_data* %100, i32* %18, i32 %101, i32 %102, i32* %23, i32 %103)
  store i32 %104, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %105

105:                                              ; preds = %99, %96, %87, %75, %65, %55, %49, %40, %32
  %106 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @str_token(i8*, i8*, i8**) #2

declare dso_local i64 @hwaddr_aton(i8*, i32*) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @hostapd_send_range_req(%struct.hostapd_data*, i32*, i32, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
