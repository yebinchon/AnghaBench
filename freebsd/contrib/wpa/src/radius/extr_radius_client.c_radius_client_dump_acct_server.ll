; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_dump_acct_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_dump_acct_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_radius_server = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.radius_client_data = type { %struct.radius_msg_list* }
%struct.radius_msg_list = type { i64, %struct.radius_msg_list* }

@RADIUS_ACCT = common dso_local global i64 0, align 8
@RADIUS_ACCT_INTERIM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [405 x i8] c"radiusAccServerIndex=%d\0AradiusAccServerAddress=%s\0AradiusAccClientServerPortNumber=%d\0AradiusAccClientRoundTripTime=%d\0AradiusAccClientRequests=%u\0AradiusAccClientRetransmissions=%u\0AradiusAccClientResponses=%u\0AradiusAccClientMalformedResponses=%u\0AradiusAccClientBadAuthenticators=%u\0AradiusAccClientPendingRequests=%u\0AradiusAccClientTimeouts=%u\0AradiusAccClientUnknownTypes=%u\0AradiusAccClientPacketsDropped=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.hostapd_radius_server*, %struct.radius_client_data*)* @radius_client_dump_acct_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radius_client_dump_acct_server(i8* %0, i64 %1, %struct.hostapd_radius_server* %2, %struct.radius_client_data* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hostapd_radius_server*, align 8
  %8 = alloca %struct.radius_client_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.radius_msg_list*, align 8
  %11 = alloca [50 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.hostapd_radius_server* %2, %struct.hostapd_radius_server** %7, align 8
  store %struct.radius_client_data* %3, %struct.radius_client_data** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.radius_client_data*, %struct.radius_client_data** %8, align 8
  %13 = icmp ne %struct.radius_client_data* %12, null
  br i1 %13, label %14, label %42

14:                                               ; preds = %4
  %15 = load %struct.radius_client_data*, %struct.radius_client_data** %8, align 8
  %16 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %15, i32 0, i32 0
  %17 = load %struct.radius_msg_list*, %struct.radius_msg_list** %16, align 8
  store %struct.radius_msg_list* %17, %struct.radius_msg_list** %10, align 8
  br label %18

18:                                               ; preds = %37, %14
  %19 = load %struct.radius_msg_list*, %struct.radius_msg_list** %10, align 8
  %20 = icmp ne %struct.radius_msg_list* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load %struct.radius_msg_list*, %struct.radius_msg_list** %10, align 8
  %23 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RADIUS_ACCT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.radius_msg_list*, %struct.radius_msg_list** %10, align 8
  %29 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RADIUS_ACCT_INTERIM, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %21
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %33, %27
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.radius_msg_list*, %struct.radius_msg_list** %10, align 8
  %39 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %38, i32 0, i32 1
  %40 = load %struct.radius_msg_list*, %struct.radius_msg_list** %39, align 8
  store %struct.radius_msg_list* %40, %struct.radius_msg_list** %10, align 8
  br label %18

41:                                               ; preds = %18
  br label %42

42:                                               ; preds = %41, %4
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %7, align 8
  %46 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %45, i32 0, i32 11
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %7, align 8
  %49 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %48, i32 0, i32 10
  %50 = getelementptr inbounds [50 x i8], [50 x i8]* %11, i64 0, i64 0
  %51 = call i32 @hostapd_ip_txt(i32* %49, i8* %50, i32 50)
  %52 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %7, align 8
  %53 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %7, align 8
  %56 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %7, align 8
  %59 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %7, align 8
  %62 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %7, align 8
  %65 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %7, align 8
  %68 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %7, align 8
  %71 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %7, align 8
  %75 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %7, align 8
  %78 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %7, align 8
  %81 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @os_snprintf(i8* %43, i64 %44, i8* getelementptr inbounds ([405 x i8], [405 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %51, i32 %54, i32 %57, i32 %60, i32 %63, i32 %66, i32 %69, i32 %72, i32 %73, i32 %76, i32 %79, i32 %82)
  ret i32 %83
}

declare dso_local i32 @os_snprintf(i8*, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hostapd_ip_txt(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
