; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_create_tcp_accept_sock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_create_tcp_accept_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i32, i64, i32 }
%struct.sockaddr_storage = type { i32 }

@errno = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i64 0, align 8
@EPROTONOSUPPORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"can't create socket: %s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c" setsockopt(TCP_MAXSEG) unsupported\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"can't bind socket\00", align 1
@TCP_BACKLOG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"can't listen: %s\00", align 1
@ENOPROTOOPT = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@IPPROTO_IP = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPV6_BINDANY = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@IP_BINDANY = common dso_local global i32 0, align 4
@IP_FREEBIND = common dso_local global i32 0, align 4
@IP_TRANSPARENT = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_BINDANY = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@SO_REUSEPORT = common dso_local global i32 0, align 4
@TCP_FASTOPEN = common dso_local global i32 0, align 4
@TCP_MAXSEG = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@WSAEAFNOSUPPORT = common dso_local global i64 0, align 8
@WSAEPROTONOSUPPORT = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_tcp_accept_sock(%struct.addrinfo* %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.addrinfo* %0, %struct.addrinfo** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* %16, align 4
  %21 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %22 = call i32 @verbose_print_addr(%struct.addrinfo* %21)
  %23 = load i32*, i32** %12, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* %17, align 4
  %25 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %29 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @socket(i64 %27, i32 %30, i32 0)
  store i32 %31, i32* %18, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %47

33:                                               ; preds = %8
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @EAFNOSUPPORT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @EPROTONOSUPPORT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %33
  %42 = load i32*, i32** %12, align 8
  store i32 1, i32* %42, align 4
  store i32 -1, i32* %9, align 4
  br label %110

43:                                               ; preds = %37
  %44 = load i64, i64* @errno, align 8
  %45 = call i32 @strerror(i64 %44)
  %46 = call i32 @log_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 -1, i32* %9, align 4
  br label %110

47:                                               ; preds = %8
  %48 = load i32, i32* %15, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 (i8*, ...) @log_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %57 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %60 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @bind(i32 %55, i64 %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %52
  %65 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %66 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @AF_INET6, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i64, i64* @errno, align 8
  %72 = load i64, i64* @EINVAL, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32*, i32** %12, align 8
  store i32 1, i32* %75, align 4
  br label %87

76:                                               ; preds = %70, %64
  %77 = load i64, i64* @errno, align 8
  %78 = call i32 @strerror(i64 %77)
  %79 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %80 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to %struct.sockaddr_storage*
  %83 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %84 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @log_err_addr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %78, %struct.sockaddr_storage* %82, i32 %85)
  br label %87

87:                                               ; preds = %76, %74
  %88 = load i32, i32* %18, align 4
  %89 = call i32 @close(i32 %88)
  store i32 -1, i32* %9, align 4
  br label %110

90:                                               ; preds = %52
  %91 = load i32, i32* %18, align 4
  %92 = call i32 @fd_set_nonblock(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %18, align 4
  %96 = call i32 @close(i32 %95)
  store i32 -1, i32* %9, align 4
  br label %110

97:                                               ; preds = %90
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* @TCP_BACKLOG, align 4
  %100 = call i32 @listen(i32 %98, i32 %99)
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load i64, i64* @errno, align 8
  %104 = call i32 @strerror(i64 %103)
  %105 = call i32 @log_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %18, align 4
  %107 = call i32 @close(i32 %106)
  store i32 -1, i32* %9, align 4
  br label %110

108:                                              ; preds = %97
  %109 = load i32, i32* %18, align 4
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %108, %102, %94, %87, %43, %41
  %111 = load i32, i32* %9, align 4
  ret i32 %111
}

declare dso_local i32 @verbose_print_addr(%struct.addrinfo*) #1

declare dso_local i32 @socket(i64, i32, i32) #1

declare dso_local i32 @log_err(i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @log_warn(i8*, ...) #1

declare dso_local i64 @bind(i32, i64, i32) #1

declare dso_local i32 @log_err_addr(i8*, i32, %struct.sockaddr_storage*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fd_set_nonblock(i32) #1

declare dso_local i32 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
