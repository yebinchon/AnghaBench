; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evutil.c_evutil_found_ifaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evutil.c_evutil_found_ifaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_in6 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Detected an IPv4 interface\00", align 1
@had_ipv4_address = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Detected an IPv6 interface\00", align 1
@had_ipv6_address = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr*)* @evutil_found_ifaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evutil_found_ifaddr(%struct.sockaddr* %0) #0 {
  %2 = alloca %struct.sockaddr*, align 8
  %3 = alloca [17 x i8], align 16
  %4 = alloca %struct.sockaddr_in*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  %7 = alloca i8*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %2, align 8
  %8 = bitcast [17 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 17, i1 false)
  %9 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %10 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AF_INET, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %1
  %15 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %16 = bitcast %struct.sockaddr* %15 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %16, %struct.sockaddr_in** %4, align 8
  %17 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @ntohl(i32 %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %14
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @EVUTIL_V4ADDR_IS_LOCALHOST(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @EVUTIL_V4ADDR_IS_CLASSD(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %24, %14
  br label %35

33:                                               ; preds = %28
  %34 = call i32 @event_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @had_ipv4_address, align 4
  br label %35

35:                                               ; preds = %33, %32
  br label %98

36:                                               ; preds = %1
  %37 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %38 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AF_INET6, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %97

42:                                               ; preds = %36
  %43 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %44 = bitcast %struct.sockaddr* %43 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %44, %struct.sockaddr_in6** %6, align 8
  %45 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %7, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds [17 x i8], [17 x i8]* %3, i64 0, i64 0
  %52 = call i32 @memcmp(i8* %50, i8* %51, i32 8)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %93

54:                                               ; preds = %42
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 254
  %60 = icmp eq i32 %59, 252
  br i1 %60, label %93, label %61

61:                                               ; preds = %54
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 254
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 192
  %73 = icmp eq i32 %72, 128
  br i1 %73, label %93, label %74

74:                                               ; preds = %67, %61
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %78, 254
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %84, 192
  %86 = icmp eq i32 %85, 192
  br i1 %86, label %93, label %87

87:                                               ; preds = %80, %74
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %91, 255
  br i1 %92, label %93, label %94

93:                                               ; preds = %87, %80, %67, %54, %42
  br label %96

94:                                               ; preds = %87
  %95 = call i32 @event_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @had_ipv6_address, align 4
  br label %96

96:                                               ; preds = %94, %93
  br label %97

97:                                               ; preds = %96, %36
  br label %98

98:                                               ; preds = %97, %35
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ntohl(i32) #2

declare dso_local i64 @EVUTIL_V4ADDR_IS_LOCALHOST(i64) #2

declare dso_local i64 @EVUTIL_V4ADDR_IS_CLASSD(i64) #2

declare dso_local i32 @event_debug(i8*) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
