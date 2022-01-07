; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_accounting.c_accounting_interim_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_accounting.c_accounting_interim_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { i32 }
%struct.hostap_sta_driver_data = type { i32 }

@ACCT_DEFAULT_UPDATE_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @accounting_interim_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @accounting_interim_update(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hostap_sta_driver_data, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.hostapd_data*
  store %struct.hostapd_data* %10, %struct.hostapd_data** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.sta_info*
  store %struct.sta_info* %12, %struct.sta_info** %6, align 8
  %13 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %14 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %19 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %20 = call i32 @accounting_sta_interim(%struct.hostapd_data* %18, %struct.sta_info* %19)
  %21 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %22 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %26 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %27 = call i32 @accounting_sta_update_stats(%struct.hostapd_data* %25, %struct.sta_info* %26, %struct.hostap_sta_driver_data* %8)
  %28 = load i32, i32* @ACCT_DEFAULT_UPDATE_INTERVAL, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %24, %17
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %32 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %33 = call i32 @eloop_register_timeout(i32 %30, i32 0, void (i8*, i8*)* @accounting_interim_update, %struct.hostapd_data* %31, %struct.sta_info* %32)
  ret void
}

declare dso_local i32 @accounting_sta_interim(%struct.hostapd_data*, %struct.sta_info*) #1

declare dso_local i32 @accounting_sta_update_stats(%struct.hostapd_data*, %struct.sta_info*, %struct.hostap_sta_driver_data*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, void (i8*, i8*)*, %struct.hostapd_data*, %struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
