; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_udp_sockport.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_udp_sockport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.ub_randstate = type { i32 }
%struct.sockaddr_in6 = type { i64, i64, i8* }
%struct.sockaddr_in = type { i8* }
%struct.sockaddr = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_storage*, i32, i32, i32, i32*, %struct.ub_randstate*)* @udp_sockport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_sockport(%struct.sockaddr_storage* %0, i32 %1, i32 %2, i32 %3, i32* %4, %struct.ub_randstate* %5) #0 {
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ub_randstate*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sockaddr_in6, align 8
  %17 = alloca %struct.sockaddr_in*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.ub_randstate* %5, %struct.ub_randstate** %12, align 8
  %18 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @addr_is_ip6(%struct.sockaddr_storage* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  %23 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %24 = bitcast %struct.sockaddr_storage* %23 to %struct.sockaddr_in6*
  %25 = bitcast %struct.sockaddr_in6* %16 to i8*
  %26 = bitcast %struct.sockaddr_in6* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 24, i1 false)
  %27 = load i32, i32* %10, align 4
  %28 = call i64 @htons(i32 %27)
  %29 = inttoptr i64 %28 to i8*
  %30 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %16, i32 0, i32 2
  store i8* %29, i8** %30, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %16, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %16, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  store i32 1, i32* %15, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.ub_randstate*, %struct.ub_randstate** %12, align 8
  %38 = call i32 @sai6_putrandom(%struct.sockaddr_in6* %16, i32 %36, %struct.ub_randstate* %37)
  br label %39

39:                                               ; preds = %35, %22
  %40 = load i32, i32* @AF_INET6, align 4
  %41 = load i32, i32* @SOCK_DGRAM, align 4
  %42 = bitcast %struct.sockaddr_in6* %16 to %struct.sockaddr*
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @create_udp_sock(i32 %40, i32 %41, %struct.sockaddr* %42, i32 %43, i32 1, i32* %44, i32* %14, i32 0, i32 0, i32 0, i32* null, i32 0, i32 %45, i32 0)
  store i32 %46, i32* %13, align 4
  br label %62

47:                                               ; preds = %6
  %48 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %49 = bitcast %struct.sockaddr_storage* %48 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %49, %struct.sockaddr_in** %17, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @htons(i32 %50)
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.sockaddr_in*, %struct.sockaddr_in** %17, align 8
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* @AF_INET, align 4
  %56 = load i32, i32* @SOCK_DGRAM, align 4
  %57 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %58 = bitcast %struct.sockaddr_storage* %57 to %struct.sockaddr*
  %59 = load i32, i32* %8, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @create_udp_sock(i32 %55, i32 %56, %struct.sockaddr* %58, i32 %59, i32 1, i32* %60, i32* %14, i32 0, i32 0, i32 0, i32* null, i32 0, i32 0, i32 0)
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %47, %39
  %63 = load i32, i32* %13, align 4
  ret i32 %63
}

declare dso_local i64 @addr_is_ip6(%struct.sockaddr_storage*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @sai6_putrandom(%struct.sockaddr_in6*, i32, %struct.ub_randstate*) #1

declare dso_local i32 @create_udp_sock(i32, i32, %struct.sockaddr*, i32, i32, i32*, i32*, i32, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
