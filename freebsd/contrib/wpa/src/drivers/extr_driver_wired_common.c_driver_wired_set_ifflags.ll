; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_wired_common.c_driver_wired_set_ifflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_wired_common.c_driver_wired_set_ifflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32, i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"socket: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ioctl[SIOCSIFFLAGS]: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @driver_wired_set_ifflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @driver_wired_set_ifflags(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifreq, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @PF_INET, align 4
  %9 = load i32, i32* @SOCK_DGRAM, align 4
  %10 = call i32 @socket(i32 %8, i32 %9, i32 0)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @MSG_ERROR, align 4
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @strerror(i32 %15)
  %17 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 -1, i32* %3, align 4
  br label %43

18:                                               ; preds = %2
  %19 = call i32 @os_memset(%struct.ifreq* %6, i32 0, i32 8)
  %20 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* @IFNAMSIZ, align 4
  %24 = call i32 @os_strlcpy(i32 %21, i8* %22, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 65535
  %27 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SIOCSIFFLAGS, align 4
  %30 = ptrtoint %struct.ifreq* %6 to i32
  %31 = call i64 @ioctl(i32 %28, i32 %29, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %18
  %34 = load i32, i32* @MSG_ERROR, align 4
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @strerror(i32 %35)
  %37 = call i32 @wpa_printf(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @close(i32 %38)
  store i32 -1, i32* %3, align 4
  br label %43

40:                                               ; preds = %18
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @close(i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %33, %13
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @os_memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @os_strlcpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
