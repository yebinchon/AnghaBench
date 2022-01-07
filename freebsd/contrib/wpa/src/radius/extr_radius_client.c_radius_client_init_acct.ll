; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_init_acct.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_init_acct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_client_data = type { i64, i64, %struct.hostapd_radius_servers* }
%struct.hostapd_radius_servers = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"RADIUS: socket[PF_INET,SOCK_DGRAM]: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@radius_client_receive = common dso_local global i32 0, align 4
@RADIUS_ACCT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"RADIUS: Could not register read socket for accounting server\00", align 1
@PF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radius_client_data*)* @radius_client_init_acct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radius_client_init_acct(%struct.radius_client_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radius_client_data*, align 8
  %4 = alloca %struct.hostapd_radius_servers*, align 8
  %5 = alloca i32, align 4
  store %struct.radius_client_data* %0, %struct.radius_client_data** %3, align 8
  %6 = load %struct.radius_client_data*, %struct.radius_client_data** %3, align 8
  %7 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %6, i32 0, i32 2
  %8 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %7, align 8
  store %struct.hostapd_radius_servers* %8, %struct.hostapd_radius_servers** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.radius_client_data*, %struct.radius_client_data** %3, align 8
  %10 = call i32 @radius_close_acct_sockets(%struct.radius_client_data* %9)
  %11 = load i32, i32* @PF_INET, align 4
  %12 = load i32, i32* @SOCK_DGRAM, align 4
  %13 = call i8* @socket(i32 %11, i32 %12, i32 0)
  %14 = ptrtoint i8* %13 to i64
  %15 = load %struct.radius_client_data*, %struct.radius_client_data** %3, align 8
  %16 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.radius_client_data*, %struct.radius_client_data** %3, align 8
  %18 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i32, i32* @MSG_INFO, align 4
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @strerror(i32 %23)
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %33

26:                                               ; preds = %1
  %27 = load %struct.radius_client_data*, %struct.radius_client_data** %3, align 8
  %28 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @radius_client_disable_pmtu_discovery(i64 %29)
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %26, %21
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 -1, i32* %2, align 4
  br label %69

37:                                               ; preds = %33
  %38 = load %struct.radius_client_data*, %struct.radius_client_data** %3, align 8
  %39 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %4, align 8
  %40 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.radius_client_data*, %struct.radius_client_data** %3, align 8
  %43 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.radius_client_data*, %struct.radius_client_data** %3, align 8
  %46 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @radius_change_server(%struct.radius_client_data* %38, i32 %41, i32* null, i64 %44, i64 %47, i32 0)
  %49 = load %struct.radius_client_data*, %struct.radius_client_data** %3, align 8
  %50 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %37
  %54 = load %struct.radius_client_data*, %struct.radius_client_data** %3, align 8
  %55 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @radius_client_receive, align 4
  %58 = load %struct.radius_client_data*, %struct.radius_client_data** %3, align 8
  %59 = load i64, i64* @RADIUS_ACCT, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = call i64 @eloop_register_read_sock(i64 %56, i32 %57, %struct.radius_client_data* %58, i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load i32, i32* @MSG_INFO, align 4
  %65 = call i32 (i32, i8*, ...) @wpa_printf(i32 %64, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.radius_client_data*, %struct.radius_client_data** %3, align 8
  %67 = call i32 @radius_close_acct_sockets(%struct.radius_client_data* %66)
  store i32 -1, i32* %2, align 4
  br label %69

68:                                               ; preds = %53, %37
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %63, %36
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @radius_close_acct_sockets(%struct.radius_client_data*) #1

declare dso_local i8* @socket(i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @radius_client_disable_pmtu_discovery(i64) #1

declare dso_local i32 @radius_change_server(%struct.radius_client_data*, i32, i32*, i64, i64, i32) #1

declare dso_local i64 @eloop_register_read_sock(i64, i32, %struct.radius_client_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
