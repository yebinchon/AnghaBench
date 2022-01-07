; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_client_data = type { i32, i32, i32, i32, i32, i32, %struct.hostapd_radius_servers*, i8* }
%struct.hostapd_radius_servers = type { i64, i64, i64 }

@radius_retry_primary_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radius_client_data* @radius_client_init(i8* %0, %struct.hostapd_radius_servers* %1) #0 {
  %3 = alloca %struct.radius_client_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hostapd_radius_servers*, align 8
  %6 = alloca %struct.radius_client_data*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.hostapd_radius_servers* %1, %struct.hostapd_radius_servers** %5, align 8
  %7 = call %struct.radius_client_data* @os_zalloc(i32 40)
  store %struct.radius_client_data* %7, %struct.radius_client_data** %6, align 8
  %8 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %9 = icmp eq %struct.radius_client_data* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.radius_client_data* null, %struct.radius_client_data** %3, align 8
  br label %67

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %14 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %13, i32 0, i32 7
  store i8* %12, i8** %14, align 8
  %15 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %5, align 8
  %16 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %17 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %16, i32 0, i32 6
  store %struct.hostapd_radius_servers* %15, %struct.hostapd_radius_servers** %17, align 8
  %18 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %19 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %18, i32 0, i32 5
  store i32 -1, i32* %19, align 4
  %20 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %21 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %20, i32 0, i32 4
  store i32 -1, i32* %21, align 8
  %22 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %23 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %22, i32 0, i32 3
  store i32 -1, i32* %23, align 4
  %24 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %25 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %24, i32 0, i32 2
  store i32 -1, i32* %25, align 8
  %26 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %27 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %26, i32 0, i32 1
  store i32 -1, i32* %27, align 4
  %28 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %29 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  %30 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %5, align 8
  %31 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %11
  %35 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %36 = call i64 @radius_client_init_auth(%struct.radius_client_data* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %40 = call i32 @radius_client_deinit(%struct.radius_client_data* %39)
  store %struct.radius_client_data* null, %struct.radius_client_data** %3, align 8
  br label %67

41:                                               ; preds = %34, %11
  %42 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %5, align 8
  %43 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %48 = call i64 @radius_client_init_acct(%struct.radius_client_data* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %52 = call i32 @radius_client_deinit(%struct.radius_client_data* %51)
  store %struct.radius_client_data* null, %struct.radius_client_data** %3, align 8
  br label %67

53:                                               ; preds = %46, %41
  %54 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %5, align 8
  %55 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %5, align 8
  %60 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @radius_retry_primary_timer, align 4
  %63 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %64 = call i32 @eloop_register_timeout(i64 %61, i32 0, i32 %62, %struct.radius_client_data* %63, i32* null)
  br label %65

65:                                               ; preds = %58, %53
  %66 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  store %struct.radius_client_data* %66, %struct.radius_client_data** %3, align 8
  br label %67

67:                                               ; preds = %65, %50, %38, %10
  %68 = load %struct.radius_client_data*, %struct.radius_client_data** %3, align 8
  ret %struct.radius_client_data* %68
}

declare dso_local %struct.radius_client_data* @os_zalloc(i32) #1

declare dso_local i64 @radius_client_init_auth(%struct.radius_client_data*) #1

declare dso_local i32 @radius_client_deinit(%struct.radius_client_data*) #1

declare dso_local i64 @radius_client_init_acct(%struct.radius_client_data*) #1

declare dso_local i32 @eloop_register_timeout(i64, i32, i32, %struct.radius_client_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
