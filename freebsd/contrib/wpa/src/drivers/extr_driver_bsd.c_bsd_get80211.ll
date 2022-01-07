; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_bsd.c_bsd_get80211.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_bsd.c_bsd_get80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211req = type { i32, i32, i8*, i32 }
%struct.bsd_driver_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SIOCG80211 = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ioctl[SIOCG80211, op=%u, arg_len=%u]: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ieee80211req*, i32, i8*, i32)* @bsd_get80211 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsd_get80211(i8* %0, %struct.ieee80211req* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ieee80211req*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bsd_driver_data*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.bsd_driver_data*
  store %struct.bsd_driver_data* %14, %struct.bsd_driver_data** %12, align 8
  %15 = load %struct.ieee80211req*, %struct.ieee80211req** %8, align 8
  %16 = call i32 @os_memset(%struct.ieee80211req* %15, i32 0, i32 24)
  %17 = load %struct.ieee80211req*, %struct.ieee80211req** %8, align 8
  %18 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.bsd_driver_data*, %struct.bsd_driver_data** %12, align 8
  %21 = getelementptr inbounds %struct.bsd_driver_data, %struct.bsd_driver_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @os_strlcpy(i32 %19, i32 %22, i32 4)
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.ieee80211req*, %struct.ieee80211req** %8, align 8
  %26 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.ieee80211req*, %struct.ieee80211req** %8, align 8
  %29 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = load %struct.ieee80211req*, %struct.ieee80211req** %8, align 8
  %32 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.bsd_driver_data*, %struct.bsd_driver_data** %12, align 8
  %34 = getelementptr inbounds %struct.bsd_driver_data, %struct.bsd_driver_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SIOCG80211, align 4
  %39 = load %struct.ieee80211req*, %struct.ieee80211req** %8, align 8
  %40 = call i64 @ioctl(i32 %37, i32 %38, %struct.ieee80211req* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %5
  %43 = load i32, i32* @MSG_ERROR, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 @strerror(i32 %46)
  %48 = call i32 @wpa_printf(i32 %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %47)
  store i32 -1, i32* %6, align 4
  br label %50

49:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %49, %42
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @os_memset(%struct.ieee80211req*, i32, i32) #1

declare dso_local i32 @os_strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ieee80211req*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
