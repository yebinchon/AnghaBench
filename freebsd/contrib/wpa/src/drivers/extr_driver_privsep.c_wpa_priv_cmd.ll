; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_privsep.c_wpa_priv_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_privsep.c_wpa_priv_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_privsep_data = type { i64, i32 }
%struct.msghdr = type { i32, i32, i32*, %struct.iovec* }
%struct.iovec = type { i32*, i32 }
%struct.timeval = type { i32, i64 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"sendmsg(cmd_socket): %s\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"select: %s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"recv: %s\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"PRIVSEP: Timeout while waiting for reply (cmd=%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_driver_privsep_data*, i32, i8*, i64, i8*, i64*)* @wpa_priv_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_priv_cmd(%struct.wpa_driver_privsep_data* %0, i32 %1, i8* %2, i64 %3, i8* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_driver_privsep_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.msghdr, align 8
  %15 = alloca [2 x %struct.iovec], align 16
  %16 = alloca i32, align 4
  %17 = alloca %struct.timeval, align 8
  %18 = alloca i32, align 4
  store %struct.wpa_driver_privsep_data* %0, %struct.wpa_driver_privsep_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64* %5, i64** %13, align 8
  %19 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %15, i64 0, i64 0
  %20 = getelementptr inbounds %struct.iovec, %struct.iovec* %19, i32 0, i32 0
  store i32* %9, i32** %20, align 16
  %21 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %15, i64 0, i64 0
  %22 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i32 0, i32 1
  store i32 4, i32* %22, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %15, i64 0, i64 1
  %26 = getelementptr inbounds %struct.iovec, %struct.iovec* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 16
  %27 = load i64, i64* %11, align 8
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %15, i64 0, i64 1
  %30 = getelementptr inbounds %struct.iovec, %struct.iovec* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = call i32 @os_memset(%struct.msghdr* %14, i32 0, i32 24)
  %32 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %15, i64 0, i64 0
  %33 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 3
  store %struct.iovec* %32, %struct.iovec** %33, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 2, i32 1
  %38 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %8, align 8
  %40 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 2
  store i32* %40, i32** %41, align 8
  %42 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 1
  store i32 4, i32* %42, align 4
  %43 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %8, align 8
  %44 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @sendmsg(i64 %45, %struct.msghdr* %14, i32 0)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %6
  %49 = load i32, i32* @MSG_ERROR, align 4
  %50 = load i64, i64* @errno, align 8
  %51 = call i32 @strerror(i64 %50)
  %52 = call i32 @wpa_printf(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i32 -1, i32* %7, align 4
  br label %111

53:                                               ; preds = %6
  %54 = load i8*, i8** %12, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %110

56:                                               ; preds = %53
  %57 = call i32 @FD_ZERO(i32* %16)
  %58 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %8, align 8
  %59 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @FD_SET(i64 %60, i32* %16)
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  store i32 5, i32* %62, align 8
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %8, align 8
  %65 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  %68 = call i32 @select(i64 %67, i32* %16, i32* null, i32* null, %struct.timeval* %17)
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %18, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %56
  %72 = load i64, i64* @errno, align 8
  %73 = load i64, i64* @EINTR, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32, i32* @MSG_ERROR, align 4
  %77 = load i64, i64* @errno, align 8
  %78 = call i32 @strerror(i64 %77)
  %79 = call i32 @wpa_printf(i32 %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  store i32 -1, i32* %7, align 4
  br label %111

80:                                               ; preds = %71, %56
  %81 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %8, align 8
  %82 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @FD_ISSET(i64 %83, i32* %16)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %80
  %87 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %8, align 8
  %88 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = load i64*, i64** %13, align 8
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @recv(i64 %89, i8* %90, i64 %92, i32 0)
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %18, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %86
  %97 = load i32, i32* @MSG_ERROR, align 4
  %98 = load i64, i64* @errno, align 8
  %99 = call i32 @strerror(i64 %98)
  %100 = call i32 @wpa_printf(i32 %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  store i32 -1, i32* %7, align 4
  br label %111

101:                                              ; preds = %86
  %102 = load i32, i32* %18, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64*, i64** %13, align 8
  store i64 %103, i64* %104, align 8
  br label %109

105:                                              ; preds = %80
  %106 = load i32, i32* @MSG_DEBUG, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @wpa_printf(i32 %106, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  store i32 -1, i32* %7, align 4
  br label %111

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %53
  store i32 0, i32* %7, align 4
  br label %111

111:                                              ; preds = %110, %105, %96, %75, %48
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local i32 @os_memset(%struct.msghdr*, i32, i32) #1

declare dso_local i64 @sendmsg(i64, %struct.msghdr*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i64, i32*) #1

declare dso_local i32 @recv(i64, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
