; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_atheros.c_atheros_wireless_event_rtm_newlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_atheros.c_atheros_wireless_event_rtm_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifinfomsg = type { i64 }
%struct.atheros_driver_data = type { i64 }
%struct.rtattr = type { i64, i64 }

@IFLA_WIRELESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ifinfomsg*, i32*, i64)* @atheros_wireless_event_rtm_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atheros_wireless_event_rtm_newlink(i8* %0, %struct.ifinfomsg* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifinfomsg*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.atheros_driver_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rtattr*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.ifinfomsg* %1, %struct.ifinfomsg** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.atheros_driver_data*
  store %struct.atheros_driver_data* %14, %struct.atheros_driver_data** %9, align 8
  %15 = load %struct.ifinfomsg*, %struct.ifinfomsg** %6, align 8
  %16 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %9, align 8
  %19 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %58

23:                                               ; preds = %4
  %24 = load i64, i64* %8, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = bitcast i32* %26 to %struct.rtattr*
  store %struct.rtattr* %27, %struct.rtattr** %12, align 8
  %28 = call i32 @RTA_ALIGN(i32 16)
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %54, %23
  %30 = load %struct.rtattr*, %struct.rtattr** %12, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @RTA_OK(%struct.rtattr* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %29
  %35 = load %struct.rtattr*, %struct.rtattr** %12, align 8
  %36 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IFLA_WIRELESS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %9, align 8
  %42 = load %struct.rtattr*, %struct.rtattr** %12, align 8
  %43 = bitcast %struct.rtattr* %42 to i8*
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load %struct.rtattr*, %struct.rtattr** %12, align 8
  %48 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %49, %51
  %53 = call i32 @atheros_wireless_event_wireless(%struct.atheros_driver_data* %41, i8* %46, i64 %52)
  br label %54

54:                                               ; preds = %40, %34
  %55 = load %struct.rtattr*, %struct.rtattr** %12, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call %struct.rtattr* @RTA_NEXT(%struct.rtattr* %55, i32 %56)
  store %struct.rtattr* %57, %struct.rtattr** %12, align 8
  br label %29

58:                                               ; preds = %22, %29
  ret void
}

declare dso_local i32 @RTA_ALIGN(i32) #1

declare dso_local i64 @RTA_OK(%struct.rtattr*, i32) #1

declare dso_local i32 @atheros_wireless_event_wireless(%struct.atheros_driver_data*, i8*, i64) #1

declare dso_local %struct.rtattr* @RTA_NEXT(%struct.rtattr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
