; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dispatch.c_interface_link_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dispatch.c_interface_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmediareq = type { i32, i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Can't create socket\00", align 1
@SIOCGIFMEDIA = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@capsyslog = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ioctl(SIOCGIFMEDIA) on %s: %m\00", align 1
@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_NMASK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @interface_link_status(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ifmediareq, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @AF_INET, align 4
  %7 = load i32, i32* @SOCK_DGRAM, align 4
  %8 = call i32 @socket(i32 %6, i32 %7, i32 0)
  store i32 %8, i32* %5, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = call i32 @memset(%struct.ifmediareq* %4, i32 0, i32 12)
  %14 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @strlcpy(i32 %15, i8* %16, i32 4)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SIOCGIFMEDIA, align 4
  %20 = ptrtoint %struct.ifmediareq* %4 to i32
  %21 = call i32 @ioctl(i32 %18, i32 %19, i32 %20)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %35

23:                                               ; preds = %12
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @EINVAL, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* @capsyslog, align 4
  %29 = load i32, i32* @LOG_DEBUG, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @cap_syslog(i32 %28, i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @close(i32 %33)
  store i32 1, i32* %2, align 4
  br label %58

35:                                               ; preds = %12
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @close(i32 %36)
  %38 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IFM_AVALID, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IFM_NMASK, align 4
  %47 = and i32 %45, %46
  switch i32 %47, label %56 [
    i32 129, label %48
    i32 128, label %48
  ]

48:                                               ; preds = %43, %43
  %49 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IFM_ACTIVE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 1, i32* %2, align 4
  br label %58

55:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %58

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %35
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %55, %54, %32
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @memset(%struct.ifmediareq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, i32) #1

declare dso_local i32 @cap_syslog(i32, i32, i8*, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
