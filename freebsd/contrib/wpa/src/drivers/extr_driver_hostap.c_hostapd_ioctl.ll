; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostapd_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostapd_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prism2_hostapd_param = type { i32 }
%struct.hostap_driver_data = type { i32, i32 }
%struct.iwreq = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@PRISM2_IOCTL_HOSTAPD = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ioctl[PRISM2_IOCTL_HOSTAPD]: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.prism2_hostapd_param*, i32)* @hostapd_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_ioctl(i8* %0, %struct.prism2_hostapd_param* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.prism2_hostapd_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hostap_driver_data*, align 8
  %9 = alloca %struct.iwreq, align 8
  store i8* %0, i8** %5, align 8
  store %struct.prism2_hostapd_param* %1, %struct.prism2_hostapd_param** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.hostap_driver_data*
  store %struct.hostap_driver_data* %11, %struct.hostap_driver_data** %8, align 8
  %12 = call i32 @memset(%struct.iwreq* %9, i32 0, i32 24)
  %13 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %9, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %8, align 8
  %16 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IFNAMSIZ, align 4
  %19 = call i32 @os_strlcpy(i32 %14, i32 %17, i32 %18)
  %20 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %21 = ptrtoint %struct.prism2_hostapd_param* %20 to i64
  %22 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %9, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i64 %21, i64* %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %9, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %8, align 8
  %30 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PRISM2_IOCTL_HOSTAPD, align 4
  %33 = call i64 @ioctl(i32 %31, i32 %32, %struct.iwreq* %9)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %3
  %36 = load i32, i32* @MSG_ERROR, align 4
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 @strerror(i32 %37)
  %39 = call i32 @wpa_printf(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 -1, i32* %4, align 4
  br label %41

40:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %35
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @memset(%struct.iwreq*, i32, i32) #1

declare dso_local i32 @os_strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.iwreq*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
