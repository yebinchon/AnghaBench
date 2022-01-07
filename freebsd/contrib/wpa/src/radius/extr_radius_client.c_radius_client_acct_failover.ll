; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_acct_failover.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_acct_failover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_client_data = type { i32, i32, %struct.radius_msg_list*, i32, %struct.hostapd_radius_servers* }
%struct.radius_msg_list = type { i64, %struct.radius_msg_list* }
%struct.hostapd_radius_servers = type { i32, %struct.hostapd_radius_server*, %struct.hostapd_radius_server* }
%struct.hostapd_radius_server = type { i32, i32, i32 }

@HOSTAPD_MODULE_RADIUS = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"No response from Accounting server %s:%d - failover\00", align 1
@RADIUS_ACCT = common dso_local global i64 0, align 8
@RADIUS_ACCT_INTERIM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radius_client_data*)* @radius_client_acct_failover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radius_client_acct_failover(%struct.radius_client_data* %0) #0 {
  %2 = alloca %struct.radius_client_data*, align 8
  %3 = alloca %struct.hostapd_radius_servers*, align 8
  %4 = alloca %struct.hostapd_radius_server*, align 8
  %5 = alloca %struct.hostapd_radius_server*, align 8
  %6 = alloca %struct.radius_msg_list*, align 8
  %7 = alloca [50 x i8], align 16
  store %struct.radius_client_data* %0, %struct.radius_client_data** %2, align 8
  %8 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %9 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %8, i32 0, i32 4
  %10 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %9, align 8
  store %struct.hostapd_radius_servers* %10, %struct.hostapd_radius_servers** %3, align 8
  %11 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %3, align 8
  %12 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %11, i32 0, i32 1
  %13 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %12, align 8
  store %struct.hostapd_radius_server* %13, %struct.hostapd_radius_server** %5, align 8
  %14 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %15 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @HOSTAPD_MODULE_RADIUS, align 4
  %18 = load i32, i32* @HOSTAPD_LEVEL_NOTICE, align 4
  %19 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %5, align 8
  %20 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %19, i32 0, i32 2
  %21 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %22 = call i32 @hostapd_ip_txt(i32* %20, i8* %21, i32 50)
  %23 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %5, align 8
  %24 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @hostapd_logger(i32 %16, i32* null, i32 %17, i32 %18, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %28 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %27, i32 0, i32 2
  %29 = load %struct.radius_msg_list*, %struct.radius_msg_list** %28, align 8
  store %struct.radius_msg_list* %29, %struct.radius_msg_list** %6, align 8
  br label %30

30:                                               ; preds = %51, %1
  %31 = load %struct.radius_msg_list*, %struct.radius_msg_list** %6, align 8
  %32 = icmp ne %struct.radius_msg_list* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = load %struct.radius_msg_list*, %struct.radius_msg_list** %6, align 8
  %35 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RADIUS_ACCT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.radius_msg_list*, %struct.radius_msg_list** %6, align 8
  %41 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RADIUS_ACCT_INTERIM, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39, %33
  %46 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %5, align 8
  %47 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %45, %39
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.radius_msg_list*, %struct.radius_msg_list** %6, align 8
  %53 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %52, i32 0, i32 1
  %54 = load %struct.radius_msg_list*, %struct.radius_msg_list** %53, align 8
  store %struct.radius_msg_list* %54, %struct.radius_msg_list** %6, align 8
  br label %30

55:                                               ; preds = %30
  %56 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %5, align 8
  %57 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %56, i64 1
  store %struct.hostapd_radius_server* %57, %struct.hostapd_radius_server** %4, align 8
  %58 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %4, align 8
  %59 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %3, align 8
  %60 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %59, i32 0, i32 2
  %61 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %60, align 8
  %62 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %3, align 8
  %63 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %61, i64 %66
  %68 = icmp ugt %struct.hostapd_radius_server* %58, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %55
  %70 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %3, align 8
  %71 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %70, i32 0, i32 2
  %72 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %71, align 8
  store %struct.hostapd_radius_server* %72, %struct.hostapd_radius_server** %4, align 8
  br label %73

73:                                               ; preds = %69, %55
  %74 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %4, align 8
  %75 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %3, align 8
  %76 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %75, i32 0, i32 1
  store %struct.hostapd_radius_server* %74, %struct.hostapd_radius_server** %76, align 8
  %77 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %78 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %4, align 8
  %79 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %5, align 8
  %80 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %81 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %84 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @radius_change_server(%struct.radius_client_data* %77, %struct.hostapd_radius_server* %78, %struct.hostapd_radius_server* %79, i32 %82, i32 %85, i32 0)
  ret void
}

declare dso_local i32 @hostapd_logger(i32, i32*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @hostapd_ip_txt(i32*, i8*, i32) #1

declare dso_local i32 @radius_change_server(%struct.radius_client_data*, %struct.hostapd_radius_server*, %struct.hostapd_radius_server*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
