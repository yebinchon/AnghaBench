; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_auth_failover.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_auth_failover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_client_data = type { i32, i32, %struct.radius_msg_list*, i32, %struct.hostapd_radius_servers* }
%struct.radius_msg_list = type { i64, %struct.radius_msg_list* }
%struct.hostapd_radius_servers = type { i32, %struct.hostapd_radius_server*, %struct.hostapd_radius_server* }
%struct.hostapd_radius_server = type { i32, i32, i32 }

@HOSTAPD_MODULE_RADIUS = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"No response from Authentication server %s:%d - failover\00", align 1
@RADIUS_AUTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radius_client_data*)* @radius_client_auth_failover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radius_client_auth_failover(%struct.radius_client_data* %0) #0 {
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
  %26 = call i32 @hostapd_logger(i32 %16, i32* null, i32 %17, i32 %18, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %28 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %27, i32 0, i32 2
  %29 = load %struct.radius_msg_list*, %struct.radius_msg_list** %28, align 8
  store %struct.radius_msg_list* %29, %struct.radius_msg_list** %6, align 8
  br label %30

30:                                               ; preds = %45, %1
  %31 = load %struct.radius_msg_list*, %struct.radius_msg_list** %6, align 8
  %32 = icmp ne %struct.radius_msg_list* %31, null
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load %struct.radius_msg_list*, %struct.radius_msg_list** %6, align 8
  %35 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RADIUS_AUTH, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %5, align 8
  %41 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %39, %33
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.radius_msg_list*, %struct.radius_msg_list** %6, align 8
  %47 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %46, i32 0, i32 1
  %48 = load %struct.radius_msg_list*, %struct.radius_msg_list** %47, align 8
  store %struct.radius_msg_list* %48, %struct.radius_msg_list** %6, align 8
  br label %30

49:                                               ; preds = %30
  %50 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %5, align 8
  %51 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %50, i64 1
  store %struct.hostapd_radius_server* %51, %struct.hostapd_radius_server** %4, align 8
  %52 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %4, align 8
  %53 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %3, align 8
  %54 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %53, i32 0, i32 2
  %55 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %54, align 8
  %56 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %3, align 8
  %57 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %55, i64 %60
  %62 = icmp ugt %struct.hostapd_radius_server* %52, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %49
  %64 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %3, align 8
  %65 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %64, i32 0, i32 2
  %66 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %65, align 8
  store %struct.hostapd_radius_server* %66, %struct.hostapd_radius_server** %4, align 8
  br label %67

67:                                               ; preds = %63, %49
  %68 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %4, align 8
  %69 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %3, align 8
  %70 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %69, i32 0, i32 1
  store %struct.hostapd_radius_server* %68, %struct.hostapd_radius_server** %70, align 8
  %71 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %72 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %4, align 8
  %73 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %5, align 8
  %74 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %75 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %78 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @radius_change_server(%struct.radius_client_data* %71, %struct.hostapd_radius_server* %72, %struct.hostapd_radius_server* %73, i32 %76, i32 %79, i32 1)
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
