; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dispatch.c_interface_set_mtu_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dispatch.c_interface_set_mtu_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i64, i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Can't create socket\00", align 1
@SIOCGIFMTU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"SIOCGIFMTU failed (%s): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@SIOCSIFMTU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"SIOCSIFMTU failed (%d): %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @interface_set_mtu_priv(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ifreq, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @AF_INET, align 4
  %9 = load i32, i32* @SOCK_DGRAM, align 4
  %10 = call i32 @socket(i32 %8, i32 %9, i32 0)
  store i32 %10, i32* %6, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %2
  %15 = call i32 @memset(%struct.ifreq* %5, i32 0, i32 16)
  store i64 0, i64* %7, align 8
  %16 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strlcpy(i32 %17, i8* %18, i32 4)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SIOCGIFMTU, align 4
  %22 = call i32 @ioctl(i32 %20, i32 %21, %struct.ifreq* %5)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %30

24:                                               ; preds = %14
  %25 = load i8*, i8** %3, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @strerror(i32 %27)
  %29 = call i32 @warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %26, i32 %28)
  br label %33

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SIOCSIFMTU, align 4
  %42 = call i32 @ioctl(i32 %40, i32 %41, %struct.ifreq* %5)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i64, i64* %4, align 8
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 @strerror(i32 %46)
  %48 = call i32 @warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %45, i32 %47)
  br label %49

49:                                               ; preds = %44, %37
  br label %50

50:                                               ; preds = %49, %33
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @close(i32 %51)
  ret void
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @warning(i8*, i64, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
