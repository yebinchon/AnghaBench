; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_ssdp.c_ssdp_listener_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_ssdp.c_ssdp_listener_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upnp_wps_device_sm = type { i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr = type { i32 }

@MULTICAST_MAX_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"NOTIFY \00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"WPS UPnP: Received SSDP packet from %s:%d: %s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"M-SEARCH\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @ssdp_listener_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssdp_listener_handler(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.upnp_wps_device_sm*, align 8
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.upnp_wps_device_sm*
  store %struct.upnp_wps_device_sm* %16, %struct.upnp_wps_device_sm** %7, align 8
  %17 = load i32, i32* @MULTICAST_MAX_READ, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  store i32 8, i32* %9, align 4
  %21 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %7, align 8
  %22 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub i64 %18, 1
  %25 = trunc i64 %24 to i32
  %26 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %27 = call i32 @recvfrom(i32 %23, i8* %20, i32 %25, i32 0, %struct.sockaddr* %26, i32* %9)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 1, i32* %14, align 4
  br label %71

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %20, i64 %33
  store i8 0, i8* %34, align 1
  %35 = call i64 @str_starts(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* %14, align 4
  br label %71

38:                                               ; preds = %31
  %39 = call i8* @os_strchr(i8* %20, i8 signext 10)
  store i8* %39, i8** %13, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i8*, i8** %13, align 8
  store i8 0, i8* %43, align 1
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i32, i32* @MSG_MSGDUMP, align 4
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @inet_ntoa(i32 %47)
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ntohs(i32 %50)
  %52 = call i32 @wpa_printf(i32 %45, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %51, i8* %20)
  %53 = load i8*, i8** %13, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i8*, i8** %13, align 8
  store i8 10, i8* %56, align 1
  br label %57

57:                                               ; preds = %55, %44
  %58 = call i32 @os_strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %59 = call i64 @os_strncasecmp(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %63 = getelementptr inbounds i8, i8* %20, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = call i32 @isgraph(i8 signext %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %7, align 8
  %69 = call i32 @ssdp_parse_msearch(%struct.upnp_wps_device_sm* %68, %struct.sockaddr_in* %8, i8* %20)
  store i32 1, i32* %14, align 4
  br label %71

70:                                               ; preds = %61, %57
  store i32 0, i32* %14, align 4
  br label %71

71:                                               ; preds = %70, %67, %37, %30
  %72 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %14, align 4
  switch i32 %73, label %75 [
    i32 0, label %74
    i32 1, label %74
  ]

74:                                               ; preds = %71, %71
  ret void

75:                                               ; preds = %71
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #2

declare dso_local i64 @str_starts(i8*, i8*) #2

declare dso_local i8* @os_strchr(i8*, i8 signext) #2

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32, i8*) #2

declare dso_local i32 @inet_ntoa(i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i64 @os_strncasecmp(i8*, i8*, i32) #2

declare dso_local i32 @os_strlen(i8*) #2

declare dso_local i32 @isgraph(i8 signext) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @ssdp_parse_msearch(%struct.upnp_wps_device_sm*, %struct.sockaddr_in*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
