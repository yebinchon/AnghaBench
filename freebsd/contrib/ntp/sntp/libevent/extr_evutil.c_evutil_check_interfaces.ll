; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evutil.c_evutil_check_interfaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evutil.c_evutil_check_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i8*, i8*, i32, i8*, i8* }
%struct.sockaddr_in6 = type { i32, i8*, i8*, i32, i8*, i8* }
%struct.sockaddr = type { i32 }

@have_checked_interfaces = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"18.244.0.188\00", align 1
@AF_INET6 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"2001:4860:b002::68\00", align 1
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @evutil_check_interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evutil_check_interfaces(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.sockaddr_in, align 8
  %6 = alloca %struct.sockaddr_in, align 8
  %7 = alloca %struct.sockaddr_in6, align 8
  %8 = alloca %struct.sockaddr_in6, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 -1, i64* %4, align 8
  store i32 48, i32* %9, align 4
  store i32 48, i32* %10, align 4
  %12 = load i64, i64* @have_checked_interfaces, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %97

18:                                               ; preds = %14, %1
  %19 = call i64 (...) @evutil_check_ifaddrs()
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %97

22:                                               ; preds = %18
  %23 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr_in6*
  %24 = call i32 @memset(%struct.sockaddr_in6* %23, i32 0, i32 48)
  %25 = load i8*, i8** @AF_INET, align 8
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 5
  store i8* %25, i8** %26, align 8
  %27 = call i8* @htons(i32 53)
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 4
  store i8* %27, i8** %28, align 8
  %29 = load i8*, i8** @AF_INET, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 3
  %31 = call i32 @evutil_inet_pton(i8* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @EVUTIL_ASSERT(i32 %32)
  %34 = call i32 @memset(%struct.sockaddr_in6* %7, i32 0, i32 48)
  %35 = load i8*, i8** @AF_INET6, align 8
  %36 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 2
  store i8* %35, i8** %36, align 8
  %37 = call i8* @htons(i32 53)
  %38 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = load i8*, i8** @AF_INET6, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 0
  %41 = call i32 @evutil_inet_pton(i8* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @EVUTIL_ASSERT(i32 %42)
  %44 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr_in6*
  %45 = call i32 @memset(%struct.sockaddr_in6* %44, i32 0, i32 48)
  %46 = call i32 @memset(%struct.sockaddr_in6* %8, i32 0, i32 48)
  %47 = load i8*, i8** @AF_INET, align 8
  %48 = load i32, i32* @SOCK_DGRAM, align 4
  %49 = load i32, i32* @IPPROTO_UDP, align 4
  %50 = call i64 @socket(i8* %47, i32 %48, i32 %49)
  store i64 %50, i64* %4, align 8
  %51 = icmp sge i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %22
  %53 = load i64, i64* %4, align 8
  %54 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %55 = call i64 @connect(i64 %53, %struct.sockaddr* %54, i32 48)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i64, i64* %4, align 8
  %59 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %60 = call i64 @getsockname(i64 %58, %struct.sockaddr* %59, i32* %9)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %64 = call i32 @evutil_found_ifaddr(%struct.sockaddr* %63)
  br label %65

65:                                               ; preds = %62, %57, %52, %22
  %66 = load i64, i64* %4, align 8
  %67 = icmp sge i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @evutil_closesocket(i64 %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i8*, i8** @AF_INET6, align 8
  %73 = load i32, i32* @SOCK_DGRAM, align 4
  %74 = load i32, i32* @IPPROTO_UDP, align 4
  %75 = call i64 @socket(i8* %72, i32 %73, i32 %74)
  store i64 %75, i64* %4, align 8
  %76 = icmp sge i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %71
  %78 = load i64, i64* %4, align 8
  %79 = bitcast %struct.sockaddr_in6* %7 to %struct.sockaddr*
  %80 = call i64 @connect(i64 %78, %struct.sockaddr* %79, i32 48)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load i64, i64* %4, align 8
  %84 = bitcast %struct.sockaddr_in6* %8 to %struct.sockaddr*
  %85 = call i64 @getsockname(i64 %83, %struct.sockaddr* %84, i32* %10)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = bitcast %struct.sockaddr_in6* %8 to %struct.sockaddr*
  %89 = call i32 @evutil_found_ifaddr(%struct.sockaddr* %88)
  br label %90

90:                                               ; preds = %87, %82, %77, %71
  %91 = load i64, i64* %4, align 8
  %92 = icmp sge i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i64, i64* %4, align 8
  %95 = call i32 @evutil_closesocket(i64 %94)
  br label %96

96:                                               ; preds = %93, %90
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %21, %17
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i64 @evutil_check_ifaddrs(...) #1

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @evutil_inet_pton(i8*, i8*, i32*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i64 @socket(i8*, i32, i32) #1

declare dso_local i64 @connect(i64, %struct.sockaddr*, i32) #1

declare dso_local i64 @getsockname(i64, %struct.sockaddr*, i32*) #1

declare dso_local i32 @evutil_found_ifaddr(%struct.sockaddr*) #1

declare dso_local i32 @evutil_closesocket(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
