; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_iapp.c_iapp_process_add_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_iapp.c_iapp_process_add_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iapp_data = type { i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.iapp_hdr = type { i32 }
%struct.iapp_add_notify = type { i32, i32 }
%struct.sta_info = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Invalid IAPP-ADD packet length %d (expected %lu)\00", align 1
@HOSTAPD_MODULE_IAPP = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Received IAPP ADD-notify (seq# %d) from %s:%d%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [17 x i8] c" (STA not found)\00", align 1
@HOSTAPD_LEVEL_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Removing STA due to IAPP ADD-notify\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iapp_data*, %struct.sockaddr_in*, %struct.iapp_hdr*, i32)* @iapp_process_add_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iapp_process_add_notify(%struct.iapp_data* %0, %struct.sockaddr_in* %1, %struct.iapp_hdr* %2, i32 %3) #0 {
  %5 = alloca %struct.iapp_data*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.iapp_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iapp_add_notify*, align 8
  %10 = alloca %struct.sta_info*, align 8
  store %struct.iapp_data* %0, %struct.iapp_data** %5, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %6, align 8
  store %struct.iapp_hdr* %2, %struct.iapp_hdr** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.iapp_hdr*, %struct.iapp_hdr** %7, align 8
  %12 = getelementptr inbounds %struct.iapp_hdr, %struct.iapp_hdr* %11, i64 1
  %13 = bitcast %struct.iapp_hdr* %12 to %struct.iapp_add_notify*
  store %struct.iapp_add_notify* %13, %struct.iapp_add_notify** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 8
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* @MSG_INFO, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %19, i64 8)
  br label %72

21:                                               ; preds = %4
  %22 = load %struct.iapp_data*, %struct.iapp_data** %5, align 8
  %23 = getelementptr inbounds %struct.iapp_data, %struct.iapp_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.iapp_add_notify*, %struct.iapp_add_notify** %9, align 8
  %26 = getelementptr inbounds %struct.iapp_add_notify, %struct.iapp_add_notify* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.sta_info* @ap_get_sta(i32 %24, i32 %27)
  store %struct.sta_info* %28, %struct.sta_info** %10, align 8
  %29 = load %struct.iapp_data*, %struct.iapp_data** %5, align 8
  %30 = getelementptr inbounds %struct.iapp_data, %struct.iapp_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iapp_add_notify*, %struct.iapp_add_notify** %9, align 8
  %33 = getelementptr inbounds %struct.iapp_add_notify, %struct.iapp_add_notify* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @HOSTAPD_MODULE_IAPP, align 4
  %36 = load i32, i32* @HOSTAPD_LEVEL_INFO, align 4
  %37 = load %struct.iapp_add_notify*, %struct.iapp_add_notify** %9, align 8
  %38 = getelementptr inbounds %struct.iapp_add_notify, %struct.iapp_add_notify* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be_to_host16(i32 %39)
  %41 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @inet_ntoa(i32 %43)
  %45 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ntohs(i32 %47)
  %49 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %50 = icmp ne %struct.sta_info* %49, null
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)
  %53 = call i32 (i32, i32, i32, i32, i8*, ...) @hostapd_logger(i32 %31, i32 %34, i32 %35, i32 %36, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %44, i32 %48, i8* %52)
  %54 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %55 = icmp ne %struct.sta_info* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %21
  br label %72

57:                                               ; preds = %21
  %58 = load %struct.iapp_data*, %struct.iapp_data** %5, align 8
  %59 = getelementptr inbounds %struct.iapp_data, %struct.iapp_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.iapp_add_notify*, %struct.iapp_add_notify** %9, align 8
  %62 = getelementptr inbounds %struct.iapp_add_notify, %struct.iapp_add_notify* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @HOSTAPD_MODULE_IAPP, align 4
  %65 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %66 = call i32 (i32, i32, i32, i32, i8*, ...) @hostapd_logger(i32 %60, i32 %63, i32 %64, i32 %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %67 = load %struct.iapp_data*, %struct.iapp_data** %5, align 8
  %68 = getelementptr inbounds %struct.iapp_data, %struct.iapp_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %71 = call i32 @ap_sta_disconnect(i32 %69, %struct.sta_info* %70, i32* null, i32 0)
  br label %72

72:                                               ; preds = %57, %56, %17
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, i64) #1

declare dso_local %struct.sta_info* @ap_get_sta(i32, i32) #1

declare dso_local i32 @hostapd_logger(i32, i32, i32, i32, i8*, ...) #1

declare dso_local i32 @be_to_host16(i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ap_sta_disconnect(i32, %struct.sta_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
