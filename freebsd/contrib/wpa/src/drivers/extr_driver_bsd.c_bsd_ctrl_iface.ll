; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_bsd.c_bsd_ctrl_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_bsd.c_bsd_ctrl_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsd_driver_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ifreq = type { i32, i32 }

@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ioctl[SIOCGIFFLAGS]: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ioctl[SIOCSIFFLAGS]: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @bsd_ctrl_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsd_ctrl_iface(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bsd_driver_data*, align 8
  %7 = alloca %struct.ifreq, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.bsd_driver_data*
  store %struct.bsd_driver_data* %9, %struct.bsd_driver_data** %6, align 8
  %10 = call i32 @os_memset(%struct.ifreq* %7, i32 0, i32 8)
  %11 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.bsd_driver_data*, %struct.bsd_driver_data** %6, align 8
  %14 = getelementptr inbounds %struct.bsd_driver_data, %struct.bsd_driver_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @os_strlcpy(i32 %12, i32 %15, i32 4)
  %17 = load %struct.bsd_driver_data*, %struct.bsd_driver_data** %6, align 8
  %18 = getelementptr inbounds %struct.bsd_driver_data, %struct.bsd_driver_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SIOCGIFFLAGS, align 4
  %23 = call i64 @ioctl(i32 %21, i32 %22, %struct.ifreq* %7)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load i32, i32* @MSG_ERROR, align 4
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @strerror(i32 %27)
  %29 = call i32 @wpa_printf(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 -1, i32* %3, align 4
  br label %81

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bsd_driver_data*, %struct.bsd_driver_data** %6, align 8
  %34 = getelementptr inbounds %struct.bsd_driver_data, %struct.bsd_driver_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IFF_UP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %81

44:                                               ; preds = %37
  %45 = load i32, i32* @IFF_UP, align 4
  %46 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  br label %62

49:                                               ; preds = %30
  %50 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IFF_UP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %81

56:                                               ; preds = %49
  %57 = load i32, i32* @IFF_UP, align 4
  %58 = xor i32 %57, -1
  %59 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %58
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %44
  %63 = load %struct.bsd_driver_data*, %struct.bsd_driver_data** %6, align 8
  %64 = getelementptr inbounds %struct.bsd_driver_data, %struct.bsd_driver_data* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SIOCSIFFLAGS, align 4
  %69 = call i64 @ioctl(i32 %67, i32 %68, %struct.ifreq* %7)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load i32, i32* @MSG_ERROR, align 4
  %73 = load i32, i32* @errno, align 4
  %74 = call i32 @strerror(i32 %73)
  %75 = call i32 @wpa_printf(i32 %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  store i32 -1, i32* %3, align 4
  br label %81

76:                                               ; preds = %62
  %77 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.bsd_driver_data*, %struct.bsd_driver_data** %6, align 8
  %80 = getelementptr inbounds %struct.bsd_driver_data, %struct.bsd_driver_data* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %76, %71, %55, %43, %25
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @os_memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @os_strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
