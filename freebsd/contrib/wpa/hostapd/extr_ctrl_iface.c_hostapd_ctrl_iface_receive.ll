; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"recvfrom(ctrl_iface): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"CTRL: sendto failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@MSG_EXCESSIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"RX ctrl_iface\00", align 1
@COOKIE_LEN = common dso_local global i32 0, align 4
@cookie = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @hostapd_ctrl_iface_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_ctrl_iface_receive(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hostapd_data*, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_storage, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.hostapd_data*
  store %struct.hostapd_data* %18, %struct.hostapd_data** %7, align 8
  store i32 4, i32* %11, align 4
  %19 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  store i8* %19, i8** %13, align 8
  store i32 4096, i32* %14, align 4
  %20 = load i32, i32* @MSG_DEBUG, align 4
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %4, align 4
  %22 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %23 = bitcast %struct.sockaddr_storage* %10 to %struct.sockaddr*
  %24 = call i32 @recvfrom(i32 %21, i8* %22, i32 4095, i32 0, %struct.sockaddr* %23, i32* %11)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load i32, i32* @MSG_ERROR, align 4
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %82

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 %34
  store i8 0, i8* %35, align 1
  %36 = call i8* @os_malloc(i32 4096)
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  %41 = bitcast %struct.sockaddr_storage* %10 to %struct.sockaddr*
  %42 = load i32, i32* %11, align 4
  %43 = call i64 @sendto(i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5, i32 0, %struct.sockaddr* %41, i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 @strerror(i32 %47)
  %49 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %45, %39
  br label %82

51:                                               ; preds = %32
  %52 = load i8*, i8** %13, align 8
  %53 = call i64 @os_strcmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @MSG_EXCESSIVE, align 4
  store i32 %56, i32* %16, align 4
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i32, i32* %16, align 4
  %59 = load i8*, i8** %13, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @wpa_hexdump_ascii(i32 %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %59, i32 %60)
  %62 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @hostapd_ctrl_iface_receive_process(%struct.hostapd_data* %62, i8* %63, i8* %64, i32 4096, %struct.sockaddr_storage* %10, i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i8*, i8** %12, align 8
  %69 = load i32, i32* %15, align 4
  %70 = bitcast %struct.sockaddr_storage* %10 to %struct.sockaddr*
  %71 = load i32, i32* %11, align 4
  %72 = call i64 @sendto(i32 %67, i8* %68, i32 %69, i32 0, %struct.sockaddr* %70, i32 %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %57
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = load i32, i32* @errno, align 4
  %77 = call i32 @strerror(i32 %76)
  %78 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %74, %57
  %80 = load i8*, i8** %12, align 8
  %81 = call i32 @os_free(i8* %80)
  br label %82

82:                                               ; preds = %79, %50, %27
  ret void
}

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i64 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i8*, i32) #1

declare dso_local i32 @hostapd_ctrl_iface_receive_process(%struct.hostapd_data*, i8*, i8*, i32, %struct.sockaddr_storage*, i32) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
