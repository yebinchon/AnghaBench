; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_accounting.c_accounting_sta_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_accounting.c_accounting_sta_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sta_info = type { i32, i32, i32, i64, i64, i64, i64, i32, i64 }
%struct.radius_msg = type { i32 }

@HOSTAPD_MODULE_RADIUS = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"starting accounting session %016llX\00", align 1
@ACCT_DEFAULT_UPDATE_INTERVAL = common dso_local global i32 0, align 4
@accounting_interim_update = common dso_local global i32 0, align 4
@RADIUS_ACCT_STATUS_TYPE_START = common dso_local global i32 0, align 4
@RADIUS_ACCT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @accounting_sta_start(%struct.hostapd_data* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca %struct.radius_msg*, align 8
  %6 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %7 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %8 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %88

12:                                               ; preds = %2
  %13 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %14 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %15 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @HOSTAPD_MODULE_RADIUS, align 4
  %18 = load i32, i32* @HOSTAPD_LEVEL_INFO, align 4
  %19 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %20 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %19, i32 0, i32 8
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @hostapd_logger(%struct.hostapd_data* %13, i32 %16, i32 %17, i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %24 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %23, i32 0, i32 7
  %25 = call i32 @os_get_reltime(i32* %24)
  %26 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %27 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %26, i32 0, i32 6
  store i64 0, i64* %27, align 8
  %28 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %29 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %31 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %33 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %35 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %36 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @hostapd_drv_sta_clear_stats(%struct.hostapd_data* %34, i32 %37)
  %39 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %40 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %12
  br label %88

48:                                               ; preds = %12
  %49 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %50 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %55 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %6, align 4
  br label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @ACCT_DEFAULT_UPDATE_INTERVAL, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %57, %53
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @accounting_interim_update, align 4
  %62 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %63 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %64 = call i32 @eloop_register_timeout(i32 %60, i32 0, i32 %61, %struct.hostapd_data* %62, %struct.sta_info* %63)
  %65 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %66 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %67 = load i32, i32* @RADIUS_ACCT_STATUS_TYPE_START, align 4
  %68 = call %struct.radius_msg* @accounting_msg(%struct.hostapd_data* %65, %struct.sta_info* %66, i32 %67)
  store %struct.radius_msg* %68, %struct.radius_msg** %5, align 8
  %69 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %70 = icmp ne %struct.radius_msg* %69, null
  br i1 %70, label %71, label %85

71:                                               ; preds = %59
  %72 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %73 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %76 = load i32, i32* @RADIUS_ACCT, align 4
  %77 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %78 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @radius_client_send(i32 %74, %struct.radius_msg* %75, i32 %76, i32 %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %71
  %83 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %84 = call i32 @radius_msg_free(%struct.radius_msg* %83)
  br label %85

85:                                               ; preds = %82, %71, %59
  %86 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %87 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %85, %47, %11
  ret void
}

declare dso_local i32 @hostapd_logger(%struct.hostapd_data*, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @os_get_reltime(i32*) #1

declare dso_local i32 @hostapd_drv_sta_clear_stats(%struct.hostapd_data*, i32) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.hostapd_data*, %struct.sta_info*) #1

declare dso_local %struct.radius_msg* @accounting_msg(%struct.hostapd_data*, %struct.sta_info*, i32) #1

declare dso_local i64 @radius_client_send(i32, %struct.radius_msg*, i32, i32) #1

declare dso_local i32 @radius_msg_free(%struct.radius_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
