; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evutil_addrinfo = type { i32, %struct.sockaddr*, i32, i32 }
%struct.sockaddr = type { i32 }

@NI_MAXSERV = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"getaddrinfo\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"socket failed\00", align 1
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"connect failed\00", align 1
@WSAEINPROGRESS = common dso_local global i32 0, align 4
@WSAEINVAL = common dso_local global i32 0, align 4
@WSAEWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @http_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_connect(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.evutil_addrinfo, align 8
  %7 = alloca %struct.evutil_addrinfo*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @NI_MAXSERV, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = call i32 @memset(%struct.evutil_addrinfo* %6, i32 0, i32 24)
  %19 = load i32, i32* @AF_INET, align 4
  %20 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %6, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @SOCK_STREAM, align 4
  %22 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %6, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = trunc i64 %15 to i32
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @evutil_snprintf(i8* %17, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @evutil_getaddrinfo(i8* %26, i8* %17, %struct.evutil_addrinfo* %6, %struct.evutil_addrinfo** %7)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = call i32 @event_warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %64

31:                                               ; preds = %2
  %32 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %7, align 8
  %33 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %32, i32 0, i32 1
  %34 = load %struct.sockaddr*, %struct.sockaddr** %33, align 8
  store %struct.sockaddr* %34, %struct.sockaddr** %10, align 8
  %35 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %7, align 8
  %36 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* @AF_INET, align 4
  %39 = load i32, i32* @SOCK_STREAM, align 4
  %40 = call i32 @socket(i32 %38, i32 %39, i32 0)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = call i32 @event_err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %31
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @evutil_make_socket_nonblocking(i32 %46)
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @connect(i32 %48, %struct.sockaddr* %49, i32 %50)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @EINPROGRESS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 @event_err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %53
  br label %60

60:                                               ; preds = %59, %45
  %61 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %7, align 8
  %62 = call i32 @evutil_freeaddrinfo(%struct.evutil_addrinfo* %61)
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %64

64:                                               ; preds = %60, %29
  %65 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.evutil_addrinfo*, i32, i32) #2

declare dso_local i32 @evutil_snprintf(i8*, i32, i8*, i32) #2

declare dso_local i64 @evutil_getaddrinfo(i8*, i8*, %struct.evutil_addrinfo*, %struct.evutil_addrinfo**) #2

declare dso_local i32 @event_warn(i8*) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @event_err(i32, i8*) #2

declare dso_local i32 @evutil_make_socket_nonblocking(i32) #2

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @evutil_freeaddrinfo(%struct.evutil_addrinfo*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
