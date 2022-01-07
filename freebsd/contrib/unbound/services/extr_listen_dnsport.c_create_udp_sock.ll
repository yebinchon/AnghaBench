; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_create_udp_sock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_create_udp_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@errno = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i64 0, align 8
@EPROTONOSUPPORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"can't create socket: %s\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@EADDRINUSE = common dso_local global i64 0, align 8
@EADDRNOTAVAIL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ENOPROTOOPT = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@IPPROTO_IP = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_BINDANY = common dso_local global i32 0, align 4
@IPV6_MIN_MTU = common dso_local global i32 0, align 4
@IPV6_MTU = common dso_local global i32 0, align 4
@IPV6_USE_MIN_MTU = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@IP_BINDANY = common dso_local global i32 0, align 4
@IP_DONTFRAG = common dso_local global i32 0, align 4
@IP_FREEBIND = common dso_local global i32 0, align 4
@IP_MTU_DISCOVER = common dso_local global i32 0, align 4
@IP_PMTUDISC_DONT = common dso_local global i32 0, align 4
@IP_PMTUDISC_OMIT = common dso_local global i32 0, align 4
@IP_TRANSPARENT = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_BINDANY = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@SO_RCVBUFFORCE = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@SO_REUSEPORT = common dso_local global i32 0, align 4
@SO_REUSEPORT_LB = common dso_local global i32 0, align 4
@SO_SNDBUF = common dso_local global i32 0, align 4
@SO_SNDBUFFORCE = common dso_local global i32 0, align 4
@WSAEACCES = common dso_local global i64 0, align 8
@WSAEADDRINUSE = common dso_local global i64 0, align 8
@WSAEADDRNOTAVAIL = common dso_local global i64 0, align 8
@WSAEAFNOSUPPORT = common dso_local global i64 0, align 8
@WSAEPROTONOSUPPORT = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_udp_sock(i32 %0, i32 %1, %struct.sockaddr* %2, i32 %3, i32 %4, i32* %5, i32* %6, i32 %7, i32 %8, i32 %9, i32* %10, i32 %11, i32 %12, i32 %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.sockaddr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32 %0, i32* %16, align 4
  store i32 %1, i32* %17, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %18, align 8
  store i32 %3, i32* %19, align 4
  store i32 %4, i32* %20, align 4
  store i32* %5, i32** %21, align 8
  store i32* %6, i32** %22, align 8
  store i32 %7, i32* %23, align 4
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store i32* %10, i32** %26, align 8
  store i32 %11, i32* %27, align 4
  store i32 %12, i32* %28, align 4
  store i32 %13, i32* %29, align 4
  %31 = load i32, i32* %23, align 4
  %32 = load i32, i32* %24, align 4
  %33 = load i32, i32* %20, align 4
  %34 = load i32, i32* %27, align 4
  %35 = load i32, i32* %28, align 4
  %36 = load i32, i32* %29, align 4
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %17, align 4
  %39 = call i32 @socket(i32 %37, i32 %38, i32 0)
  store i32 %39, i32* %30, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %57

41:                                               ; preds = %14
  %42 = load i32*, i32** %21, align 8
  store i32 0, i32* %42, align 4
  %43 = load i64, i64* @errno, align 8
  %44 = load i64, i64* @EAFNOSUPPORT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i64, i64* @errno, align 8
  %48 = load i64, i64* @EPROTONOSUPPORT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46, %41
  %51 = load i32*, i32** %22, align 8
  store i32 1, i32* %51, align 4
  store i32 -1, i32* %15, align 4
  br label %103

52:                                               ; preds = %46
  %53 = load i64, i64* @errno, align 8
  %54 = call i32 @strerror(i64 %53)
  %55 = call i32 @log_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32*, i32** %22, align 8
  store i32 0, i32* %56, align 4
  store i32 -1, i32* %15, align 4
  br label %103

57:                                               ; preds = %14
  %58 = load i32, i32* %25, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32*, i32** %26, align 8
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i32, i32* %23, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %66

66:                                               ; preds = %65, %62
  %67 = load i32, i32* %24, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %70

70:                                               ; preds = %69, %66
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* @AF_INET6, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %81

75:                                               ; preds = %70
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* @AF_INET, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %79, %75
  br label %81

81:                                               ; preds = %80, %74
  %82 = load i32, i32* %30, align 4
  %83 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %84 = load i32, i32* %19, align 4
  %85 = call i64 @bind(i32 %82, %struct.sockaddr* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load i32*, i32** %22, align 8
  store i32 0, i32* %88, align 4
  %89 = load i32*, i32** %21, align 8
  store i32 0, i32* %89, align 4
  %90 = load i32, i32* %30, align 4
  %91 = call i32 @close(i32 %90)
  store i32 -1, i32* %15, align 4
  br label %103

92:                                               ; preds = %81
  %93 = load i32, i32* %30, align 4
  %94 = call i32 @fd_set_nonblock(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %92
  %97 = load i32*, i32** %22, align 8
  store i32 0, i32* %97, align 4
  %98 = load i32*, i32** %21, align 8
  store i32 0, i32* %98, align 4
  %99 = load i32, i32* %30, align 4
  %100 = call i32 @close(i32 %99)
  store i32 -1, i32* %15, align 4
  br label %103

101:                                              ; preds = %92
  %102 = load i32, i32* %30, align 4
  store i32 %102, i32* %15, align 4
  br label %103

103:                                              ; preds = %101, %96, %87, %52, %50
  %104 = load i32, i32* %15, align 4
  ret i32 %104
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @log_err(i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fd_set_nonblock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
