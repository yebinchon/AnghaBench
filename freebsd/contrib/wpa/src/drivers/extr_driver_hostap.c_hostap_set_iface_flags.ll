; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostap_set_iface_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostap_set_iface_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostap_driver_data = type { i32, i32 }
%struct.ifreq = type { i32, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%sap\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"hostap: AP interface name truncated\00", align 1
@HOSTAPD_MTU = common dso_local global i32 0, align 4
@SIOCSIFMTU = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [81 x i8] c"Setting MTU failed - trying to survive with current value: ioctl[SIOCSIFMTU]: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @hostap_set_iface_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostap_set_iface_flags(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostap_driver_data*, align 8
  %7 = alloca %struct.ifreq, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.hostap_driver_data*
  store %struct.hostap_driver_data* %12, %struct.hostap_driver_data** %6, align 8
  %13 = load i32, i32* @IFNAMSIZ, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* @IFNAMSIZ, align 4
  %18 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %6, align 8
  %19 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @os_snprintf(i8* %16, i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @IFNAMSIZ, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @MSG_ERROR, align 4
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %59

27:                                               ; preds = %2
  %28 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %6, align 8
  %29 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @linux_set_iface_flags(i32 %30, i8* %16, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %59

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %35
  %39 = call i32 @memset(%struct.ifreq* %7, i32 0, i32 8)
  %40 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IFNAMSIZ, align 4
  %43 = call i32 @os_strlcpy(i32 %41, i8* %16, i32 %42)
  %44 = load i32, i32* @HOSTAPD_MTU, align 4
  %45 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %6, align 8
  %47 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SIOCSIFMTU, align 4
  %50 = call i64 @ioctl(i32 %48, i32 %49, %struct.ifreq* %7)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %38
  %53 = load i32, i32* @MSG_INFO, align 4
  %54 = load i32, i32* @errno, align 4
  %55 = call i32 @strerror(i32 %54)
  %56 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %52, %38
  br label %58

58:                                               ; preds = %57, %35
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %59

59:                                               ; preds = %58, %34, %24
  %60 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i64 @linux_set_iface_flags(i32, i8*, i32) #2

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #2

declare dso_local i32 @os_strlcpy(i32, i8*, i32) #2

declare dso_local i64 @ioctl(i32, i32, %struct.ifreq*) #2

declare dso_local i32 @strerror(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
