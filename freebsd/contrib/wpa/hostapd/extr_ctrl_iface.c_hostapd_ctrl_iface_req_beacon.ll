; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_req_beacon.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_req_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.wpabuf = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"req_mode=\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i8*, i8*, i64)* @hostapd_ctrl_iface_req_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_ctrl_iface_req_beacon(%struct.hostapd_data* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.wpabuf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  store i32 0, i32* %15, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @hwaddr_aton(i8* %22, i32* %21)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %79

26:                                               ; preds = %4
  %27 = load i8*, i8** %7, align 8
  %28 = call i8* @os_strchr(i8* %27, i8 signext 32)
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %79

32:                                               ; preds = %26
  %33 = load i8*, i8** %12, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = call i64 @os_strncmp(i8* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = load i8*, i8** %12, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 9
  %41 = call i32 @hex2byte(i8* %40)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %79

45:                                               ; preds = %38
  %46 = load i32, i32* %17, align 4
  store i32 %46, i32* %15, align 4
  %47 = load i8*, i8** %12, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 11
  store i8* %48, i8** %12, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = call i8* @os_strchr(i8* %49, i8 signext 32)
  store i8* %50, i8** %12, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %79

54:                                               ; preds = %45
  %55 = load i8*, i8** %12, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %12, align 8
  br label %57

57:                                               ; preds = %54, %32
  %58 = load i8*, i8** %12, align 8
  %59 = call %struct.wpabuf* @wpabuf_parse_bin(i8* %58)
  store %struct.wpabuf* %59, %struct.wpabuf** %13, align 8
  %60 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %61 = icmp ne %struct.wpabuf* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %79

63:                                               ; preds = %57
  %64 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %67 = call i32 @hostapd_send_beacon_req(%struct.hostapd_data* %64, i32* %21, i32 %65, %struct.wpabuf* %66)
  store i32 %67, i32* %14, align 4
  %68 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %69 = call i32 @wpabuf_free(%struct.wpabuf* %68)
  %70 = load i32, i32* %14, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %63
  %73 = load i8*, i8** %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @os_snprintf(i8* %73, i64 %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %72, %63
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %79

79:                                               ; preds = %77, %62, %53, %44, %31, %25
  %80 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @hwaddr_aton(i8*, i32*) #2

declare dso_local i8* @os_strchr(i8*, i8 signext) #2

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #2

declare dso_local i32 @hex2byte(i8*) #2

declare dso_local %struct.wpabuf* @wpabuf_parse_bin(i8*) #2

declare dso_local i32 @hostapd_send_beacon_req(%struct.hostapd_data*, i32*, i32, %struct.wpabuf*) #2

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #2

declare dso_local i32 @os_snprintf(i8*, i64, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
