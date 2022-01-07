; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_atheros.c_atheros_set_ssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_atheros.c_atheros_set_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atheros_driver_data = type { i32, i32 }
%struct.iwreq = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCSIWESSID = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ioctl[SIOCSIWESSID,len=%d]: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @atheros_set_ssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atheros_set_ssid(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.atheros_driver_data*, align 8
  %9 = alloca %struct.iwreq, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.atheros_driver_data*
  store %struct.atheros_driver_data* %11, %struct.atheros_driver_data** %8, align 8
  %12 = call i32 @os_memset(%struct.iwreq* %9, i32 0, i32 24)
  %13 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %9, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %8, align 8
  %16 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IFNAMSIZ, align 4
  %19 = call i32 @os_strlcpy(i32 %14, i32 %17, i32 %18)
  %20 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %9, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = ptrtoint i32* %23 to i64
  %25 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %9, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i64 %24, i64* %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %9, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %8, align 8
  %33 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SIOCSIWESSID, align 4
  %36 = call i64 @ioctl(i32 %34, i32 %35, %struct.iwreq* %9)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %3
  %39 = load i32, i32* @MSG_ERROR, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @strerror(i32 %41)
  %43 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %42)
  store i32 -1, i32* %4, align 4
  br label %45

44:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @os_memset(%struct.iwreq*, i32, i32) #1

declare dso_local i32 @os_strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.iwreq*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
