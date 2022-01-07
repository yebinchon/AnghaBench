; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostapd_wireless_event_rtm_newlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostapd_wireless_event_rtm_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifinfomsg = type { i32 }
%struct.hostap_driver_data = type { i32 }
%struct.rtattr = type { i64, i64 }

@IFLA_WIRELESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ifinfomsg*, i32*, i64)* @hostapd_wireless_event_rtm_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_wireless_event_rtm_newlink(i8* %0, %struct.ifinfomsg* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifinfomsg*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hostap_driver_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rtattr*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.ifinfomsg* %1, %struct.ifinfomsg** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.hostap_driver_data*
  store %struct.hostap_driver_data* %14, %struct.hostap_driver_data** %9, align 8
  %15 = load i64, i64* %8, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %10, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = bitcast i32* %17 to %struct.rtattr*
  store %struct.rtattr* %18, %struct.rtattr** %12, align 8
  %19 = call i32 @RTA_ALIGN(i32 16)
  store i32 %19, i32* %11, align 4
  br label %20

20:                                               ; preds = %45, %4
  %21 = load %struct.rtattr*, %struct.rtattr** %12, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i64 @RTA_OK(%struct.rtattr* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %20
  %26 = load %struct.rtattr*, %struct.rtattr** %12, align 8
  %27 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IFLA_WIRELESS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %9, align 8
  %33 = load %struct.rtattr*, %struct.rtattr** %12, align 8
  %34 = bitcast %struct.rtattr* %33 to i8*
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load %struct.rtattr*, %struct.rtattr** %12, align 8
  %39 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %40, %42
  %44 = call i32 @hostapd_wireless_event_wireless(%struct.hostap_driver_data* %32, i8* %37, i64 %43)
  br label %45

45:                                               ; preds = %31, %25
  %46 = load %struct.rtattr*, %struct.rtattr** %12, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call %struct.rtattr* @RTA_NEXT(%struct.rtattr* %46, i32 %47)
  store %struct.rtattr* %48, %struct.rtattr** %12, align 8
  br label %20

49:                                               ; preds = %20
  ret void
}

declare dso_local i32 @RTA_ALIGN(i32) #1

declare dso_local i64 @RTA_OK(%struct.rtattr*, i32) #1

declare dso_local i32 @hostapd_wireless_event_wireless(%struct.hostap_driver_data*, i8*, i64) #1

declare dso_local %struct.rtattr* @RTA_NEXT(%struct.rtattr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
