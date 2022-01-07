; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dispatch.c_interface_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dispatch.c_interface_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface_info = type { i8*, i32, i32 }
%struct.ifreq = type { i32, i32, i32, i32, i32 }
%struct.ifmediareq = type { i32, i32, i32, i32, i32 }

@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@capsyslog = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ioctl(SIOCGIFFLAGS) on %s: %m\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@IFF_RUNNING = common dso_local global i32 0, align 4
@SIOCGIFMEDIA = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ioctl(SIOCGIFMEDIA) on %s: %m\00", align 1
@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_NMASK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @interface_status(%struct.interface_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.interface_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifreq, align 4
  %7 = alloca %struct.ifmediareq, align 4
  store %struct.interface_info* %0, %struct.interface_info** %3, align 8
  %8 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %9 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %12 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = call i32 @memset(%struct.ifreq* %6, i32 0, i32 20)
  %15 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @strlcpy(i32 %16, i8* %17, i32 4)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SIOCGIFFLAGS, align 4
  %21 = call i64 @ioctl(i32 %19, i32 %20, %struct.ifreq* %6)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load i32, i32* @capsyslog, align 4
  %25 = load i32, i32* @LOG_ERR, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @cap_syslog(i32 %24, i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %93

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IFF_UP, align 4
  %32 = load i32, i32* @IFF_RUNNING, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = load i32, i32* @IFF_UP, align 4
  %36 = load i32, i32* @IFF_RUNNING, align 4
  %37 = or i32 %35, %36
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %93

40:                                               ; preds = %28
  %41 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %42 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %94

46:                                               ; preds = %40
  %47 = bitcast %struct.ifmediareq* %7 to %struct.ifreq*
  %48 = call i32 @memset(%struct.ifreq* %47, i32 0, i32 20)
  %49 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %7, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @strlcpy(i32 %50, i8* %51, i32 4)
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SIOCGIFMEDIA, align 4
  %55 = bitcast %struct.ifmediareq* %7 to %struct.ifreq*
  %56 = call i64 @ioctl(i32 %53, i32 %54, %struct.ifreq* %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %46
  %59 = load i64, i64* @errno, align 8
  %60 = load i64, i64* @EINVAL, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i32, i32* @capsyslog, align 4
  %64 = load i32, i32* @LOG_DEBUG, align 4
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 @cap_syslog(i32 %63, i32 %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  %67 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %68 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %67, i32 0, i32 2
  store i32 1, i32* %68, align 4
  br label %94

69:                                               ; preds = %58
  %70 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %71 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %70, i32 0, i32 2
  store i32 1, i32* %71, align 4
  br label %94

72:                                               ; preds = %46
  %73 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %7, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IFM_AVALID, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %7, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IFM_NMASK, align 4
  %82 = and i32 %80, %81
  switch i32 %82, label %91 [
    i32 129, label %83
    i32 128, label %83
  ]

83:                                               ; preds = %78, %78
  %84 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %7, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @IFM_ACTIVE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %94

90:                                               ; preds = %83
  br label %93

91:                                               ; preds = %78
  br label %93

92:                                               ; preds = %72
  br label %93

93:                                               ; preds = %92, %91, %90, %39, %23
  store i32 0, i32* %2, align 4
  br label %95

94:                                               ; preds = %89, %69, %62, %45
  store i32 1, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %93
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @cap_syslog(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
