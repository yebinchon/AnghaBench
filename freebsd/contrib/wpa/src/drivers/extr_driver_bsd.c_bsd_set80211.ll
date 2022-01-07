; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_bsd.c_bsd_set80211.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_bsd.c_bsd_set80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsd_driver_data = type { i64, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211req = type { i32, i32, i32, i8*, i32 }

@SIOCS80211 = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"ioctl[SIOCS80211, op=%u, val=%u, arg_len=%u]: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i8*, i32)* @bsd_set80211 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsd_set80211(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bsd_driver_data*, align 8
  %13 = alloca %struct.ieee80211req, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.bsd_driver_data*
  store %struct.bsd_driver_data* %15, %struct.bsd_driver_data** %12, align 8
  %16 = load %struct.bsd_driver_data*, %struct.bsd_driver_data** %12, align 8
  %17 = getelementptr inbounds %struct.bsd_driver_data, %struct.bsd_driver_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %5
  %21 = load %struct.bsd_driver_data*, %struct.bsd_driver_data** %12, align 8
  %22 = getelementptr inbounds %struct.bsd_driver_data, %struct.bsd_driver_data* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %5
  store i32 -1, i32* %6, align 4
  br label %59

26:                                               ; preds = %20
  %27 = call i32 @os_memset(%struct.ieee80211req* %13, i32 0, i32 32)
  %28 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %13, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.bsd_driver_data*, %struct.bsd_driver_data** %12, align 8
  %31 = getelementptr inbounds %struct.bsd_driver_data, %struct.bsd_driver_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @os_strlcpy(i32 %29, i32 %32, i32 4)
  %34 = load i32, i32* %8, align 4
  %35 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %13, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %13, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %13, i32 0, i32 3
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* %11, align 4
  %41 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %13, i32 0, i32 2
  store i32 %40, i32* %41, align 8
  %42 = load %struct.bsd_driver_data*, %struct.bsd_driver_data** %12, align 8
  %43 = getelementptr inbounds %struct.bsd_driver_data, %struct.bsd_driver_data* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SIOCS80211, align 4
  %48 = call i64 @ioctl(i32 %46, i32 %47, %struct.ieee80211req* %13)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %26
  %51 = load i32, i32* @MSG_ERROR, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 @strerror(i32 %55)
  %57 = call i32 @wpa_printf(i32 %51, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53, i32 %54, i32 %56)
  store i32 -1, i32* %6, align 4
  br label %59

58:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %58, %50, %25
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @os_memset(%struct.ieee80211req*, i32, i32) #1

declare dso_local i32 @os_strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ieee80211req*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
