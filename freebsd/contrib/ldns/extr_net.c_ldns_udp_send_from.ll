; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_net.c_ldns_udp_send_from.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_net.c_ldns_udp_send_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.timeval = type { i32 }

@LDNS_STATUS_SOCKET_ERROR = common dso_local global i32 0, align 4
@LDNS_STATUS_NETWORK_ERR = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, %struct.sockaddr_storage*, i32, %struct.sockaddr_storage*, i32, i32, i64*)* @ldns_udp_send_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldns_udp_send_from(i32** %0, i32* %1, %struct.sockaddr_storage* %2, i32 %3, %struct.sockaddr_storage* %4, i32 %5, i32 %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.sockaddr_storage*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sockaddr_storage*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 %6, i32* %20, align 4
  store i32** %0, i32*** %11, align 8
  store i32* %1, i32** %12, align 8
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %13, align 8
  store i32 %3, i32* %14, align 4
  store %struct.sockaddr_storage* %4, %struct.sockaddr_storage** %15, align 8
  store i32 %5, i32* %16, align 4
  store i64* %7, i64** %17, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %13, align 8
  %23 = load i32, i32* %14, align 4
  %24 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %15, align 8
  %25 = load i32, i32* %16, align 4
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ldns_udp_bgsend_from(i32* %21, %struct.sockaddr_storage* %22, i32 %23, %struct.sockaddr_storage* %24, i32 %25, i32 %27)
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %18, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %8
  %32 = load i32, i32* @LDNS_STATUS_SOCKET_ERROR, align 4
  store i32 %32, i32* %9, align 4
  br label %60

33:                                               ; preds = %8
  %34 = load i32, i32* %18, align 4
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ldns_sock_wait(i32 %34, i32 %36, i32 0)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %18, align 4
  %41 = call i32 @close_socket(i32 %40)
  %42 = load i32, i32* @LDNS_STATUS_NETWORK_ERR, align 4
  store i32 %42, i32* %9, align 4
  br label %60

43:                                               ; preds = %33
  %44 = load i32, i32* %18, align 4
  %45 = call i32 @ldns_sock_nonblock(i32 %44)
  %46 = load i32, i32* %18, align 4
  %47 = load i64*, i64** %17, align 8
  %48 = call i32* @ldns_udp_read_wire(i32 %46, i64* %47, i32* null, i32* null)
  store i32* %48, i32** %19, align 8
  %49 = load i32, i32* %18, align 4
  %50 = call i32 @close_socket(i32 %49)
  %51 = load i64*, i64** %17, align 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* @LDNS_STATUS_NETWORK_ERR, align 4
  store i32 %55, i32* %9, align 4
  br label %60

56:                                               ; preds = %43
  %57 = load i32*, i32** %19, align 8
  %58 = load i32**, i32*** %11, align 8
  store i32* %57, i32** %58, align 8
  %59 = load i32, i32* @LDNS_STATUS_OK, align 4
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %56, %54, %39, %31
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

declare dso_local i32 @ldns_udp_bgsend_from(i32*, %struct.sockaddr_storage*, i32, %struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @ldns_sock_wait(i32, i32, i32) #1

declare dso_local i32 @close_socket(i32) #1

declare dso_local i32 @ldns_sock_nonblock(i32) #1

declare dso_local i32* @ldns_udp_read_wire(i32, i64*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
