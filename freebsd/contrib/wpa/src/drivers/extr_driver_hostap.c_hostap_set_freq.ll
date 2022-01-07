; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostap_set_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostap_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_freq_params = type { i32 }
%struct.hostap_driver_data = type { i32, i32 }
%struct.iwreq = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCSIWFREQ = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ioctl[SIOCSIWFREQ]: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.hostapd_freq_params*)* @hostap_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostap_set_freq(i8* %0, %struct.hostapd_freq_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hostapd_freq_params*, align 8
  %6 = alloca %struct.hostap_driver_data*, align 8
  %7 = alloca %struct.iwreq, align 8
  store i8* %0, i8** %4, align 8
  store %struct.hostapd_freq_params* %1, %struct.hostapd_freq_params** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.hostap_driver_data*
  store %struct.hostap_driver_data* %9, %struct.hostap_driver_data** %6, align 8
  %10 = call i32 @os_memset(%struct.iwreq* %7, i32 0, i32 24)
  %11 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %7, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %6, align 8
  %14 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFNAMSIZ, align 4
  %17 = call i32 @os_strlcpy(i32 %12, i32 %15, i32 %16)
  %18 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %5, align 8
  %19 = getelementptr inbounds %struct.hostapd_freq_params, %struct.hostapd_freq_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %7, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 8
  %24 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %7, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %6, align 8
  %28 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SIOCSIWFREQ, align 4
  %31 = call i64 @ioctl(i32 %29, i32 %30, %struct.iwreq* %7)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load i32, i32* @MSG_ERROR, align 4
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @strerror(i32 %35)
  %37 = call i32 @wpa_printf(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 -1, i32* %3, align 4
  br label %39

38:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @os_memset(%struct.iwreq*, i32, i32) #1

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
